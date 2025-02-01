-- Block classification by property, It took me a while

local classes = { -- Rotation, ShowShadow, CanCollide, Position, Anchored, Transparency
    blocks = { -- Size
        "BalloonBlock", "WoodBlock", "TitaniumBlock", "StoneBlock",  "SandBlock",
        "PlasticBlock", "ObsidianBlock", "NeonBlock", "MarbleBlock", "RustedBlock", 
        "GrassBlock", "GoldBlock", "GlassBlock", "BouncyBlock", "FabricBlock", 
        "ConcreteBlock", "CoalBlock", "CaneBlock", "BrickBlock", "IceBlock", 
        "ParachuteBlock", "ConcreteBlock", "BalloonStarBlock","ToyBlock", 
        "SmoothWoodBlock"
    },

    Bindable = { -- BoolValues, NumberValues
        Wheels = { -- MaxSpeed, ReverseSpin, Torque
            "BackWheelCookie", "BackWheelMint", "FrontWheelCookie", "HugeMotor",
            "FrontWheelMint", "Motor", "BackWheel", "FrontWheel", "HugeFrontWheel",
            "HugeBackWheel",
        },

        -- MaxSpeed Path: BlockName.MaxSpeed.Value
        -- Reverspeed Path: BlockName.ReverseSpin.Value
        -- Torque Path:  BlockName.PPart.HingeConstraint.MotorMaxTorque


        FireWorks = { -- FlightDistance, FuseTime
            "FireworkA", "FireworkB", "FireworkC", "FireworkD"
        },

        -- FlightDistance Path: BlockName.FlightDistance.Value
        -- FuseTime Path: BlockName.FuseTime.Value

        Jets = { -- MaxForce, MaxSpeed
            "JetTurbine", "SonicJetTurbine", "JetTurbineWinter"
        },

        -- MaxForce Path: BlockName.MaxForce.Value
        -- MaxSpeed Path: BlockName.MaxSpeed.Value 

        Motors = { -- nothing ??
            "BoatMotor", "BoatMotorUltra", "BoatMotorWinter",
        },

        Aim = { --Aim
            "Harpoon", "HarpoonGold", "DualCaneHarpoon", "HarpoonDragon", "MiniGun",
            "Cannon"
        },

        -- Aim Path: BlockName.Aim.Value

        Cameras = { -- ShowCrosshairs
            "CameraDome", "Camera"
        },

        -- Aim Path: BlockName.ShowCrosshairs.Value

        Activators = { -- On
            "Lever", "Switch", "SwitchBig", "Button", 
        },

        -- On Path: BlockName.On.Value

        Specials = {
             "Servo", -- Torque, ServoSpeed, ReverseRotation, TargetAngle
             "Piston", -- ExtendLength, Speed, LastDirrection (-1 or 1)
             "Delay", -- WaitDuration
             "Note", -- SemitoneOffset (0 - 24)
        },

        --[[

        Servo:
        Torque Path: BlockName.PPart.HingeConstraint.ServoMaxTorque
        ServoSpeed Path: BlockName.PPart.HingeConstraint.AngularSpeed
        ReverseRotation Path: BlockName.ReverseRotation.Value
        TargetAngle Path: BlockName.TargetAngle.Value

        Piston:
        ExtendLength Path: BlockName.ExtendLength.Value
        Speed Path: BlockName.Speed.Value
        LastDirrection Path: BlockName.LastDirrection.Value

        Delay:
        WaitDuration Path: BlockName.WaitDuration.Value

        Note:
        SemitoneOffset Path: BlockName.SemitoneOffset.Value
        
        --]]

        Others = {
            "WinterThruster", "MegaThruster", "UltraThruster", "Thruster", "HalloweenThruster",
            "ShieldGenerator", "SticksOfTNT", "Firework", "PilotSeat", "Magnet", "CarSeat",
            "BoxingGlove", "LightBulb"
        }
    },

    Other = { -- Nothing
        "BowMount", "YellowChest", "WoodTrapDoor", "WoodRod", "WoodDoor", "Window", "Wedge", "Truss", 
        "Plushie4", "Trophy1st", "TitaniumRod", "Gameboard", "TNT", "SwordMount", "StoneRod", 
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
    
    Special = {
        "Rope", -- Length, MatchRotation, SecondaryPartRotation, SecondaryPartPosition
        "Sign", -- Text
        "CandyRed", -- DepthScale, HeadScale, HeightScale, WidthScale
        "CandyBlue", -- DepthScale, HeadScale, HeightScale, WidthScale
        "Bar", -- Length, AngleLimit, MatchRotation, SecondaryPartRotation, SecondaryPartPosition
        "Spring" -- Damping, MaxLength, TargetLength, MinLength, Stiffness, SecondaryPartRotation, SecondaryPartPosition
    }

    --[[

    Rope:
    Length path: BlockName.PPart.RopeConstraint.Length
    MatchRotation path: BlockName.PPart.AlignOrientation.Enabled
    SecondaryPartRotation path: BlockName.SecondaryPart.Part.CFrame
    SecondaryPartPosition path: BlockName.SecondaryPart.Part.CFrame

    Sign:
    Textpath: BlockName.PPart.SurfaceGui.TextLabel.Text

    CandyRed:
    DepthScale path: BlockName.DepthScale.Value
    HeadScale path: BlockName.HeadScale.Value
    HeightScale path: BlockName.HeightScale.Value
    WidthScale path: BlockName.WidthScale.Value

    CandyBlue:
    DepthScale path: BlockName.DepthScale.Value
    HeadScale path: BlockName.HeadScale.Value
    HeightScale path: BlockName.HeightScale.Value
    WidthScale path: BlockName.WidthScale.Value

    bar:
    Length path: BlockName.PPart.RodConstraint.Length
    AngleLimit path: BlockName.PPart.RodConstraint.LimitAngle0
    MatchRotation path: BlockName.PPart.AlignOrientation.Enabled
    SecondaryPartRotation path: BlockName.SecondaryPart.Part.CFrame
    SecondaryPartPosition path: BlockName.SecondaryPart.Part.CFrame

    Spring:
    Damping path: BlockName.PPart.SpringConstraint.Damping
    MaxLength path: BlockName.PPart.SpringConstraint.MaxLength
    TargetLength path: BlockName.PPart.SpringConstraint.FreeLength
    MinLength path: BlockName.PPart.SpringConstraint.MinLength
    Stiffness path: BlockName.PPart.SpringConstraint.Stiffness
    SecondaryPartRotation path: BlockName.SecondaryPart.Part.CFrame
    SecondaryPartPosition path: BlockName.SecondaryPart.Part.CFrame

    ]]
}

return classes

--[[
-- .Build file Data Structure Example:

{
    "BlockName": [{
        "ShowShadow": Bool,
        "CanCollide": Bool,
        "Anchored": Bool,
        "Color": "Color3.new",
        "Position": "CFrame",
        "Rotation": "CFrame",
        "SecondaryPartPosition": "CFrame",
        "SecondaryPartRotation": "CFrame",
        "MaxLength": Value,
        "Stiffness": Value,
        "Damping": Value,
        "MinLength": Value,
        "Torque": Value,
        "ServoSpeed": Value,
        "Length" Value,         -- (Only for Rope and Bar)
        "MatchRotation" Value,  -- (Only for Rope and Bar)
        "Text":"String",
        "AngleLimit": Value,    -- (Only for Bar)
        "BoolValues": {
            "ReverseSpin": Bool,
            "Aim": Bool,
            "ShowCrosshairs": Bool,
            "On": Bool,
            "ReverseRotation": Bool,
            "TargetAngle": Bool
        },
        "NumberValues": {
            "TargetLength": Value,
            "MaxSpeed": Value,
            "MaxForce": Value,
            "FlightDistance": Value,
            "FuseTime": Value,
            "ExtendLength": Value,
            "Speed": Value,
            "LastDirection": Value,
            "WaitDuration": Value,
            "SemitoneOffset": Value,
            "DepthScale": Value,
            "HeadScale": Value,
            "HeightScale": Value,
            "WidthScale": Value,
        },
        -- Binding data still under development
    }]
}

--]]
