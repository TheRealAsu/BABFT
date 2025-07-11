local BlockId = { -- block name -> block decal ID
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
--[[
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ThoseWhoSkid"
screenGui.Parent = CoreGui
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

local bg = Instance.new("Frame")
bg.Name = "bg"
bg.Parent = screenGui
bg.BackgroundColor3 = Color3.new(0, 0, 0)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.ZIndex = 10

local Text = Instance.new("TextLabel")
Text.Name = "Text"
Text.Parent = bg
Text.AnchorPoint = Vector2.new(0.5, 0.5)
Text.Position = UDim2.new(0.5, 0, 0.5, 0)
Text.Size = UDim2.new(0.8, 0, 0.5, 0)
Text.BackgroundTransparency = 1
Text.RichText = true
Text.Text = 'If you see this, it means that the script owner has skidded Asu.<font color="#ffffff">\n\nJoin </font><font color="#00ff00">discord.gg/zrAB2m5gvz</font><font color="#ffffff">\nfor the original, and a better script :)</font>'
Text.TextColor3 = Color3.new(1, 1, 1)
Text.TextScaled = true
Text.Font = Enum.Font.GothamBold
Text.TextSize = 30
Text.ZIndex = 11000
Text.TextWrapped = true

local function updateTextSize()
    local viewportSize = workspace.CurrentCamera.ViewportSize
    local baseSize = math.min(viewportSize.X, viewportSize.Y)
    Text.TextSize = baseSize * 0.03
end

updateTextSize()
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(updateTextSize)
]]
return BlockId
