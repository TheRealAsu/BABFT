---@diagnostic disable: undefined-global

if game.PlaceId ~= 537413528 then
    return
end

if not isfolder("BABFT") then
    makefolder("BABFT")
end

if not isfolder("BABFT/Image") then
    makefolder("BABFT/Image")
end

if not isfolder("BABFT/Build") then
    makefolder("BABFT/Build")
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local HttpService = cloneref(game:GetService("HttpService"))
local TeleportService = cloneref(game:GetService("TeleportService"))
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local VirtualUser = game:GetService("VirtualUser")
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local JobId = game.JobId
local PlaceId = game.PlaceId
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local RunService = game:GetService("RunService")

local Window = Rayfield:CreateWindow({
    Name = "Build A Boat For Treasure",
    Icon = 85108798400826,
    LoadingTitle = "Build A Boat For Treasure",
    LoadingSubtitle = "Made With ❤️ by @thereal_asu",
    Theme = "DarkBlue",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil,
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
 
    KeySystem = false,
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {"Hello"}
    }
})

local Global = Window:CreateTab("Global", 125428076789049)
local ImageLoader = Window:CreateTab("Image Loader", 91865122737183)
local AutoBuild = Window:CreateTab("Auto Build", 128207976113050)
local BlockNeeded = Window:CreateTab("Block Needed", 138460602231983)
local Miscellaneous = Window:CreateTab("Miscellaneous", 90305619538335)
local Information = Window:CreateTab("Information", 84130531909418)
local Credit = Window:CreateTab("Credit", 103654977021797)
--local Label = Global:CreateLabel("Executing the script twice can make mistakes, consider re-joining if there are any problems", 134637165939940, Color3.fromRGB(204, 156, 0), true)

local Section = Credit:CreateSection("Discord")
local Section = Information:CreateSection("Discord")

local Button = Credit:CreateButton({
    Name = "Join the Community!",
    Callback = function()
        setclipboard("https://discord.gg/zrAB2m5gvz")
        Rayfield:Notify({
            Title = "Copied!",
            Content = "the discord link has been successfully copied to the clipboard",
            Duration = 6.5,
            Image = 124144713366592,
         })
    end,
 })

local yjdtjf = Global:CreateButton({
    Name = "Destroy Script",
    Callback = function()
        Rayfield:Destroy()
    end,
 })

local qzdqzd = Global:CreateDivider()

local Section = Credit:CreateSection("Owner")

local Labeld = Credit:CreateLabel("Owner: @thereal_asu", 93981953300699, Color3.fromRGB(255, 255, 255), true)

local Paragraph = Credit:CreateParagraph({Title = "About this script", Content = "This script is one of my projects that I'm taking time to make, I'm leaving it open source to allow people to check if this script is trusted, but also to let people learn the different techniques used in this script to do specific things. Please don't be a bad “skid” and credit me if you use this script to create your own script. It's ok to copy and paste my work for your script or improve my script to your own style, to suggest different versions of it, but please respect me, respect my work and have fun."})

 local aButton = Information:CreateButton({
    Name = "Join the Community!",
    Callback = function()
        setclipboard("https://discord.gg/zrAB2m5gvz")
        Rayfield:Notify({
            Title = "Copied!",
            Content = "the discord link has been successfully copied to the clipboard",
            Duration = 6.5,
            Image = 124144713366592,
         })
    end,
 })

local Section = Information:CreateSection("Auto Farm")
local Paragraph = Information:CreateParagraph({Title = "Information", Content = "let me know if you've ever seen an auto farm more powerful than this one in terms of gold per hour, you can use a webhook to follow the auto farm stats when you're not in front of your screen.\n\n - With no boost: 20K/hour\n - With x1.25: 25K/hour\n - With x2: 40K/hour\n - With Both: 50k/hour"})
local Section = Information:CreateSection("Image Loader")
local Paragraph = Information:CreateParagraph({Title = "Requirement", Content = "images are created from files that contain special data (RGB), to have these files or to create your own files from an image that you have chosen you must join the discord, you need an external script that converts the image into a file suitable for this script to be used, a tutorial is in the Discord Server.\n\n - Build Speed: You can choose the speed at which the image is built. If you have a slow internet connection, set the speed to low. Do not set it to max for large images\n\n- Preview: Displays a preview of the image, making it easier to use modifiers or to see how the image will look. It is also required to build the image.\n\n- Change Speed: Stop the current process by opening your inventory and checking if no more blocks are being placed. Change the speed and press 'Load Image' again. It should automatically resume from where it stopped."})
local Section = Information:CreateSection("Auto Build")
local Paragraph = Information:CreateParagraph({Title = "Information - [AUTO BUILD IS IN WORK IN PROGRESS]", Content = "this feature does not require any external requirement, if you save a build with a name that already existed, it will overwrite it. You can download and shares files in the Discord Server.\n\n - Safe Mode: prevents crashes during loading if you have a poor internet connection, this toggle slows down build speed.\n\n - Preview: displays a preview of the build."})

local player = game.Players.LocalPlayer
local Nplayer = game.Players.LocalPlayer.Name

local characterConnection
local connection

local function enableAntiAFK()
    if not connection then
        Rayfield:Notify({
            Title = "Anti-Afk | ON",
            Content = "you won't get kicked after 20 minutes of inactivity",
            Duration = 6.5,
            Image = 124144713366592,
         })
        connection = player.Idled:Connect(function()
            if getgenv().afk6464 then
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end
        end)
    end
end

local function disableAntiAFK()
    if connection then
        connection:Disconnect()
        connection = nil
        Rayfield:Notify({
            Title = "Anti-Afk | OFF",
            Content = "you will be kicked after 20 minutes of inactivity",
            Duration = 6.5,
            Image = 124144713366592,
         })
    end
end

local function loop()
    while true do
        if getgenv().afk6464 then
            enableAntiAFK()
        else
            disableAntiAFK()
        end
        wait(1)
    end
end

spawn(loop)

local Section = Global:CreateSection("Utilities")
local AFKToggle = Global:CreateToggle({
    Name = "Anti-Afk",
    CurrentValue = false,
    Flag = "",
    Callback = function(Value)
        getgenv().afk6464 = Value
    end,
})

if getgenv().afk6464 == true then
    AFKToggle:Set(true)
end

