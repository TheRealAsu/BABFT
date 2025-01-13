-- Auto Build SAVE [ ONLY SAVE Rotation, ShowShadow, CanCollide, Position, Anchored, Transparency, AND Size for blocks ]
-- Only Store your blocks or Leader's blocks in sharemode because it is for testing only and it's on BETA

local Players = game:GetService("Players")
local Teams = game:GetService("Teams")
local player = game.Players.LocalPlayer

if not isfolder("BABFT") then
    makefolder("BABFT")
end

if not isfolder("BABFT/Build") then
    makefolder("BABFT/Build")
end

local classes = loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/AutoBuild/Classes.lua'))()

function GetFolder()
    local Folder
    if Players.LocalPlayer.Settings.ShareBlocks.Value then
        Folder = workspace.Blocks:FindFirstChild(Teams:FindFirstChild(Players.LocalPlayer.Team.Name).TeamLeader.Value)
    else
        Folder = workspace.Blocks:FindFirstChild(Players.LocalPlayer.Name)
    end
    return Folder
end

local function LPTEAM_POSITION()
    local teamName = player.Team.Name
    
    local zoneMapping = {
        black = "BlackZone",
        blue = "Really blueZone",
        green = "CamoZone",
        red = "Really redZone",
        white = "WhiteZone",
        yellow = "New YellerZone",
        magenta = "MagentaZone"
    }
    
    local selectedZoneName = zoneMapping[teamName]
    
    if selectedZoneName then
        local zone = workspace:FindFirstChild(selectedZoneName)
        if zone then
            return zone --.position
        end
    end
end

local BlocksFolder = GetFolder()
local TeamRef = LPTEAM_POSITION()
local TeamCF = workspace:FindFirstChild(tostring(TeamRef)).CFrame

local function GetBuildData()
    local blockData = {}

    for _, v in pairs(workspace.Blocks:FindFirstChild(tostring(BlocksFolder)):GetChildren()) do -- SAVE MY OWN BLOCKS
        if v:IsA("Model") then
            local PPart = v:FindFirstChild("PPart")
            if PPart then

                local showShadow = PPart:FindFirstChild("CastShadow") and PPart.CastShadow.Value or false
                local canCollide = PPart.CanCollide
                local color = PPart.Color
                local anchored = PPart.Anchored
                local rotationX, rotationY, rotationZ = PPart.CFrame:ToEulerAnglesXYZ()
                local rotationString = string.format("%.6f, %.6f, %.6f", rotationX, rotationY, rotationZ)
                local position = TeamCF:pointToObjectSpace(PPart.Position)

                local transparency = v:FindFirstChild("TransparencyModifier") and v.TransparencyModifier.Value or 0
                local colorString = string.format("%.6f, %.6f, %.6f", color.R / 255, color.G / 255, color.B / 255)

                local size = nil
                if table.find(classes.blocks, v.Name) then
                    size = PPart.Size
                end

                local blockInfo = {
                    ShowShadow = showShadow,
                    CanCollide = canCollide,
                    Color = colorString,
                    Anchored = anchored,
                    BoolValues = {},
                    Rotation = rotationString,
                    Position = string.format("%.6f, %.6f, %.6f", position.X, position.Y, position.Z),
                    NumberValues = {},
                    Transparency = transparency
                }

                if size then
                    blockInfo.Size = string.format("%.6f, %.6f, %.6f", size.X, size.Y, size.Z)
                end

                if not blockData[v.Name] then
                    blockData[v.Name] = {}
                end

                table.insert(blockData[v.Name], blockInfo)
            end
        end
    end

    return blockData
end

local blockData = GetBuildData()

if next(blockData) then
    local jsonData = {}

    for blockName, blocks in pairs(blockData) do
        local Array = {}
        for _, block in pairs(blocks) do
            local blockJson = {
                ShowShadow = block.ShowShadow,
                CanCollide = block.CanCollide,
                Color = block.Color,
                Anchored = block.Anchored,
                BoolValues = block.BoolValues,
                Rotation = block.Rotation,
                Position = block.Position,
                NumberValues = block.NumberValues,
                Transparency = block.Transparency
            }
            if block.Size then
                blockJson.Size = block.Size
            end
            table.insert(Array, blockJson)
        end
        jsonData[blockName] = Array
    end

    local jsonString = game:GetService("HttpService"):JSONEncode(jsonData)

    --print(jsonString)
    writefile("BABFT/Build/Output_"..math.random(1, 99999)..".txt", jsonString)
else
    print("no blocks lol")-- or error lol")
end
