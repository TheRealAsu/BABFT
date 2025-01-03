param (
    [string]$imageUrl
)

# Define the file for storing colors
$outputFilePath = Join-Path -Path (Get-Location) -ChildPath "image_colors.txt"

# Download image from URL
$imagePath = "$env:TEMP\downloaded_image.jpg"
Invoke-WebRequest -Uri $imageUrl -OutFile $imagePath

# Load Image
Add-Type -AssemblyName System.Drawing
$image = [System.Drawing.Image]::FromFile($imagePath)

# Calculate new dimensions (reduce by a factor of 5) I'll make it customizable
$newWidth = [int]($image.Width / 8)
$newHeight = [int]($image.Height / 8)

# Create a resized bitmap directly in memory
$bitmap = New-Object System.Drawing.Bitmap $newWidth, $newHeight

# Create a Graphics object to resize the image
$graphics = [System.Drawing.Graphics]::FromImage($bitmap)
$graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$graphics.DrawImage($image, 0, 0, $newWidth, $newHeight)

# Delete or create output file
Remove-Item -Path $outputFilePath -ErrorAction SilentlyContinue
New-Item -Path $outputFilePath -ItemType File | Out-Null

# Extract pixels and write RGB values to file
$rect = New-Object System.Drawing.Rectangle(0, 0, $bitmap.Width, $bitmap.Height)
$bitmapData = $bitmap.LockBits($rect, [System.Drawing.Imaging.ImageLockMode]::ReadOnly, $bitmap.PixelFormat)

$bytes = New-Object byte[]($bitmapData.Stride * $bitmap.Height)
[System.Runtime.InteropServices.Marshal]::Copy($bitmapData.Scan0, $bytes, 0, $bytes.Length)
$bitmap.UnlockBits($bitmapData)

# Process each pixel and write to file
$output = @() # Table to store lines
$totalLines = $bitmap.Height # Total number of lines
for ($y = 0; $y -lt $bitmap.Height; $y++) {
    $lineOutput = @()
    for ($x = 0; $x -lt $bitmap.Width; $x++) {
        $index = ($y * $bitmapData.Stride) + ($x * 4)
        $b = $bytes[$index]
        $g = $bytes[$index + 1]
        $r = $bytes[$index + 2]
        $alpha = $bytes[$index + 3]

        if ($alpha -eq 0) {
            # Pixel invisible
            $lineOutput += "R, R, R,"
        } else {
            # Pixel visible
            $lineOutput += "$r, $g, $b,"
        }
    }
    # Add “B, B, B,” at the end of each line
    $lineOutput += "B, B, B,"
    $output += ($lineOutput -join " ") # Add line to table

    # Show progress
    Write-Host "Lines processed : $($y + 1) / $totalLines"
}

# Write all the lines in the
$output -join "`n" | Out-File -FilePath $outputFilePath -Encoding UTF8

# Cleaning
$image.Dispose()
$bitmap.Dispose()
$graphics.Dispose()

Write-Host "The image data colors have been saved in : $outputFilePath"