local Button = Global:CreateButton({
    Name = "Load Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
})

local Button = Global:CreateButton({ -- From IY
    Name = "Rejoin",
    Callback = function()
        Rayfield:Notify({
            Title = "Rejoin",
            Content = "hold on a sec",
            Duration = 6.5,
            Image = 124144713366592,
         })
         wait(0.2)
        if #Players:GetPlayers() <= 1 then
            Players.LocalPlayer:Kick("\nRejoining...")
            wait()
            TeleportService:Teleport(PlaceId, Players.LocalPlayer)
        else
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Players.LocalPlayer)
        end
        wait(5)
        Rayfield:Notify({
            Title = "Rejoin may have failed",
            Content = "try with infinite yield",
            Duration = 6.5,
            Image = 124144713366592,
         })
    end,
})

local Button = Global:CreateButton({ -- From IY by IY devs and NoobSploit
    Name = "Server Hop",
    Callback = function()
        if httprequest then
            Rayfield:Notify({
                Title = "Server Hop",
                Content = "hold on a sec",
                Duration = 6.5,
                Image = 124144713366592,
             })
             wait(0.2)
            local servers = {}
            local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", PlaceId)})
            local body = HttpService:JSONDecode(req.Body)

            if body and body.data then
                for i, v in next, body.data do
                    if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
                        table.insert(servers, 1, v.id)
                    end
                end
            end

            if #servers > 0 then
                TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
            else
                Rayfield:Notify({
                    Title = "Error",
                    Content = "Couldn't find a server.",
                    Duration = 6.5,
                    Image = 124144713366592,
                 })
            end
            wait(5)
            Rayfield:Notify({
                Title = "Server Hop may have failed",
                Content = "try with infinite yield",
                Duration = 6.5,
                Image = 124144713366592,
             })
        end
    end,
})

local Section = Global:CreateSection("Auto Farm - The most powerful one")
local AutoFarm1 = Global:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Flag = "",
    Callback = function(Value)
        getgenv().AF = Value
        local isFarming = false

        local function startAutoFarm()
            if Value == false then return end

            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local newPart = Instance.new("Part")
            newPart.Size = Vector3.new(5, 1, 5)
            newPart.Transparency = 1
            newPart.CanCollide = true
            newPart.Anchored = true
            newPart.Parent = workspace

            local decal = Instance.new("Decal")
            decal.Texture = "rbxassetid://139953968294114"
            decal.Face = Enum.NormalId.Top 
            decal.Parent = newPart

            local function teleportAndMovePart(iteration)
                if Value == false then return end
                if iteration == 5 then
                    humanoidRootPart.CFrame = CFrame.new(-55.34379959106445, -362.25067138671875, 9487.841796875)
                    wait(0.2)
                    humanoidRootPart.CFrame = CFrame.new(-51, 65, 984 + (iteration - 1) * 770)
                else
                    humanoidRootPart.CFrame = CFrame.new(-51, 65, 984 + (iteration - 1) * 770)
                end
                newPart.Position = humanoidRootPart.Position - Vector3.new(0, 2, 0)

                wait(2.3) -- if lower, it can't work every time

                if iteration == 3 or iteration == 4 then
                else
                    workspace.ClaimRiverResultsGold:FireServer()
                end
            end

            for i = 1, 10 do
                if not Value then
                    break
                end
                teleportAndMovePart(i)
            end

            newPart:Destroy()
        end

                local function onCharacterRespawned()
                    if getgenv().AF == true then
                    local player = game.Players.LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    character:WaitForChild("HumanoidRootPart")
                       -- wait(2)
                    startAutoFarm()
                    end
                end

        if Value then
            Rayfield:Notify({
                Title = "Auto Farm - Enabled",
                Content = "Isolation mode and Anti-afk is recommended",
                Duration = 6.5,
                Image = 124144713366592,
             })
            game.Players.LocalPlayer.Character:BreakJoints()
            wait(1)
            game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterRespawned)
        else
            Rayfield:Notify({
                Title = "Auto Farm - Disabled",
                Content = "Please, wait for the iteration to finish...",
                Duration = 6.5,
                Image = 124144713366592,
             })
            game.Players.LocalPlayer.CharacterAdded:Connect(function() end)
        end
    end,
})

local FStats = Global:CreateParagraph({Title = "Stats", Content = "Elapsed time: -".."\n".."GoldBlock Gained: -".."\n".."Gold Gained: -".."\n".."\n".."Gold per hour: -"})

local clockTime = 0
local running = false
local totalGoldGained = 0
local Ftime = 0 
local totalGoldBlock = 0
local GoldPerHour = 0
local lastGoldValue = game:GetService("Players").LocalPlayer.Data.Gold.Value
local IGBLOCK = game:GetService("Players").LocalPlayer.Data.GoldBlock.Value

local function formatTime(seconds)
    local hours = math.floor(seconds / 3600)
    local minutes = math.floor((seconds % 3600) / 60)
    local sec = seconds % 60
    return hours .. " hours " .. minutes .. " minutes " .. sec .. " seconds"
end

local function startClock()
    if running then return end
    running = true

    while running do
        if getgenv().AF then
            clockTime = clockTime + 1
        else
            running = false
        end
        wait(1) 
    end
end

game:GetService("RunService").Stepped:Connect(function()
    if getgenv().AF and not running then
        startClock()
    end
end)

function initclock()
while true do
    local FinalGold = game:GetService("Players").LocalPlayer.Data.Gold.Value
    Ftime = formatTime(clockTime)
    local GoldGained = FinalGold - lastGoldValue
    totalGoldGained = totalGoldGained + GoldGained
    local FGBLOCK = game:GetService("Players").LocalPlayer.Data.GoldBlock.Value
    totalGoldBlock = FGBLOCK - IGBLOCK

    GoldPerHour = (totalGoldGained / clockTime) * 3600

    FStats:Set({
        Title = "Stats",
        Content = "Elapsed time: " .. Ftime .. "\n" ..
                  "GoldBlock Gained: " .. totalGoldBlock .. "\n" ..
                  "Gold Gained: " .. totalGoldGained .. "\n" ..
                  "Gold per hour: " .. math.floor(GoldPerHour),
    })

    lastGoldValue = FinalGold

    wait(1)
end
end

GoldPerHour = 0

function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                },
                ["thumbnail"] = {
                    ["url"] = embed.thumbnail_url
                }
            }
        }
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
end

