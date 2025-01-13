-- if you want to make an auto build or whatever, here are all the blocks a little bit sorted

local classes = { -- Rotation, ShowShadow, CanCollide, Position, Anchored, Transparency
    blocks = { -- Size
        "BalloonBlock", "WoodBlock", "TitaniumBlock", "StoneBlock", 
        "SandBlock", "PlasticBlock", "ObsidianBlock", "NeonBlock", 
        "MarbleBlock", "RustedBlock", "GrassBlock", "GoldBlock", 
        "GlassBlock", "BouncyBlock", "FabricBlock", "ConcreteBlock", 
        "CoalBlock", "CaneBlock", "BrickBlock", "IceBlock", 
        "ParachuteBlock", "ConcreteBlock", "BalloonStarBlock",
        "ToyBlock", "SmoothWoodBlock"
    },

    Bindable = { -- BoolValues + ...
        "JetTurbine", "Harpoon", "HarpoonGold", "WinterThruster", "UltraThruster", "FireworkD", "BoatMotor", "Thruster", 
        "SticksOfTNT", "SonicJetTurbine", "ShieldGenerator", "Servo", "PilotSeat", "Motor", "MegaThruster", "Magnet", 
        "JetTurbineWinter", "Piston", "FireworkB", "FireworkA", "Delay", "HugeMotor", "HalloweenThruster", "Firework", 
        "CarSeat", "FrontWheelMint", "BoxingGlove", "Lever", "BackWheel", "DualCaneHarpoon", "BoatMotorUltra", "BoatMotorWinter", 
        "CameraDome", "FireworkC", "FrontWheel", "Camera", "Switch", "Note", "SwitchBig", "HugeFrontWheel", "HugeBackWheel", 
        "BackWheelCookie", "BackWheelMint", "FrontWheelCookie", "HarpoonDragon", "MiniGun" , "LightBulb", "Cannon"
    },

    Other = { -- Nothing
        "BowMount", "YellowChest", "WoodTrapDoor", "WoodRod", "WoodDoor", "Window", "Wedge", "Truss", 
        "Plushie4", "Trophy1st", "TitaniumRod", "Gameboard", "Button", "TNT", "SwordMount", "StoneRod", 
        "Step", "Portal", "Star", "SoccerBall", "RustedRod", "Pumpkin", "Potions", "Flag", "Plushie3", 
        "Plushie2", "Plushie1", "PineTree", "MysteryBox", "MetalRod", "Mast", "MarbleRod", "Steel I-Beam", 
        "LockedDoor", "LightningStaffMount", "LifePreserver", "Torch", "TreasureSmall", "KnightSwordMount", 
        "JackOLantern", "Heart", "TrophyMaster", "Trophy2nd", "GunMount", "Glue", "Throne", "Trophy3rd", 
        "Lamp", "CornerWedge", "ConcreteRod", "CandyPink", "CandyPurple", "ChestUncommon", "Chair", "Seat", 
        "CannonMount", "CaneRod", "Bread", "Cake", "Candle", "CandyOrange", "ChestRare", "ChestEpic", 
        "ChestLegendary", "ChestCommon", "DragonEgg", "CannonTurret", "TreasureLarge", "TreasureMedium", 
        "JetPack", "JetPackEaster", "JetPackStar", "JetPackSteampunk", "JetPackUltra", "Hinge", "CannonEgg", 
        "CandyCaneSwordMount", "SnowballTurret", "SpikeTrap", "LaserTurret", "Helm" 
    },
    
    Special = { -- ...
        "Rope", "Sign", "CandyRed", "CandyBlue", "bar", "Spring"
    }
}
