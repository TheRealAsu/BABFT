-- Auto Build save build
-- Only Store your blocks or Leader's blocks in sharemode because it is for testing only and it's on BETA

local Players = game:GetService("Players")
local Teams = game:GetService("Teams")
local player = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")

if not isfolder("BABFT") then
    makefolder("BABFT")
end

if not isfolder("BABFT/Build") then
    makefolder("BABFT/Build")
end

local classes = loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/AutoBuild/Classes.lua'))()
local NormalColorBlock = loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/AutoBuild/NormalColorBlock.lua'))()

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
local ToObjectSpace = CFrame.new().ToObjectSpace

local function GetBuildData()
    local blockData = {}

    for _, v in pairs(workspace.Blocks:FindFirstChild(tostring(BlocksFolder)):GetChildren()) do
    --for _, v in pairs(workspace.BuildingParts:GetChildren()) do
        if v:IsA("Model") then
            local PPart = v:FindFirstChild("PPart")
            if PPart then

                local showShadow = PPart.CastShadow or true
                local canCollide = PPart.CanCollide
                local anchored = PPart.Anchored
                local rotationCF = ToObjectSpace(TeamCF, PPart.CFrame)
                local rx, ry, rz = rotationCF:ToEulerAnglesXYZ()
                local rotationtoString = string.format("%.3f, %.3f, %.3f", math.deg(rx), math.deg(ry), math.deg(rz))
                local position = TeamCF:pointToObjectSpace(PPart.Position)
                local transparency = v:FindFirstChild("TransparencyModifier") and v.TransparencyModifier.Value or 0

                local color = PPart.Color
                if NormalColorBlock[v.Name] then
                    local normalColor = NormalColorBlock[v.Name]

                    if math.abs(color.R - normalColor[1]) < 0.0001 and
                       math.abs(color.G - normalColor[2]) < 0.0001 and
                       math.abs(color.B - normalColor[3]) < 0.0001 then
                        colortoString = nil
                    else
                        colortoString = string.format("%.6f, %.6f, %.6f", color.R, color.G, color.B)
                    end
                else
                    colortoString = nil
                end

                local size = nil
                if table.find(classes.blocks, v.Name) then
                    size = PPart.Size
                end

                local FlightDistance, FuseTime, MaxForce, JetMaxSpeed, MaxSpeed, Reverspeed, Torque = nil, nil, nil, nil, nil, nil, nil

                if table.find(classes.Bindable.FireWorks, v.Name) then
                    FlightDistance = v.FlightDistance.Value
                    FuseTime = v.FuseTime.Value
                end

                if v.Name == "BoxingGlove" then
                    canCollide = v.Glove.CanCollide
                end

                if v.Name == "BoatMotor" or v.Name == "BoatMotorUltra" or v.Name == "BoatMotorWinter" then
                    canCollide = v.Motor.Bottom.CanCollide
                end

                if v.Name == "LockedDoor" then 
                    canCollide = v.Part.CanCollide
                end

                if v.Name == "Portal" then 
                    canCollide = v.Light.CanCollide
                end

                if v.Name == "SpikeTrap" then 
                    canCollide = v.Box.CanCollide
                end

                if v.Name == "PineTree" then 
                    canCollide = v.Leaves4.CanCollide
                end

                if v.Name == "WoodDoor" or v.Name == "WoodTrapDoor" then 
                    canCollide = v.Door.DoorFrame.CanCollide
                end


                if table.find(classes.Bindable.Jets, v.Name) then
                    MaxForce = v.MaxForce.Value
                    JetMaxSpeed = v.MaxSpeed.Value
                end

                if table.find(classes.Bindable.Wheels, v.Name) then
                    MaxSpeed = v.MaxSpeed.Value
                    Reverspeed = v.ReverseSpin.Value
                    Torque = v.PPart.HingeConstraint.MotorMaxTorque
                end

                local blockInfo = {
                    ShowShadow = showShadow,
                    CanCollide = canCollide,
                    Color = colortoString,
                    Anchored = anchored,
                    Rotation = rotationtoString,
                    Position = string.format("%.6f, %.6f, %.6f", position.X, position.Y, position.Z),
                    Transparency = transparency
                }

                if size then
                    blockInfo.Size = string.format("%.6f, %.6f, %.6f", size.X, size.Y, size.Z)
                end

                if MaxSpeed then
                    blockInfo.MaxSpeed = MaxSpeed
                    blockInfo.ReverseSpin = Reverspeed
                    blockInfo.Torque = Torque
                end

                if FlightDistance then
                    blockInfo.FlightDistance = FlightDistance
                    blockInfo.FuseTime = FuseTime
                end

                if MaxForce then
                    blockInfo.MaxForce = MaxForce
                    blockInfo.MaxSpeed = JetMaxSpeed
                end

                if table.find(classes.Bindable.Aim, v.Name) then
                    blockInfo.Aim = v.Aim.Value
                end

                if table.find(classes.Bindable.Cameras, v.Name) then
                    blockInfo.ShowCrosshairs = v.ShowCrosshairs.Value
                end

                if table.find(classes.Bindable.Activators, v.Name) then
                    blockInfo.On = v.On.Value
                end

                if table.find(classes.Bindable.Specials, v.Name) then
                    if v.Name == "Servo" then
                        blockInfo.Torque = v.PPart.HingeConstraint.ServoMaxTorque
                        blockInfo.ServoSpeed = v.PPart.HingeConstraint.AngularSpeed
                        blockInfo.ReverseRotation = v.ReverseRotation.Value
                        blockInfo.TargetAngle = v.TargetAngle.Value
                    elseif v.Name == "Piston" then
                        blockInfo.ExtendLength = v.ExtendLength.Value
                        blockInfo.Speed = v.Speed.Value
                        blockInfo.LastDirection = v.LastDirrection.Value
                    elseif v.Name == "Delay" then
                        blockInfo.WaitDuration = v.WaitDuration.Value
                    elseif v.Name == "Note" then
                        blockInfo.SemitoneOffset = v.SemitoneOffset.Value
                    end
                end

                if table.find(classes.Special, v.Name) then
                    if v.Name == "Rope" then
                        blockInfo.Length = v.PPart.RopeConstraint.Length
                        blockInfo.MatchRotation = v.PPart.AlignOrientation.Enabled
                        local rotationCF = ToObjectSpace(TeamCF, PPart.CFrame)
                        local rx, ry, rz = rotationCF:ToEulerAnglesXYZ()
                        local rotationtoString = string.format("%.3f, %.3f, %.3f", math.deg(rx), math.deg(ry), math.deg(rz))
                        blockInfo.SecondaryPartRotation = rotationtoString
                        blockInfo.SecondaryPartPosition = string.format("%.6f, %.6f, %.6f", SecondaryPartPosition.X, SecondaryPartPosition.Y, SecondaryPartPosition.Z)
                    elseif v.Name == "Sign" then
                        blockInfo.Text = v.PPart.SurfaceGui.TextLabel.Text
                    elseif v.Name == "CandyRed" then
                        blockInfo.DepthScale = v.DepthScale.Value
                        blockInfo.HeadScale = v.HeadScale.Value
                        blockInfo.HeightScale = v.HeightScale.Value
                        blockInfo.WidthScale = v.WidthScale.Value
                    elseif v.Name == "CandyBlue" then
                        blockInfo.DepthScale = v.DepthScale.Value
                        blockInfo.HeadScale = v.HeadScale.Value
                        blockInfo.HeightScale = v.HeightScale.Value
                        blockInfo.WidthScale = v.WidthScale.Value
                    elseif v.Name == "Bar" then
                        blockInfo.Length = v.PPart.RodConstraint.Length
                        blockInfo.AngleLimit = v.PPart.RodConstraint.LimitAngle0
                        blockInfo.MatchRotation = v.PPart.AlignOrientation.Enabled
                        local rotationCF = ToObjectSpace(TeamCF, PPart.CFrame)
                        local rx, ry, rz = rotationCF:ToEulerAnglesXYZ()
                        local rotationtoString = string.format("%.3f, %.3f, %.3f", math.deg(rx), math.deg(ry), math.deg(rz))
                        blockInfo.SecondaryPartRotation = rotationtoString
                        blockInfo.SecondaryPartPosition = string.format("%.6f, %.6f, %.6f", SecondaryPartPosition.X, SecondaryPartPosition.Y, SecondaryPartPosition.Z)
                    elseif v.Name == "Spring" then
                        blockInfo.Damping = v.PPart.SpringConstraint.Damping
                        blockInfo.MaxLength = v.PPart.SpringConstraint.MaxLength
                        blockInfo.TargetLength = v.PPart.SpringConstraint.FreeLength
                        blockInfo.MinLength = v.PPart.SpringConstraint.MinLength
                        blockInfo.Stiffness = v.PPart.SpringConstraint.Stiffness
                        local rotationCF = ToObjectSpace(TeamCF, PPart.CFrame)
                        local rx, ry, rz = rotationCF:ToEulerAnglesXYZ()
                        local rotationtoString = string.format("%.3f, %.3f, %.3f", math.deg(rx), math.deg(ry), math.deg(rz))
                        blockInfo.SecondaryPartRotation = rotationtoString
                        blockInfo.SecondaryPartPosition = string.format("%.6f, %.6f, %.6f", SecondaryPartPosition.X, SecondaryPartPosition.Y, SecondaryPartPosition.Z)
                    end
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
            local blockJson = {}
            blockJson = {
                ShowShadow = block.ShowShadow,
                CanCollide = block.CanCollide,
                Anchored = block.Anchored,
                Color = block.Color,
                Rotation = block.Rotation,
                Position = block.Position,
                Transparency = block.Transparency,
                BoolValues = {},
                NumberValues = {}
            }

            if block.Size then
                blockJson.Size = block.Size
            end

            if block.MaxSpeed then
                blockJson.NumberValues.MaxSpeed = block.MaxSpeed
                blockJson.BoolValues.ReverseSpin = block.ReverseSpin
                blockJson.Torque = block.Torque
            end

            if block.FlightDistance then
                blockJson.NumberValues.FlightDistance = block.FlightDistance
                blockJson.NumberValues.FuseTime = block.FuseTime
            end

            if block.MaxForce then
                blockJson.NumberValues.MaxForce = block.MaxForce
                blockJson.NumberValues.MaxSpeed = block.MaxSpeed 
            end

            if block.Aim then
                blockJson.BoolValues.Aim = block.Aim
            end

            if block.ShowCrosshairs then
                blockJson.BoolValues.ShowCrosshairs = block.ShowCrosshairs
            end

            if block.On ~= nil then
                blockJson.BoolValues.On = block.On
            end

            if block.ExtendLength then
                blockJson.NumberValues.ExtendLength = block.ExtendLength
                blockJson.NumberValues.Speed = block.Speed
                blockJson.NumberValues.LastDirection = block.LastDirection
            end

            if block.WaitDuration then
                blockJson.NumberValues.WaitDuration = block.WaitDuration
            end

            if block.SemitoneOffset then
                blockJson.NumberValues.SemitoneOffset = block.SemitoneOffset
            end

            if block.ServoSpeed then
                blockJson.Torque = block.Torque
                blockJson.ServoSpeed = block.ServoSpeed
                blockJson.BoolValues.ReverseRotation = block.ReverseRotation
                blockJson.NumberValues.TargetAngle = block.TargetAngle
            end

            if block.MatchRotation then
                blockJson.Length = block.Length
                blockJson.MatchRotation = block.MatchRotation
                blockJson.SecondaryPartRotation = block.SecondaryPartRotation
                blockJson.SecondaryPartPosition = block.SecondaryPartPosition
            end


            if block.Text then
                blockJson.Text = block.Text
            end

            if block.DepthScale then
                blockJson.NumberValues.DepthScale = block.DepthScale
                blockJson.NumberValues.HeadScale = block.HeadScale
                blockJson.NumberValues.HeightScale = block.HeightScale 
                blockJson.NumberValues.WidthScale = block.WidthScale
            end
            
            if block.AngleLimit then
                blockJson.Length = block.Length
                blockJson.AngleLimit = block.AngleLimit
                blockJson.MatchRotation = block.MatchRotation
                blockJson.SecondaryPartPosition = block.SecondaryPartPosition
                blockJson.SecondaryPartRotation = block.SecondaryPartRotation
            end

            if block.Damping then
                blockJson.Damping = block.Damping
                blockJson.MaxLength = block.MaxLength
                blockJson.NumberValues.TargetLength = block.TargetLength
                blockJson.MinLength = block.MinLength
                blockJson.Stiffness = block.Stiffness
                blockJson.SecondaryPartRotation = block.SecondaryPartRotation
                blockJson.SecondaryPartPosition = block.SecondaryPartPosition
            end

            block.Size = nil
            block.MaxSpeed = nil
            block.ReverseSpin = nil
            block.Torque = nil
            block.FlightDistance = nil
            block.FuseTime = nil
            block.MaxForce = nil
            block.Aim = nil
            block.ShowCrosshairs = nil
            block.On = nil
            block.ExtendLength = nil
            block.Speed = nil
            block.LastDirection = nil
            block.WaitDuration = nil
            block.SemitoneOffset = nil
            block.ServoSpeed = nil
            block.ReverseRotation = nil
            block.TargetAngle = nil
            block.MatchRotation = nil
            block.SecondaryPartRotation = nil
            block.SecondaryPartPosition = nil
            block.Text = nil
            block.DepthScale = nil
            block.HeadScale = nil
            block.HeightScale = nil
            block.WidthScale = nil
            block.AngleLimit = nil
            block.Damping = nil
            block.MaxLength = nil
            block.TargetLength = nil
            block.MinLength = nil
            block.Stiffness = nil

            table.insert(Array, blockJson)
        end
        jsonData[blockName] = Array
    end

    local jsonString = HttpService:JSONEncode(jsonData)

    -- disable/enable this
    print(jsonString)
    --setclipboard(jsonString)
    --writefile("BABFT/Build/Output_"..math.random(1, 99999)..".txt", jsonString)
else
    print("no blocks lol")
end

print("Output is available in your exploit workspace: BABFT/Build")