local WebHook = "a"
local interval = 1800

function SendAUTOFARMInfo(Ftime, totalGoldBlock, totalGoldGained, GoldPerHour)
    local embed = {
        ["title"] = "BABFT | Auto Farm",
        ["description"] = "Stats",
        ["color"] = 16777215,
        ["fields"] = {
            {
                ["name"] = "Time Elapsed",
                ["value"] = Ftime or 0
            },
            {
                ["name"] = "GoldBlock Gained:",
                ["value"] = tostring(totalGoldBlock) or 0
            },
            {
                ["name"] = "Gold Gained:",
                ["value"] = tostring(totalGoldGained) or 0
            },
            {
                ["name"] = "Gold per hour:",
                ["value"] = tostring(math.floor(GoldPerHour)) or 0
            }
        },
        ["footer"] = {
            ["text"] = "Script by @thereal_asu"
        },
        ["thumbnail_url"] = "https://tr.rbxcdn.com/180DAY-5cc07c05652006d448479ae66212782d/768/432/Image/Webp/noFilter"
    }

    if WebHook then
        SendMessageEMBED(WebHook, embed)
    else
        warn("Webhook URL not set. Please enter it in the input.")
    end
end

local InputWebHook = Global:CreateInput({
    Name = "Discord Webhook URL:",
    CurrentValue = "",
    PlaceholderText = "URL",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(Text)
        WebHook = Text
    end,
})

local InputInterval = Global:CreateInput({
    Name = "Time between messages:",
    CurrentValue = "1800",
    PlaceholderText = "Seconds",
    RemoveTextAfterFocusLost = false,
    Flag = "Input2",
    Callback = function(Text)
        interval = tonumber(Text)
    end,
})

local Toggle = Global:CreateToggle({
    Name = "Use WebHook",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        getgenv().WBhook = Value
    end,
})

coroutine.wrap(function()
    while true do
        if getgenv().WBhook and getgenv().AF and not getgenv().intervalLock then
            getgenv().intervalLock = true
            SendAUTOFARMInfo(Ftime, totalGoldBlock, totalGoldGained, GoldPerHour)
            wait(interval)
            getgenv().intervalLock = false
        end
        wait(1)
    end
end)()

-- Image Loader

--BlockId table
--loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/BlockId'))()

local BlockId = {
    BalloonBlock = 1916437856,
    BalloonStarBlock = 1973706944,
    BrickBlock = 1608273751,
    Button = 1678033905,
    CaneBlock = 1298643792,
    CaneRod = 1298644378,
    Cannon = 845567732,
    CarSeat = 1863051164,
    Chair = 924419491,
    ConcreteBlock = 845565990,
    ConcreteRod = 845564596,
    CornerWedge = 845567909,
    FabricBlock = 1608274294,
    FireworkD = 7036614604,
    Flag = 845563550,
    GlassBlock = 1335289047,
    Glue = 1887147909,
    GoldBlock = 1678364253,
    Harpoon = 2062877865,
    HugeMotor = 1865438463,
    IceBlock = 1608273971,
    Lever = 1608273289,
    LifePreserver = 958894042,
    MarbleBlock = 845566206,
    MarbleRod = 845564866,
    Mast = 845566917,
    MegaThruster = 1358894694,
    MetalBlock = 845565844,
    MetalRod = 845564481,
    Motor = 9236142098,
    MysteryBox = 2035087825,
    ObsidianBlock = 1335288552,
    PlasticBlock = 1609332225,
    Pumpkin = 1105248393,
    RustedBlock = 845565648,
    RustedRod = 845564347,
    Seat = 845567578,
    Servo = 1863050474,
    Spring = 1863049770,
    Star = 1916677740,
    SteelIBeam = 845566665,
    Step = 845568429,
    StoneBlock = 845565497,
    StoneRod = 845564162,
    TNT = 932196135,
    Throne = 845567243,
    Thruster = 1317812037,
    TitaniumBlock = 845566458,
    TitaniumRod = 845565080,
    Torch = 5717267458,
    Truss = 845568199,
    Wedge = 845568062,
    Helm = 845567402,
    Window = 845563704,
    WinterThruster = 1298650848,
    WoodBlock = 845568340,
    WoodDoor = 1191997076,
    WoodRod = 845563975,
    WoodTrapDoor = 1191997319,
    YellowChest = 976448763,
    BouncyBlock = 2293816241,
    Bread = 2102742548,
    CandyBlue = 7781285156,
    Plushie2 = 2214257779,
    Plushie1 = 2223411329,
    GrassBlock = 2417963634,
    Lamp = 2413603467,
    Candle = 2413603938,
    ChestLegendary = 4717828937,
    ChestRare = 4717827311,
    ChestCommon = 4717826099,
    ChestUncommon = 4717826702,
    Cake = 2103921305,
    CandyOrange = 7781288646,
    CandyPurple = 7781287748,
    ChestEpic = 4717828261,
    SandBlock = 2418018500,
    HalloweenThruster = 2501530509,
    JetTurbineWinter = 2690396507,
    NeonBlock = 2690438936,
    JetTurbine = 2592852037,
    PilotSeat = 2592852717,
    SonicJetTurbine = 2592851747,
    DualCaneHarpoon = 2690396999,
    Firework = 2042685042,
    FireworkB = 7036612976,
    FireworkC = 7036613636,
    SoccerBall = 2732318916,
    BoxingGlove = 2783557827,
    Heart = 2855511869,
    CandyPink = 7781284023,
    JetPack = 3230273281,
    JetPackEaster = 3230273718,
    Magnet = 2910074282,
    CannonMount = 7130971602,
    Gameboard = 3162472457,
    GunMount = 7130971085,
    SwordMount = 7130969623,
    LockedDoor = 3162472006,
    UltraThruster = 3164908588,
    ShieldGenerator = 3162472660,
    Piston = 3162469425,
    SticksOfTNT = 2511283148,
    CannonTurret = 3162469847,
    Hinge = 3162470626,
    TreasureSmall = 5176251125,
    JetPackStar = 3268106680,
    JetPackUltra = 3268107303,
    Potions = 3500449318,
    TreasureMedium = 5176250512,
    HarpoonGold = 3583968049,
    TreasureLarge = 5176249676,
    Plushie3 = 3591541892,
    Portal = 3744399826,
    JetPackSteampunk = 3838566130,
    BowMount = 7131030442,
    KnightSwordMount = 7131029546,
    LightningStaffMount = 7131031163,
    JackOLantern = 4079113414,
    PineTree = 4210890467,
    CoalBlock = 4539749508,
    Sign = 4539749166,
    BoatMotorUltra = 4539748713,
    BoatMotor = 4539748155,
    BoatMotorWinter = 4539748452,
    DragonEgg = 4742940542,
    FrontWheel = 4736855340,
    BackWheel = 4736853414,
    FrontWheelCookie = 4803870316,
    HugeBackWheel = 4742770672,
    BackWheelCookie = 4803870924,
    HugeFrontWheel = 4742773097,
    Plushie4 = 4918988544,
    Trophy1st = 5299317467,
    Trophy2nd = 5299318083,
    Trophy3rd = 5299319293,
    HarpoonDragon = 5740994229,
    BackWheelMint = 6228838828,
    FrontWheelMint = 6228838214,
    CameraDome = 6218312957,
    Camera = 6218312341,
    ToyBlock = 5578285243,
    Switch = 6361970614,
    LightBulb = 6635725107,
    ParachuteBlock = 6635488100,
    SwitchBig = 6828907824,
    CannonEgg = 6568169777,
    TrophyMaster = 6876313983,
    FireworkA = 7036591081,
    Delay = 7743806268,
    CandyRed = 7781250539,
    SnowballTurret = 8452611946,
    CandyCaneSwordMount = 8452610423,
    Note = 8452606673,
    SmoothWoodBlock = 8142306398,
    SpikeTrap = 7207314809,
    MiniGun = 2302342262,
    LaserTurret = 12229204385,
    Bar = 16088076429,
    Rope = 16088186920
}

local ImageFiles = {}

local function updateImageFiles()

    local files = listfiles("BABFT/Image")

    ImageFiles = {}

    for _, file in ipairs(files) do
        if isfile(file) then
            table.insert(ImageFiles, file)
        end
    end

end

local Label = ImageLoader:CreateLabel("Check the Information tab to use this feature", 134637165939940, Color3.fromRGB(204, 156, 0), true)

--[[
local Dropdownimg = ImageLoader:CreateDropdown({ --When shlex adds a script to refresh the dropdown
    Name = "Files",
    Options = ImageFiles,
    CurrentOption = {""},
    MultipleOptions = false,
    Flag = "",
    Callback = function(Options)
        print(Options)
    end,
 })
--]]

local function LPTEAM()
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
        return zone.position + Vector3.new(-100, 150, 0)
    else
        print("Zone not found in workspace for:" .. selectedZoneName)
    end
else
    print("Error: No Team")
end
end

local function LPTEAM3()
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
            return zone.position
        else
            print("Zone not found in workspace for:" .. selectedZoneName)
        end
    else
        print("Error: No Team")
    end
    end

local function LPTEAM2()
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
            return zone.Name
        else
            print("Zone not found in workspace for:" .. selectedZoneName)
        end
    else
        print("Error: No Team")
    end
end

function BuildingTool()
    game:GetService("Players").LocalPlayer.Backpack.BuildingTool.RF:InvokeServer("WoodBlock",58,workspace.BlackZone,CFrame.new(0, 6, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),true,CFrame.new(),false)
end

local imagePreviewFolder = workspace:FindFirstChild("ImagePreview") or Instance.new("Folder")
imagePreviewFolder.Name = "ImagePreview"
imagePreviewFolder.Parent = workspace

local UserBlockList = {}
local dataFolder = game:GetService("Players").LocalPlayer.Data
local BlockType = "PlasticBlock"
local LPBlockvalue = UserBlockList[BlockType]
local blockSize = 2
local startPosition = nil
local PreviewPart = nil
local kflxjdhgw = nil
local currentConnection = nil
local folderName = "ImagePreview"
local FileImage = nil
local HalfblockSize = blockSize / 2
local cooloffset = Vector3.new(0, 0, 0)
local Unit = 45
local Bdepth = 2
local angleY = 0
local ImgCenterimage = nil
local Brainrot = CFrame.identity
local rotationCFrame = CFrame.Angles(0, 0, 0)
local batchSize = 700
local TotalBlockInBlocksFolderBeforeBuildImageInitYesThisVarIsVeryLong = 0
local previewFolder = Workspace:FindFirstChild(folderName) or Instance.new("Folder", Workspace)
previewFolder.Name = folderName

for _, skibidi in ipairs(previewFolder:GetChildren()) do
        skibidi:Destroy()
end

local function UUserBlockList()
    UserBlockList = {}
    for _, feuh in ipairs(dataFolder:GetChildren()) do
        if feuh.Value ~= nil then
            UserBlockList[feuh.Name] = feuh.Value
        end
    end
end

local function readFile(filePath)
    if not isfile(filePath) then
        return nil
    end
    return readfile(filePath)
end

local function parseColors(fileContent)
    local data = {}
    for value in string.gmatch(fileContent, "[^,]+") do
        value = value:match("^%s*(.-)%s*$")
        table.insert(data, tonumber(value) or value)
    end
    return data
end

local function calculateFrameSize(data)
    local width = 0
    local height = 0
    local currentWidth = 0

    for i = 1, #data, 3 do
        local r, g, b = data[i], data[i + 1], data[i + 2]

        if r == "B" and g == "B" and b == "B" then
            height += 1
            width = math.max(width, currentWidth)
            currentWidth = 0
        elseif r == "R" and g == "R" and b == "R" then
            currentWidth += 1
        elseif type(r) == "number" and type(g) == "number" and type(b) == "number" then
            currentWidth += 1
        end
    end
    height += 1
    width = math.max(width, currentWidth)
    return Vector3.new(width * blockSize, height * blockSize, Bdepth)
end

local function previewFrame(frameSize, position, blockSize)
    startPosition = LPTEAM()
    if PreviewPart then
        PreviewPart:Destroy()
        PreviewPart = nil
    end

    PreviewPart = Instance.new("Part")
    PreviewPart.Size = frameSize
    PreviewPart.Position = position + Vector3.new(HalfblockSize - blockSize + frameSize.X / 2, HalfblockSize + blockSize - frameSize.Y / 2, 0) + cooloffset
    PreviewPart.Transparency = 1
    PreviewPart.Color = Color3.new(1, 1, 1)
    PreviewPart.Anchored = true
    PreviewPart.CanCollide = false
    PreviewPart.Name = "PreviewSize"
    PreviewPart.Parent = previewFolder
    PreviewPart.Rotation = Vector3.new(0, angleY - 90, 0)

    local textureId = "rbxassetid://133978572926918"

    local function applyTextureToSurface(surface, sizeX, sizeY)
        local texture = Instance.new("Texture")
        texture.Texture = textureId
        texture.Face = surface
        texture.Parent = PreviewPart
        texture.StudsPerTileU = blockSize
        texture.StudsPerTileV = blockSize
        texture.Transparency = 0.2
    end

    applyTextureToSurface(Enum.NormalId.Front, frameSize.X, frameSize.Y)
    applyTextureToSurface(Enum.NormalId.Back, frameSize.X, frameSize.Y)
    applyTextureToSurface(Enum.NormalId.Left, frameSize.Z, frameSize.Y)
    applyTextureToSurface(Enum.NormalId.Right, frameSize.Z, frameSize.Y)
    applyTextureToSurface(Enum.NormalId.Top, frameSize.X, frameSize.Z)
    applyTextureToSurface(Enum.NormalId.Bottom, frameSize.X, frameSize.Z)
end

local function Centerimage(frameSize, position, blockSize)
    startPosition = LPTEAM()
    if kflxjdhgw then
        kflxjdhgw:Destroy()
        kflxjdhgw = nil
    end

    kflxjdhgw = Instance.new("Part")
    kflxjdhgw.Size = frameSize
    kflxjdhgw.Position = position + Vector3.new(HalfblockSize - blockSize + frameSize.X / 2, HalfblockSize + blockSize - frameSize.Y / 2, 0)
    kflxjdhgw.Transparency = 1
    kflxjdhgw.Color = Color3.new(1, 1, 1)
    kflxjdhgw.Anchored = true
    kflxjdhgw.CanCollide = false
    kflxjdhgw.Name = "Centerimage"
    kflxjdhgw.Parent = previewFolder
    return kflxjdhgw.Position
end

local ImgBlockSec = 8
local currentCoroutines = {}
local function stopCoroutines()
    for _, co in ipairs(currentCoroutines) do
        --oh fk i need to do this
    end

    currentCoroutines = {}
end

local function buildImage()
    local folder = workspace:FindFirstChild("ImagePreview")
    if not folder then
        return
    end

    for _, part in ipairs(folder:GetChildren()) do
        if part:IsA("BasePart") and part.Name == "Part" then
            part.Transparency = 0.8
        end
    end

    local parts = {}
    for _, part in ipairs(folder:GetChildren()) do
        if part:IsA("BasePart") and part.Name == "Part" then
            table.insert(parts, part)
        end
    end

    if #parts == 0 then
        return
    end

    stopCoroutines()

    local sectionCount = math.min(#parts, ImgBlockSec)
    local sectionSize = math.ceil(#parts / sectionCount)

    local function processSection(startIndex, endIndex)
        local ZonzPos = LPTEAM3()

        for i = startIndex, endIndex do
            if getgenv().COCO == false then
                return
            end

            local part = parts[i]
            local relativePosition = ZonzPos
            local WORLDPOS = part.Position
            local partRot = part.CFrame - part.Position
            local rightVector = part.CFrame.RightVector
            local upVector = part.CFrame.UpVector
            local lookVector = part.CFrame.LookVector

            local color = part.Color
            local convr = color.R
            local convg = color.G
            local convb = color.B
            local colorconvr = Color3.new(convr, convg, convb)

            UUserBlockList()
            local uszLPBlockvalue = UserBlockList[BlockType]
            local Zonesss = LPTEAM2()

            local newCFrame = CFrame.new(0, 0, 0)
            local newwCFrame = CFrame.new(WORLDPOS) * partRot * CFrame.Angles(0, math.rad(90), 0)

            game:GetService("Players").LocalPlayer.Backpack.BuildingTool.RF:InvokeServer(
                BlockType,
                uszLPBlockvalue,
                workspace:FindFirstChild(Zonesss),
                newCFrame, 
                true,
                CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, -1, 0, 1, 0),
                false
            )

            local blocks = workspace.Blocks:FindFirstChild(Nplayer):GetChildren()
            TotalBlockInBlocksFolderBeforeBuildImageInitYesThisVarIsVeryLong = TotalBlockInBlocksFolderBeforeBuildImageInitYesThisVarIsVeryLong + 1
            local targetBlock = blocks[TotalBlockInBlocksFolderBeforeBuildImageInitYesThisVarIsVeryLong]

            game:GetService("Players").LocalPlayer.Backpack.PaintingTool.RF:InvokeServer({
                {targetBlock, colorconvr}
            })

            game.Players.LocalPlayer.Backpack.ScalingTool.RF:InvokeServer(
                targetBlock,
                Vector3.new(Bdepth, blockSize, blockSize), 
                newwCFrame
            )

            part:Destroy()
        end
    end

    local coroutines = {}
    for i = 1, sectionCount do
        local startIndex = (i - 1) * sectionSize + 1
        local endIndex = math.min(i * sectionSize, #parts)

        table.insert(coroutines, coroutine.wrap(function()
            processSection(startIndex, endIndex)
        end))
    end

    for _, co in ipairs(coroutines) do
        co()
    end

    currentCoroutines = coroutines

    Rayfield:Notify({
        Title = "Image successfully loaded",
        Content = "You can now use your inventory again",
        Duration = 6.5,
        Image = 124144713366592,
    })
end

function onImgBlockSecChanged()
    getgenv().COCO = false
    wait(0.1)
    getgenv().COCO = true
    buildImage()
end

local function buildImagePREVIEW(data, blockSize)
    local frameSize = calculateFrameSize(data)
    startPosition = LPTEAM() + cooloffset
    ImgCenterimage = Centerimage(frameSize, startPosition, blockSize)
    local centerImage = workspace.ImagePreview.Centerimage
    if not centerImage then
        warn("Centerimage not founzqd")
        return
    end

    rotationCFrame = CFrame.Angles(0, math.rad(angleY - 90), 0)

    Brainrot = centerImage.CFrame * rotationCFrame
    local currentX = startPosition.X
    local currentY = startPosition.Y
    local currentZ = startPosition.Z
    local initialX = startPosition.X
    local dataIndex = 1

    local centerImage = workspace.ImagePreview.Centerimage
    if not centerImage then
        warn("Centerimage not founzqd")
        return
    end

    local centerCFrame = centerImage.CFrame

    if currentConnection then
        currentConnection:Disconnect()
    end

    currentConnection = RunService.Heartbeat:Connect(function()
        local finished = false
        for _ = 1, batchSize do
            if dataIndex > #data then
                finished = true
                break
            end

            local r, g, b = data[dataIndex], data[dataIndex + 1], data[dataIndex + 2]
            if r == "B" and g == "B" and b == "B" then
                currentX = initialX
                currentY = currentY - blockSize
            elseif r == "R" and g == "R" and b == "R" then
                currentX = currentX + blockSize
            elseif type(r) == "number" and type(g) == "number" and type(b) == "number" then

                local block = Instance.new("Part")
                block.Size = Vector3.new(blockSize, blockSize, Bdepth)
                block.Color = Color3.fromRGB(r, g, b)
                block.Anchored = true
                block.Material = Enum.Material.SmoothPlastic
                block.CastShadow = false
                block.Parent = previewFolder

                local blockPosition = Vector3.new(currentX, currentY, currentZ) + cooloffset
                local relativeCFrame = centerCFrame:ToObjectSpace(CFrame.new(blockPosition))
                block.CFrame = Brainrot * relativeCFrame
                currentX = currentX + blockSize
            end

            dataIndex += 3
        end

        if finished then
            currentConnection:Disconnect()
            currentConnection = nil
        end
    end)
end

local Input = ImageLoader:CreateInput({
    Name = "File",
    CurrentValue = "",
    PlaceholderText = "File name",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(Text)
        cooloffset = Vector3.new(0, 0, 0)
        Brainrot = CFrame.identity
        angleY = 0
        rotationCFrame = CFrame.Angles(0, 0, 0)
        local fileName = Text .. ".txt"
        local filePath = "BABFT/Image/" .. fileName

        if isfile(filePath) then
            FileImage = fileName
            Rayfield:Notify({
                Title = "Success!",
                Content = "file: "..fileName.." found!",
                Duration = 6.5,
                Image = 124144713366592,
             })
        else
            FileImage = nil
            Rayfield:Notify({
                Title = "Error | File not found",
                Content = "Make sure the file"..fileName.." exists, don't put '.txt' in the TextBox",
                Duration = 6.5,
                Image = 124144713366592,
             })
        end
    end,
})

local TogglePreview = ImageLoader:CreateToggle({
    Name = "Preview",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            local filePath = "BABFT/Image/" .. (FileImage or "default.txt")
            local fileContent = readFile(filePath)
            if not fileContent then return end

            local data = parseColors(fileContent)
            buildImagePREVIEW(data, blockSize)
        else
            for _, skibidi in ipairs(previewFolder:GetChildren()) do
                if skibidi.Name ~= "PreviewSize" then
                    skibidi:Destroy()
                end
            end
        end
    end,
})

local ToggleGrid = ImageLoader:CreateToggle({
    Name = "Grid",
    CurrentValue = false,
    Callback = function(Value)
        if Value then
            local filePath = "BABFT/Image/" .. (FileImage or "default.txt")
            local fileContent = readFile(filePath)
            if not fileContent then return end

            local data = parseColors(fileContent)
            local frameSize = calculateFrameSize(data)
            startPosition = LPTEAM()
            previewFrame(frameSize, startPosition, blockSize)
        else
            if PreviewPart then
                PreviewPart:Destroy()
                PreviewPart = nil
            else
                Rayfield:Notify({
                    Title = "Error",
                    Content = "No file or invalid file",
                    Duration = 6.5,
                    Image = 124144713366592,
                 })
            end
        end
    end,
})

local Slider = ImageLoader:CreateSlider({
    Name = "Preview loading speed",
    Range = {100, 1500},
    Increment = 10,
    Suffix = "block/sec",
    CurrentValue = 750,
    Flag = "",
    Callback = function(Value)
        batchSize = Value
    end,
 })

 local Divider = ImageLoader:CreateDivider()

 local Section = ImageLoader:CreateSection("modifiers")

 local Dropdown = ImageLoader:CreateDropdown({
    Name = "Block Type",
    Options = {
        "BrickBlock", 
        "CoalBlock", 
        "ConcreteBlock", 
        "FabricBlock", 
        "GlassBlock", 
        "GoldBlock", 
        "GrassBlock", 
        "IceBlock", 
        "MarbleBlock", 
        "MetalBlock", 
        "NeonBlock", 
        "ObsidianBlock", 
        "PlasticBlock", 
        "RustedBlock", 
        "SmoothWoodBlock", 
        "StoneBlock", 
        "TitaniumBlock", 
        "ToyBlock", 
        "WoodBlock"
    },
    CurrentOption = {"PlasticBlock"},
    MultipleOptions = false,
    Flag = "",
    Callback = function(Options)
        BlockType = Options[1]
        --print(BlockType)
    end,
})

 local Slider = ImageLoader:CreateSlider({
    Name = "Move",
    Range = {0, 100},
    Increment = 0.1,
    Suffix = "stud",
    CurrentValue = 45,
    Flag = "",
    Callback = function(Value)
        Unit = Value
    end,
 })

local originalCFrames = {}

local Input = ImageLoader:CreateInput({
    Name = "Rotate",
    CurrentValue = "0",
    PlaceholderText = "0 - 360",
    RemoveTextAfterFocusLost = false,
    Flag = "",
    Callback = function(Text)
        angleY = tonumber(Text)
        if not angleY then
            warn("Invalid input for rota")
            return
        end

        local centerImage = workspace.ImagePreview.Centerimage
        if not centerImage then
            warn("Centerimage not founzqd")
            return
        end

        local rotationCFrame = CFrame.Angles(0, math.rad(angleY), 0)

        Brainrot = centerImage.CFrame * rotationCFrame

        for _, skibidi in ipairs(previewFolder:GetChildren()) do
            if skibidi:IsA("BasePart") and skibidi ~= centerImage then

                local centerCFrame = centerImage.CFrame

                if not originalCFrames[skibidi] then
                    originalCFrames[skibidi] = skibidi.CFrame
                end

                local originalCFrame = originalCFrames[skibidi]
                local relativeCFrame = centerCFrame:ToObjectSpace(originalCFrame)

                local ghaaa = centerCFrame * rotationCFrame * relativeCFrame
                skibidi.CFrame = ghaaa
            end
        end
    end,
})

 local Input = ImageLoader:CreateInput({
    Name = "Block Depth",
    CurrentValue = "2",
    PlaceholderText = "Value",
    RemoveTextAfterFocusLost = false,
    Flag = "",
    Callback = function(Text)
        Bdepth = tonumber(Text)
        for _, skibidi in ipairs(previewFolder:GetChildren()) do
            skibidi.Size = Vector3.new(skibidi.Size.X, skibidi.Size.Y, Bdepth)
            end
    end,
 })

 local Slider = ImageLoader:CreateSlider({
    Name = "Size",
    Range = {0.1, 10},
    Increment = 0.1,
    Suffix = "x",
    CurrentValue = 2,
    Flag = "",
    Callback = function(Value)
        blockSize = Value
    end,
 })

 local Button = ImageLoader:CreateButton({
    Name = "Move +X",
    Callback = function()
    for _, skibidi in ipairs(previewFolder:GetChildren()) do
        skibidi.Position = skibidi.Position + Vector3.new(Unit, 0, 0)
        end
        cooloffset = cooloffset + Vector3.new(Unit, 0, 0)
        --print(cooloffset)
    end,
 })

 local Button = ImageLoader:CreateButton({
    Name = "Move -X",
    Callback = function()
        for _, skibidi in ipairs(previewFolder:GetChildren()) do
            skibidi.Position = skibidi.Position + Vector3.new(-Unit, 0, 0)
            end
            cooloffset = cooloffset + Vector3.new(-Unit, 0, 0)
    end,
 })

 local Button = ImageLoader:CreateButton({
    Name = "Move +Y",
    Callback = function()
        for _, skibidi in ipairs(previewFolder:GetChildren()) do
            skibidi.Position = skibidi.Position + Vector3.new(0, Unit, 0)
            end
            cooloffset = cooloffset + Vector3.new(0, Unit, 0)
    end,
 })

 local Button = ImageLoader:CreateButton({
    Name = "Move -Y",
    Callback = function()
        for _, skibidi in ipairs(previewFolder:GetChildren()) do
            skibidi.Position = skibidi.Position + Vector3.new(0, -Unit, 0)
            end
            cooloffset = cooloffset + Vector3.new(0, -Unit, 0)
    end,
 })

 local Button = ImageLoader:CreateButton({
    Name = "Move +Z",
    Callback = function()
        for _, skibidi in ipairs(previewFolder:GetChildren()) do
            skibidi.Position = skibidi.Position + Vector3.new(0, 0, Unit)
            end
            cooloffset = cooloffset + Vector3.new(0, 0, Unit)
    end,
 })

 local Button = ImageLoader:CreateButton({
    Name = "Move -Z",
    Callback = function()
        for _, skibidi in ipairs(previewFolder:GetChildren()) do
            skibidi.Position = skibidi.Position + Vector3.new(0, 0, -Unit)
            end
            cooloffset = cooloffset + Vector3.new(0, 0, -Unit)
    end,
 })

local Divider = ImageLoader:CreateDivider()

local Label = ImageLoader:CreateLabel("Building speed will also depend on your ping. You can crash if your wifi speed is too slow.", 134637165939940, Color3.fromRGB(204, 156, 0), true)

--[[
 local Toggle = ImageLoader:CreateToggle({
    Name = "Safe Mode [WIP]",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)

    end,
 })
]]

 local Button = ImageLoader:CreateButton({
    Name = "Load Image | Preview must be enabled",
    Callback = function()
        Rayfield:Notify({
            Title = "Load Image",
            Content = "Tip: open your inventory for aborting",
            Duration = 10,
            Image = 124144713366592,
         })

TotalBlockInBlocksFolderBeforeBuildImageInitYesThisVarIsVeryLong = 0
local blocksFolder = workspace:FindFirstChild("Blocks")
if blocksFolder then
    local blockssFolder = blocksFolder:FindFirstChild(Nplayer)
    if blockssFolder then
        TotalBlockInBlocksFolderBeforeBuildImageInitYesThisVarIsVeryLong = #blockssFolder:GetChildren()

    else
            Rayfield:Notify({
                Title = "Error",
                Content = "Folder not found, try rejoin",
                Duration = 6.5,
                Image = 124144713366592,
             })
    end
else
        Rayfield:Notify({
            Title = "Error",
            Content = "Folder not found, try rejoin",
            Duration = 6.5,
            Image = 124144713366592,
         })
end
            buildImage()
    end,
 })

 local Slider = ImageLoader:CreateSlider({
    Name = "Build Speed",
    Range = {1, 50},
    Increment = 1,
    Suffix = "Block/sec",
    CurrentValue = 8,
    Flag = "Slider1",
    Callback = function(Value)
        ImgBlockSec = Value
    end,
 })

local Label = ImageLoader:CreateLabel("inventory must be closed during the entire process for it to work. open inventory to stop the process.", 134637165939940, Color3.fromRGB(204, 156, 0), true)

local Paragraph = ImageLoader:CreateParagraph({Title = "Stats [WIP]", Content = "End in: nan\nblock remaining to place: nan/nan"})

 function initimgfiles()
    while true do
        updateImageFiles()
        wait(1)
    end
end

--AUTO BUILD
local Label = AutoBuild:CreateLabel("Check the Information tab to use this feature", 134637165939940, Color3.fromRGB(204, 156, 0), true)
local Label = AutoBuild:CreateLabel("THIS FEATURE IS IN WIP - it's not working right now", 134637165939940, Color3.fromRGB(204, 31, 0), true)

local Divider = AutoBuild:CreateDivider()

local Section = AutoBuild:CreateSection("Steal Build")

local Dropdown = AutoBuild:CreateDropdown({
    Name = "Target Player",
    Options = {"Option 1","Option 2"},
    CurrentOption = {"Option 1"},
    MultipleOptions = false,
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Options)
    -- The function that takes place when the selected option is changed
    -- The variable (Options) is a table of strings for the current selected options
    end,
 })

 local Input = AutoBuild:CreateInput({
    Name = "Build Name",
    CurrentValue = "",
    PlaceholderText = "Name",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(Text)
    -- The function that takes place when the input is changed
    -- The variable (Text) is a string for the value in the text box
    end,
 })

 local Button = AutoBuild:CreateButton({
    Name = "Save",
    Callback = function()
    -- The function that takes place when the button is pressed
    end,
 })

 local Divider = AutoBuild:CreateDivider()
 local Section = AutoBuild:CreateSection("Auto Build")

 local Dropdown = AutoBuild:CreateDropdown({
    Name = "Build File",
    Options = {"Option 1","Option 2"},
    CurrentOption = {"Option 1"},
    MultipleOptions = false,
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Options)
    -- The function that takes place when the selected option is changed
    -- The variable (Options) is a table of strings for the current selected options
    end,
 })

 local Toggle = AutoBuild:CreateToggle({
    Name = "Preview",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Toggle = AutoBuild:CreateToggle({
    Name = "Safe Mode",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    -- The function that takes place when the toggle is pressed
    -- The variable (Value) is a boolean on whether the toggle is true or false
    end,
 })

 local Button = AutoBuild:CreateButton({
    Name = "Load",
    Callback = function()
    -- The function that takes place when the button is pressed
    end,
 })

 -- OTHER
 local Paragraph = BlockNeeded:CreateParagraph({Title = "Important", Content = "Preview mode must be enabled to calculate the number of blocks required"})
 local Divider = BlockNeeded:CreateDivider()
 local Section = BlockNeeded:CreateSection("Image Loader")
 local LblBlockNeeded = BlockNeeded:CreateLabel("No block found", 72272740678757, Color3.fromRGB(255, 255, 255), true)
 local Divider = BlockNeeded:CreateDivider()
 local Section = BlockNeeded:CreateSection("Auto Build")
 local Label = BlockNeeded:CreateLabel("THIS FEATURE IS IN WIP", 134637165939940, Color3.fromRGB(204, 31, 0), true)
 local Divider = BlockNeeded:CreateDivider()
  -- BLOCK NEEDED
  local NbBlockneeded = 0
  local NbBlockmissing = 0
  local Button = BlockNeeded:CreateButton({
      Name = "Refresh List",
      Callback = function()
          NbBlockneeded = 0
          local blocktypeID = BlockId[BlockType]

          for _, skibidi in ipairs(workspace.ImagePreview:GetChildren()) do
            if skibidi.Name == "Part" then

                local blockVolume = skibidi.Size.X * skibidi.Size.Y * skibidi.Size.Z

                local blockSize = (blockVolume < 8) and 8 or blockVolume

                NbBlockneeded = NbBlockneeded + blockSize
            end
        end
            UUserBlockList()

          LPBlockvalue = UserBlockList[BlockType]
          NbBlockneeded = math.ceil(NbBlockneeded / 8)
          NbBlockmissing = NbBlockneeded - LPBlockvalue
          if NbBlockmissing < 0 then
            NbBlockmissing = 0
          end
          LblBlockNeeded:Set("Need " .. tostring(NbBlockneeded) .. " " .. BlockType .. " and " .. tostring(NbBlockmissing) .. " blocks are missing", blocktypeID, Color3.fromRGB(255, 255, 255), true)
      end,
  })

local Section = Miscellaneous:CreateSection("Teleportation")

local Button = Miscellaneous:CreateButton({
    Name = "White",
    Callback = function()
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-49.8510132, -9.7000021, -520.37085, -1, 0, 0, 0, 1, 0, 0, 0, -1))
    end,
 })

 local Button = Miscellaneous:CreateButton({
    Name = "Black",
    Callback = function()
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-503.82843, -9.7000021, -69.433342, 0, 0, -1, 0, 1, 0, 1, 0, 0))
    end,
 })

 local Button = Miscellaneous:CreateButton({
    Name = "Red",
    Callback = function()
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(396.697418, -9.7000021, -64.7801361, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end,
 })

 local Button = Miscellaneous:CreateButton({
    Name = "Blue",
    Callback = function()
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(396.697418, -9.7000021, 300.219849, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end,
 })

 local Button = Miscellaneous:CreateButton({
    Name = "Magenta",
    Callback = function()
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(396.697418, -9.7000021, 647.219849, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end,
 })

 local Button = Miscellaneous:CreateButton({
    Name = "Yellow",
    Callback = function()
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-503.82843, -9.7000021, 640.56665, 0, 0, -1, 0, 1, 0, 1, 0, 0))
    end,
 })

 local Button = Miscellaneous:CreateButton({
    Name = "Green",
    Callback = function()
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-503.82843, -9.7000021, 293.56665, 0, 0, -1, 0, 1, 0, 1, 0, 0))
    end,
 })

local Section = Miscellaneous:CreateSection("Troll")
local Button = Miscellaneous:CreateButton({
    Name = "Force Share Mode",
    Callback = function()
        local args = {
            [1] = "ShareBlocks",
            [2] = true
        }
        workspace.SettingFunction:InvokeServer(unpack(args))
    end,
 })

 local spoofSpeed = 40

 local Section = Miscellaneous:CreateSection("Spoofer")
 local Slider = Miscellaneous:CreateSlider({
    Name = "Wheel Speed",
    Range = {10, 1000},
    Increment = 10,
    Suffix = " - MaxSpeed",
    CurrentValue = 40,
    Flag = "Slider1",
    Callback = function(Value)
        spoofSpeed = Value
    end,
 })

 local Button = Miscellaneous:CreateButton({
    Name = "Spoof speed",
    Callback = function()
        local itcihmsoeoesoes = workspace.Blocks:FindFirstChild(Nplayer)
        if itcihmsoeoesoes then
    for _, model in ipairs(itcihmsoeoesoes:GetChildren()) do
        if model:IsA("Model") then
            local maxSpeed = model:FindFirstChild("MaxSpeed")
            if maxSpeed and maxSpeed:IsA("NumberValue") then
                maxSpeed.Value = spoofSpeed
            end
        end
    end
end
    end,
 })
-- queueteleport(loadstring(game:HttpGet('https://raw.githubusercontent.com/TheRealAsu/BABFT/refs/heads/main/Source.lua'))())

-- Init
initclock()
initimgfiles()
