--pw-remake


local GetService = setmetatable({}, {
    __index = function(self, key)
        return game:GetService(key)
    end
})

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Twixks/Ui-lib/main/Cato-Lib-UI"))()
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = NotifyLibrary.Notify
Library.theme.accentcolor = Color3.new(0.284713, 0.011764, 1)
local Watermark = Library:CreateWatermark("Pw-Remake | {fps} | {game}")
Library.theme.fontsize = 14
Library.theme.titlesize = 17
Library.theme.topheight = 45


local RunService = GetService.RunService
local Players = GetService.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = workspace.CurrentCamera
local UserInputService = GetService.UserInputService
local GuiInset = GetService.GuiService:GetGuiInset()
local AimbotFOV = Drawing.new("Circle")
AimbotFOV.Thickness = 1
local SilentAimFOV = Drawing.new("Circle")
SilentAimFOV.Thickness = 1
local Insert = table.insert
local Network = GetService.NetworkClient
local PwRemakeFolder = Instance.new("Folder", workspace)
PwRemakeFolder.Name = "PwRemake-Folder"
local StarterGui = GetService.StarterGui
local ReplicatedStorage = GetService.ReplicatedStorage
--
_G.Idle = game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId
_G.Run = game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId
_G.Walk = game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId


local AnimationModule = {
    Astronaut = {
        "rbxassetid://891621366",
        "rbxassetid://891633237",
        "rbxassetid://891667138",
        "rbxassetid://891636393",
        "rbxassetid://891627522",
        "rbxassetid://891609353",
        "rbxassetid://891617961"
    },
    Bubbly = {
        "rbxassetid://910004836",
        "rbxassetid://910009958",
        "rbxassetid://910034870",
        "rbxassetid://910025107",
        "rbxassetid://910016857",
        "rbxassetid://910001910",
        "rbxassetid://910030921",
        "rbxassetid://910028158"
    },
    Cartoony = {
        "rbxassetid://742637544",
        "rbxassetid://742638445",
        "rbxassetid://742640026",
        "rbxassetid://742638842",
        "rbxassetid://742637942",
        "rbxassetid://742636889",
        "rbxassetid://742637151"
    },
    Confindent = {
        "rbxassetid://1069977950",
        "rbxassetid://1069987858",
        "rbxassetid://1070017263",
        "rbxassetid://1070001516",
        "rbxassetid://1069984524",
        "rbxassetid://1069946257",
        "rbxassetid://1069973677"
    },
    Cowboy = {
        "rbxassetid://1014390418",
        "rbxassetid://1014398616",
        "rbxassetid://1014421541",
        "rbxassetid://1014401683",
        "rbxassetid://1014394726",
        "rbxassetid://1014380606",
        "rbxassetid://1014384571"
    },
    Default = {
        "http://www.roblox.com/asset/?id=507766666",
        "http://www.roblox.com/asset/?id=507766951",
        "http://www.roblox.com/asset/?id=507777826",
        "http://www.roblox.com/asset/?id=507767714",
        "http://www.roblox.com/asset/?id=507765000",
        "http://www.roblox.com/asset/?id=507765644",
        "http://www.roblox.com/asset/?id=507767968"
    },
    Elder = {
        "rbxassetid://845397899",
        "rbxassetid://845400520",
        "rbxassetid://845403856",
        "rbxassetid://845386501",
        "rbxassetid://845398858",
        "rbxassetid://845392038",
        "rbxassetid://845396048" 
    },
    Ghost = {
        "rbxassetid://616006778",
        "rbxassetid://616008087",
        "rbxassetid://616013216",
        "rbxassetid://616013216",
        "rbxassetid://616008936",
        "rbxassetid://616005863",
        "rbxassetid://616012453",
        "rbxassetid://616011509"
    },
    Knight = {
        "rbxassetid://657595757",
        "rbxassetid://657568135",
        "rbxassetid://657552124",
        "rbxassetid://657564596",
        "rbxassetid://658409194",
        "rbxassetid://658360781",
        "rbxassetid://657600338"
    },
    Levitation = {
        "rbxassetid://616006778",
        "rbxassetid://616008087",
        "rbxassetid://616013216",
        "rbxassetid://616010382",
        "rbxassetid://616008936",
        "rbxassetid://616003713",
        "rbxassetid://616005863"
    },
    Mage = {
        "rbxassetid://707742142",
        "rbxassetid://707855907",
        "rbxassetid://707897309",
        "rbxassetid://707861613",
        "rbxassetid://707853694",
        "rbxassetid://707826056",
        "rbxassetid://707829716"
    },
    Ninja = {
        "rbxassetid://656117400",
        "rbxassetid://656118341",
        "rbxassetid://656121766",
        "rbxassetid://656118852",
        "rbxassetid://656117878",
        "rbxassetid://656114359",
        "rbxassetid://656115606"
    },
    OldSchool = {
        "rbxassetid://5319828216",
        "rbxassetid://5319831086",
        "rbxassetid://5319847204",
        "rbxassetid://5319844329",
        "rbxassetid://5319841935",
        "rbxassetid://5319839762",
        "rbxassetid://5319852613",
        "rbxassetid://5319850266"
    },
    Patrol = {
        "rbxassetid://1149612882",
        "rbxassetid://1150842221",
        "rbxassetid://1151231493",
        "rbxassetid://1150967949",
        "rbxassetid://1148811837",
        "rbxassetid://1148811837",
        "rbxassetid://1148863382"
    },
    Pirtate = {
        "rbxassetid://750781874",
        "rbxassetid://750782770",
        "rbxassetid://750785693",
        "rbxassetid://750783738",
        "rbxassetid://750782230",
        "rbxassetid://750779899",
        "rbxassetid://750780242"
    },
    Popstar = {
        "rbxassetid://1212900985",
        "rbxassetid://1150842221",
        "rbxassetid://1212980338",
        "rbxassetid://1212980348",
        "rbxassetid://1212954642",
        "rbxassetid://1213044953",
        "rbxassetid://1212900995"
    },
    Princess = {
        "rbxassetid://941003647",
        "rbxassetid://941013098",
        "rbxassetid://941028902",
        "rbxassetid://941015281",
        "rbxassetid://941008832",
        "rbxassetid://940996062",
        "rbxassetid://941000007"
    },
    Robot = {
        "rbxassetid://616088211",
        "rbxassetid://616089559",
        "rbxassetid://616095330",
        "rbxassetid://616091570",
        "rbxassetid://616090535",
        "rbxassetid://616086039",
        "rbxassetid://616087089"
    },
    Rthro = {
        "rbxassetid://2510196951",
        "rbxassetid://2510197257",
        "rbxassetid://2510202577",
        "rbxassetid://2510198475",
        "rbxassetid://2510197830",
        "rbxassetid://2510195892",
        "rbxassetid://02510201162",
        "rbxassetid://2510199791",
        "rbxassetid://2510192778"
    },
    Sneaky = {
        "rbxassetid://1132473842",
        "rbxassetid://1132477671",
        "rbxassetid://1132510133",
        "rbxassetid://1132494274",
        "rbxassetid://1132489853",
        "rbxassetid://1132461372",
        "rbxassetid://1132469004"
    },
    Stylish = {
        "rbxassetid://616136790",
        "rbxassetid://616138447",
        "rbxassetid://616146177",
        "rbxassetid://616140816",
        "rbxassetid://616139451",
        "rbxassetid://616133594",
        "rbxassetid://616134815"
    },
    Superhero = {
        "rbxassetid://782841498",
        "rbxassetid://782845736",
        "rbxassetid://782843345",
        "rbxassetid://782842708",
        "rbxassetid://782847020",
        "rbxassetid://782843869",
        "rbxassetid://782846423"
    },
    Toy = {
        "rbxassetid://782841498",
        "rbxassetid://782845736",
        "rbxassetid://782843345",
        "rbxassetid://782842708",
        "rbxassetid://782847020",
        "rbxassetid://782843869",
        "rbxassetid://782846423"
    },
    Vampire = {
        "rbxassetid://1083445855",
        "rbxassetid://1083450166",
        "rbxassetid://1083473930",
        "rbxassetid://1083462077",
        "rbxassetid://1083455352",
        "rbxassetid://1083439238",
        "rbxassetid://1083443587"
    },
    Werewolf = {
        "rbxassetid://1083195517",
        "rbxassetid://1083214717",
        "rbxassetid://1083178339",
        "rbxassetid://1083216690",
        "rbxassetid://1083218792",
        "rbxassetid://1083182000",
        "rbxassetid://1083189019"
    },
    Zombie = {
        "rbxassetid://616158929",
        "rbxassetid://616160636",
        "rbxassetid://616168032",
        "rbxassetid://616163682",
        "rbxassetid://616161997",
        "rbxassetid://616156119",
        "rbxassetid://616157476"
    }
}

local AnimationsName = {
    "Astronaut",
    "Bubbly",
    "Cartoony",
    "Confindent",
    "Cowboy",
    "Default",
    "Elder",
    "Ghost",
    "Knight",
    "Levitation",
    "Mage",
    "Ninja",
    "OldSchool",
    "Patrol",
    "Pirate",
    "Popstar",
    "Princess",
    "Robot",
    "Rthro",
    'Sneaky',
    "Stylish",
    "Superhero",
    "Toy",
    "Vampire",
    "Werewolf",
    "Zombie",
    "none"
}

local AnimationState = {
    Idle = "none",
    Walk = "none",
    Run = "none",
    Jump = "none",
    Climb = "none",
    Fall = "none",
}

local PuppywareSettings = {
    Aiming = {
        Aimbot = {
            Enabled = false,
            AimAssist = false,
            IsAiming = false,
            ShowFOV = false,
            FOVColor = Color3.new(0.284713, 0.011764, 1),
            UseNearestDistance = false,
            WallCheck = false,
            KnockedOutCheck = false,
            GrabbedCheck = false,
            Hitboxes = {"Head"}
        },
        TriggerBot = {
            Enabled = false,
            Delay = false,
            DelayAmount = 0
        },
        SilentAim = {
            Enabled = false,
            ShowFOV = false,
            FOVColor = Color3.new(0.284713, 0.011764, 1),
            WallCheck = false,
            KnockedOutCheck = false,
            UseNearestDistance = false,
            GrabbedCheck = false,
            Hitboxes = {"Head"}
        },
        TargetAim = {
            Enabled = false,
            ShowFOV = false,
            FOVColor = Color3.new(0.284713, 0.011764, 1),
            WallCheck = false,
            KnockedOutCheck = false,
            UseNearestDistance = false,
            GrabbedCheck = false,
            Hitboxes = {"Head"},
            Target = nil
        },
        AimingSettings = {
            MovementPrediction = false,
            MovementPredictionAmount = 0.165 * 1,
            HitChance = false,
            HitChanceAmount = {
                HitPercent = 100,
                NotHitPercent = 0
            },
            AimAssistType = "Camera",
            AimbotPrediction = false,
            AimbotPredictionAmount = 0.165 * 1,
            AimbotSmoothness = false,
            AimbotSmoothnessAmount = 5,
            PingBasedPrediction = false,
            GetVelocity = 0.165
        },
        TargetAimSettings = {
            UnlockTargetKnocked = false,
            NotificationAlert = false,
        },
        FOV = {
            FOVFilled = false,
            AimAssistSize = 100,
            SilentAimSize = 100,
            TargetAimSize = 100
        },
        Whitelist = {
            Players = {},
            Friends = {},
            Holder = "",
            Enabled = false,
            CrewEnabled = false,
            FriendsWhitelist = false
        },
    },
    Visuals = {
        ESP = {
            Enabled = false,
            ESPColor = Color3.new(0.284713, 0.011764, 1),
            Box = false,
            Name = false,
            Tracers = false,
            PlayerCheck = false,
            TeamMateCheck = false,
            TeamColor = false
        },
    },
    Blatant = {
        BlatantAA = {
            Enabled = false,
            NoAutoRotate = false,
            UndergroundWallbang = false,
            Underground = false,
            AntiAimType = "Jitter",
            AntiAimSpeed = 100,
            JitterAngle = 180
        },
        Movement = {
            SpeedEnabled = false,
            SpeedType = "Default",
            SpeedRender = "Default",
            SpeedAmount = 5
        },
        Reaching = {
            FistReach = false,
            MeleeReach = false
        },
        Character = {
            AntiGrab = false,
            AntiStomp = false,
            AntiStompType = "Nil Char",
            AntiBag = false,
            AntiSlow = false,
            AutoArmor = false,
            AutoLettuce = false,
            AutoReload = false
        },
        Farming = {
            ATMFarm = false,
            ShoeFarm = false,
            MuscleFarm = false,
            MuscleFarmingType = "Normal",
            BoxFarm = false,
            HospitalFarm = false,
            ATMPick = false
        },
        Cash = {
            AutoDrop = false,
            AutoDropAmount = 5000,
            AutoPickCash = false
        }
        },
    Miscellaneous = {
        Server = {
            Enabled = false,
            Value = 0,
            ServerCrasher = false,
            Rejoin = false,
            ServerHop = false,
        },
        KillInsults = {
            Enabled = false,
            Type = "After Dead",
            OldPlayer = "",
            Cooldown = false,
            CustomMessage = false,
            CustomMessageText = "@s is tapped!",
            Message = {
                "@s is sus.",
                "nn tapped, @s bad cheat.",
                "puppyware on top, @s is clapped.",
                "@s is rekted.",
                "puppyware>us",
                "you are just bad get puppyware",
                "u rly thought",
                "bad boy clique",
                "noob",
                "xD",
                "why are you that bad son",
                "you shall quit"
            }
        }
    },
    Teleport = {
        TeleportReturn = false,
        ReturnDelay = false,
        AutoPurchase = false,
        AmmoPurchaseAmount = 1
    },
}

local PuppywareModule = {
    Instance = {},
    Players = {},
    Old = {
        CFrame,
    },

Functions = {},
Drawing = {
    Circle = function(Thickness)
        local Circle = Drawing.new("Circle")
        Circle.Transparency = 1
        Circle.Thickness = Thickness
        return Circle
    end
},

    God = {
        MeleeAlive = false,
        GodMelee = false,
        GodBullet = false,
        AntiRagdoll = false
    },
    LagTick = 0,
    Ignores = {
        "UpperTorso",
        "LowerTorso",
        "Head",
        "LeftHand",
        "LeftUpperArm",
        "LeftLowerArm",
        "RightHand",
        "RightUpperArm",
        "RightLowerArm"
    },
    PingBasedPrediction = 0.165,
    Instance = {},
    Teleport = {
        Players = {},
        Food = {
            "Taco",
            "Cranberry",
            "Donut",
            "Pizza",
            "Chicken",
            "Popcorn",
            "Hamburger",
            "Starblox Latte",
            "Lettuce",
            "Lemonade"
        },
        Gun = {
            "Glock",
            "SMG",
            "Silencer",
            "TacticalShotgun",
            "P90",
            "AUG",
            "Shotgun",
            "RPG",
            "AR",
            "Double-Barrel SG",
            "Flamethrower",
            "Revolver",
            "LMG",
            "AK47",
            "DrumGun",
            "Silencer",
            "GrenadeLauncher",
            "Taser",
            "SilencerAR",
            "Grenade"
        },
        Armor = {
            "Medium Armor",
            "High-Medium Armor"
        },
        Mask = {
            "Surgeon Mask",
            "Riot Mask",
            "Pitchfork",
            "Hockey Mask",
            "Breathing Mask",
            "Pumpkin Mask",
            "Skull Mask",
            "Paintball Mask",
            "Ninja Mask"
        },
        Weight = {
            "Weights",
            "HeavyWeights"
        },
        Melee = {
            "Bat",
            "Shovel",
            "Pencil",
            "StopSign",
            "Knife",
            "Pitchfork"
        },
        Phone = {
            "iPhone",
            "iPhoneB",
            "iPhoneG",
            "iPhoneP",
            "Old Phone",
            "Orange Phone",
            "Original Phone",
        },
        Bike = {
            "DuoBike",
            "Solo Bike",
        },
        Extra = {
            "PepperSpray",
            "LockPicker",
            "Flashlight",
            "Flowers",
            "Money Gun",
            "Brown Bag",
            "Anti Bodies",
            "Firework"
        }
    }
}



local Window = Library:CreateWindow("Puppyware", Vector2.new(492, 598), Enum.KeyCode.RightShift)
local AimingTab = Window:CreateTab("Aiming")

-- Aimbot Setion --


getgenv().RecurringPoint = "UpperTorso"     -- ANother Hitbox
getgenv().Hitbox = "UpperTorso"     -- Hitbox 
getgenv().Keybind = "q"     -- Toggle/untoggle
getgenv().AimbotStrengthAmount = 0.600      -- Tracing : 900-500 or less for tracing, Pure Aimbot : 1.200 or 1.000
getgenv().PredictionAmount = 2.5    -- \\ hood mod ping -: 300 || 300-350 ping : 2.5, 2.3 or less | 200-250 ping : 3-3.5
getgenv().Radius = 25               -- At how near the cursor goes the easier you can toggle the Key.
getgenv().UsePrediction = true      -- Prediction nor no prediction
getgenv().AimbotStrength = true     -- Strength or no Strength
getgenv().FirstPerson = true
getgenv().ThirdPerson = true
getgenv().TeamCheck = false
getgenv().Enabled = true            -- Main Enabling 
loadstring(game:HttpGet("https://raw.githubusercontent.com/tenaaki/GenericAimbot/main/v1.0.0"))()
local LegitSection = AimingTab:CreateSector("Aimbot", "left")

local AimbotToggle = LegitSection:AddToggle('Aimbot Enabled', false, function(Boolean)
    getgenv().Enabled = Boolean            -- Main Enabling shit
    PuppywareSettings.Aiming.Aimbot.Enabled = Boolean
end)

AimbotToggle:AddKeybind()

local AimbotFOVToggle = LegitSection:AddToggle('Show FOV', false, function(Boolean)
    PuppywareSettings.Aiming.Aimbot.ShowFOV = Boolean
end)

AimbotFOVToggle:AddColorpicker(Color3.new(0.284713, 0.011764, 1), function(Color)
    PuppywareSettings.Aiming.Aimbot.FOVColor = Color
end)

LegitSection:AddToggle('Team Check', false, function(Boolean)
    getgenv().TeamCheck = Boolean
end)

LegitSection:AddDropdown('Hitboxes', {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso"}, {"Choose a hitbox"}, false, function(Value)
    getgenv().RecurringPoint = Value     -- ANother Hitbox
    getgenv().Hitbox = Value     -- Hitbox 
end)


-- Silent Aim Setion --

local RageSection = AimingTab:CreateSector("Silent Aim", "left")
local SilentAimToggle = RageSection:AddToggle('Silent Aim Enabled', false, function(Boolean)
    PuppywareSettings.Aiming.SilentAim.Enabled = Boolean
end)

SilentAimToggle:AddKeybind()

local SilentAimFOVToggle = RageSection:AddToggle('Show FOV', false, function(Boolean)
    PuppywareSettings.Aiming.SilentAim.ShowFOV = Boolean
end)

SilentAimFOVToggle:AddColorpicker(Color3.new(0.284713, 0.011764, 1), function(Color)
    PuppywareSettings.Aiming.SilentAim.FOVColor = Color
end)

RageSection:AddToggle('Nearest Distance', false, function(Boolean)
    PuppywareSettings.Aiming.SilentAim.UseNearestDistance = Boolean
end)

RageSection:AddToggle('Wall Check', false, function(Boolean)
    PuppywareSettings.Aiming.SilentAim.WallCheck = Boolean
end)

RageSection:AddToggle('Knock Out Check', false, function(Boolean)
    PuppywareSettings.Aiming.SilentAim.KnockedOutCheck = Boolean
end)

RageSection:AddToggle('Grabbed Check', false, function(Boolean)
    PuppywareSettings.Aiming.SilentAim.GrabbedCheck = Boolean
end)

RageSection:AddDropdown('Hitboxes', {"Head", "HumanoidRootPart"}, {"Head"}, true, function(Value)
    PuppywareSettings.Aiming.SilentAim.Hitboxes = Value
end)

-- Target Aim Setion --

local RageSection = AimingTab:CreateSector("Target Aim", "left")
local TargetAimToggle = RageSection:AddToggle('Target Aim Enabled', false, function(Boolean)
    PuppywareSettings.Aiming.TargetAim.Enabled = Boolean
end)

TargetAimToggle:AddKeybind()

local SilentAimFOVToggle = RageSection:AddToggle('Show FOV', false, function(Boolean)
    PuppywareSettings.Aiming.TargetAim.ShowFOV = Boolean
end)

SilentAimFOVToggle:AddColorpicker(Color3.new(0.284713, 0.011764, 1), function(Color)
    PuppywareSettings.Aiming.TargetAim.FOVColor = Color
end)

RageSection:AddToggle('Wall Check', false, function(Boolean)
    PuppywareSettings.Aiming.TargetAim.WallCheck = Boolean
end)

RageSection:AddToggle('Knock Out Check', false, function(Boolean)
    PuppywareSettings.Aiming.TargetAim.KnockedOutCheck = Boolean
end)

RageSection:AddToggle('Grabbed Check', false, function(Boolean)
    PuppywareSettings.Aiming.TargetAim.GrabbedCheck = Boolean
end)

RageSection:AddDropdown('Hitboxes', {"Head", "HumanoidRootPart"}, {"Head"}, true, function(Value)
    PuppywareSettings.Aiming.TargetAim.Hitboxes = Value
end)

-- Aim Assist FOV Section --

local AimbotFOVSection = AimingTab:CreateSector("FOV", "right")

AimbotFOVSection:AddToggle('FOV Filled', false, function(Boolean)
    PuppywareSettings.Aiming.FOV.FOVFilled = Boolean
end)

AimbotFOVSection:AddSlider("Aimbot Size", 0, 100, 500, 1, function(Value)
    PuppywareSettings.Aiming.FOV.AimbotSize = Value
end)

AimbotFOVSection:AddSlider("Silent Aim Size", 0, 100, 500, 1, function(Value)
    PuppywareSettings.Aiming.FOV.SilentAimSize = Value
end)

AimbotFOVSection:AddSlider("FOV Transparency", 0, 5, 9, 1, function(Value)
    PuppywareSettings.Aiming.FOV.Transparency = tonumber("0." .. Value)
end)

AimbotFOVSection:AddSlider("FOV Num Size", 1, 100, 100, 1, function(Value)
    PuppywareSettings.Aiming.FOV.NumSides = Value
end)
--[[
-- Target Strafe --
local TargetStrafeSection = AimingTab:CreateSector("Target Strafe", "left")
local Strafe = loadstring(game:HttpGet("https://raw.githubusercontent.com/ao-0/Yun/main/32d_api.lua"))()
local Circle = Strafe:New3DCircle()
Circle.ZIndex = 1
Circle.Transparency = 1
Circle.Thickness = 1
local delta = 0
local duration = 1
local d32_ui_color3 = Color3.fromRGB(255, 255, 255)


local TargetStrafeToggle = TargetStrafeSection:AddToggle("Enabled", false, function(State)
    Circle.Visible = State
end)

TargetStrafeSection:AddTextbox("Target Strafe Key", "(small letter only)", function(Key)
    PuppywareSettings.Aiming.TargetStrafe.Keybind = Key
end)

TargetStrafeToggle:AddColorpicker(Color3.fromRGB(255, 255, 255), function(Color)
    Circle.Color = Color
end)

TargetStrafeSection:AddSlider("Target Distance", 0, 1, 100, 1, function(Value)
    Circle.Radius = Value
end)

TargetStrafeSection:AddSlider("Rotation Speed", 0, 1, 50, 1, function(Value)
    duration = Value
end)
]]
-- Trigger Bot Section -- 

local TriggerbotSection = AimingTab:CreateSector("Trigger Bot", "left")

local TriggerBotToggle = TriggerbotSection:AddToggle('Trigger Bot Enabled', false, function(State)
    PuppywareSettings.Aiming.TriggerBot.Enabled = State
end)

TriggerBotToggle:AddKeybind()

local TValue = TriggerbotSection:AddToggle('Trigger Bot Delay (ms)', false, function(State)
    PuppywareSettings.Aiming.TriggerBot.Delay = State
end)

TValue:AddSlider(0.1, 0.1, 10, 10, function(Value)
    PuppywareSettings.Aiming.TriggerBot.DelayAmount = Value
end)

-- Aiming Settings Section --

local AimingSettings = AimingTab:CreateSector("Aiming Settings", "right")

AimingSettings:AddToggle('Ping Based Prediction', false, function(Boolean)
    PuppywareSettings.Aiming.AimingSettings.PingBasedPrediction = Boolean
end)

AimingSettings:AddTextbox('Velocity Prediction', "0.167", function(Value)
    PuppywareSettings.Aiming.AimingSettings.GetVelocity = Value
end)

AimingSettings:AddDropdown("Aim Type", {"Mouse", "Distance"}, "Mouse", false, function(Value)
    PuppywareSettings.Aiming.AimingSettings.AimAssistType = Value
end)

local SmoothnessToggle = AimingSettings:AddToggle('Aimbot Smoothness', false, function(Boolean)
    getgenv().AimbotStrength = Boolean
end)

SmoothnessToggle:AddSlider(0.100, 0.500, 1.000, 50, function(Value)
    getgenv().AimbotStrengthAmount = Value
end)

AimingSettings:AddSlider("Aim Radius", 1, 30, 100, 1, function(Value)
    getgenv().Radius = Value
end)

local PredictionToggle = AimingSettings:AddToggle('Aimbot Prediction', false, function(Boolean)
    getgenv().UsePrediction = Boolean
    PuppywareSettings.Aiming.AimingSettings.AimbotPrediction = Boolean
end)

PredictionToggle:AddSlider(1, 5, 10, 10, function(Value)
    getgenv().PredictionAmount = Value
    PuppywareSettings.Aiming.AimingSettings.AimbotPredictionAmount = Value
end)

local HitChanceToggle2 = AimingSettings:AddToggle('Hit Chance', false, function(Boolean)
    PuppywareSettings.Aiming.AimingSettings.HitChance = Boolean
end)

HitChanceToggle2:AddSlider(0, 100, 100, 1, function(Value)
    PuppywareSettings.Aiming.AimingSettings.HitChanceAmount.HitPercent = tonumber(Value)
    PuppywareSettings.Aiming.AimingSettings.HitChanceAmount.NotHitPercent = tonumber(100 - PuppywareSettings.Aiming.AimingSettings.HitChanceAmount.HitPercent)
end)


local AimbotSettings = AimingTab:CreateSector("Aimbot Settings", "right")

local AimbotBind = AimbotSettings:AddTextbox('Bind', " (small letter only).", function(Key)
    getgenv().Keybind = Key
end)

local FirstPersonToggle = AimbotSettings:AddToggle('1st Person', true, function(State)
    getgenv().FirstPerson = State
end)

local ThirdPersonToggle = AimbotSettings:AddToggle('3rd Person', true, function(State)
    getgenv().ThirdPerson = State
end)

-- Target Aim Settings Section --

local TargetAimSettings = AimingTab:CreateSector("Target Aim Settings", "right")

local TargetBind = TargetAimSettings:AddKeybind("Bind", false, function()
    
end, function()
    if PuppywareSettings.Aiming.TargetAim.Enabled then
        local NearestTarget, NearestDistance = NearestMouse()
        if NearestTarget and Visible(NearestTarget.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart) then
            PuppywareSettings.Aiming.TargetAim.Target = NearestTarget.Name
            if PuppywareSettings.Aiming.TargetAimSettings.NotificationAlert then
                Notify({
                    Title = "Pw-Remake",
                    Description = "Target: " .. NearestTarget.Name .. " (" .. NearestTarget.DisplayName .. ")",
                    Duration = 3
                })
            end
        end
    end
end)

TargetAimSettings:AddToggle('Unlock Target Knocked', false, function(State)
    PuppywareSettings.Aiming.TargetAimSettings.UnlockTargetKnocked = State
end)

TargetAimSettings:AddToggle('Notification Alert', false, function(State)
    PuppywareSettings.Aiming.TargetAimSettings.NotificationAlert = State
end)

local WhitelistSection = AimingTab:CreateSector("Whitelist", "right")

WhitelistSection:AddToggle('Whitelist Enabled', false, function(State)
    PuppywareSettings.Aiming.Whitelist.Enabled = State
end)

WhitelistSection:AddTextbox("Username", nil, function(Text)
    if Text ~= nil and Find(Text) ~= nil and Players:FindFirstChild(Find(Text)) then
        PuppywareSettings.Aiming.Whitelist.Holder = Find(Text)
    else
        Notify({
            Title = "Pw-Remake",
            Description = "Player is not found.",
            Duration = 3
        })
    end
end)

WhitelistSection:AddButton('Add', function(State)
    if PuppywareSettings.Aiming.Whitelist.Holder ~= nil and Players:FindFirstChild(PuppywareSettings.Aiming.Whitelist.Holder) then
        if table.find(PuppywareSettings.Aiming.Whitelist.Players, PuppywareSettings.Aiming.Whitelist.Holder) then
            Notify({
                Title = "Pw-Remake",
                Description = PuppywareSettings.Aiming.Whitelist.Holder .. " is whitelisted.",
                Duration = 3
            })
        else
            Insert(PuppywareSettings.Aiming.Whitelist.Players, PuppywareSettings.Aiming.Whitelist.Holder)
            Notify({
                Title = "Pw-Remake",
                Description = "Whitelisted " .. PuppywareSettings.Aiming.Whitelist.Holder,
                Duration = 3
            })
        end
    else
        Notify({
            Title = "Pw-Remake",
            Description = "Player is not found.",
            Duration = 3
        })
    end
end)

WhitelistSection:AddButton('Remove', function()
    if PuppywareSettings.Aiming.Whitelist.Holder ~= nil and Players:FindFirstChild(PuppywareSettings.Aiming.Whitelist.Holder) then
        if table.find(PuppywareSettings.Aiming.Whitelist.Players, PuppywareSettings.Aiming.Whitelist.Holder) then
            Remove(PuppywareSettings.Aiming.Whitelist.Players, PuppywareSettings.Aiming.Whitelist.Holder)
            Notify({
                Title = "Pw-Remake",
                Description = "Removed " .. PuppywareSettings.Aiming.Whitelist.Holder,
                Duration = 5
            })
        else
            Notify({
                Title = "Pw-Remake",
                Description = PuppywareSettings.Aiming.Whitelist.Holder .. " is not whitelisted.",
                Duration = 5
            })
        end
    else
        Notify({
            Title = "Pw-Remake",
            Description = "Player is not found.",
            Duration = 3
        })
    end
end)

WhitelistSection:AddToggle('Crew Whitelist', false, function(State)
    PuppywareSettings.Aiming.Whitelist.CrewEnabled = State
end)

WhitelistSection:AddToggle('Friends Whitelist', false, function(State)
    PuppywareSettings.Aiming.Whitelist.FriendsWhitelist = State
end)

-- Visuals Tab --
    
local VisualsTab = Window:CreateTab("Visuals")
local ESPSection = VisualsTab:CreateSector("ESP", "left")
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Twixks/Pw-Remake/main/ESP.lua"))() --// ESP Library Kiriot
local ESPToggle = ESPSection:AddToggle('ESP Enabled', false, function(onoff)
    ESP:Toggle(onoff)
    ESP.Players = onoff
end)

ESPToggle:AddKeybind()

ESPToggle:AddColorpicker(Color3.fromRGB(255, 255, 255), function(Color)
    ESP.Color = Color
    ESP.ToolColor = Color
end)

ESPSection:AddToggle('Boxes', false, function(onoff)
    ESP.Boxes = (onoff)
end)

ESPSection:AddToggle('Health', false, function(onoff)
    ESP.Health = (onoff)
end)

ESPSection:AddToggle('Names', false, function(onoff)
    ESP.Names = (onoff)
end)

ESPSection:AddToggle('Distance', false, function(onoff)
    ESP.Distance = (onoff)
end)


ESPSection:AddToggle('Tracer', false, function(onoff)
    ESP.Tracers = (onoff)
end)

ESPSection:AddToggle('Player Tool', false, function(onoff)
    ESP.Tool = (onoff)
end)

local ESPSettings = VisualsTab:CreateSector("ESP Settings", "right")
--[[
ESPSettings:AddToggle('ESP Outlines', true, function(State)
    ESP.Outline = (State)
end)
]]

ESPSettings:AddSlider("ESP Distance Limit", 0, 5000, 20000, 1, function(Value)
    ESP.DistanceS = (Value)
end)
--[[
ESPSettings:AddSlider("ESP Font Size", 10, 19, 21, 1, function(Value)
    ESP.FontSize = (Value)
end)

ESPSettings:AddSlider("Tracer Transparency", 0, 1, 1, 5, function(Value)
    ESP.TracerTransparency = (Value)
end)
]]
ESPSettings:AddSlider('Tracer Position', 1, 1, 20, 1, function(Value)
    ESP.AttachShift = (Value)
end)

ESPSettings:AddSlider('Tracer Thickness', 1, 1, 15, 2, function(Value)
    ESP.Thickness = (Value)
end)

-- ESP check Section --

local ESPCheckSection = VisualsTab:CreateSector("ESP Check", "right")

ESPCheckSection:AddToggle('Player Check', true, function(onoff)
    ESP.Players = onoff
end)

ESPCheckSection:AddToggle('Team Check', true, function(onoff)
    ESP.TeamMates = onoff
end)

ESPCheckSection:AddToggle('Team Color', false, function(onoff)
    ESP.TeamColor = onoff
end)


local ChamsSection = VisualsTab:CreateSector("Chams", "Left")
--[[
local BulletTracers = ChamsSection:AddToggle("Bullet tracers", false, function(State)
    BulletTracers = State
    if State then
        BulletTracers = false
local Services = {
    Players = game:GetService("Players"),
    UserInputService = game:GetService("UserInputService"),
    RunService = game:GetService("RunService"),
}

local Local = {
    Player = Services.Players.LocalPlayer,
    Mouse = Services.Players.LocalPlayer:GetMouse(),
}
local Other = {
    Camera = workspace.CurrentCamera,
    BeamPart = Instance.new("Part", workspace)
}

Other.BeamPart.Name = "BeamPart"
Other.BeamPart.Transparency = 1
local Settings = {
    StartColor = MainAccentColor,
    EndColor = MainAccentColor,
    StartWidth = 3,
    EndWidth = 3,
    ShowImpactPoint = false,
    ImpactTransparency = 0.5,
    ImpactColor = Color3.new(1, 1, 1),
    Time = 1,
}
game:GetService "RunService".Heartbeat:Connect(function()
    if game:GetService("Workspace").Ignored:FindFirstChild 'BULLET_RAYS' and BulletTracers then
        game:GetService("Workspace").Ignored.BULLET_RAYS:Destroy()
    end
end)
local funcs = {}
Local.Mouse.TargetFilter = Other.BeamPart
function funcs:Beam(v1, v2)
    v2 = Vector3.new(v2.X - 0.1, v2.Y + 0.2, v2.Z)
    local Part = Instance.new("Part", Other.BeamPart)
    Part.Size = Vector3.new(0, 0, 0)
    Part.Massless = true
    Part.Transparency = 1
    Part.CanCollide = false
    Part.Position = v1
    Part.Anchored = true
    local Attachment = Instance.new("Attachment", Part)
    local Part2 = Instance.new("Part", Other.BeamPart)
    Part2.Size = Vector3.new(0, 0, 0)
    Part2.Transparency = 0
    Part2.CanCollide = false
    Part2.Position = v2
    Part2.Anchored = true
    Part2.Material = Enum.Material.ForceField
    Part2.Color = Settings.ImpactColor
    Part2.Massless = true
    local Attachment2 = Instance.new("Attachment", Part2)
    local Beam = Instance.new("Beam", Part)
    Beam.FaceCamera = true
    Beam.Color = colorSequence
    Beam.Attachment0 = Attachment
    Beam.Attachment1 = Attachment2
    Beam.LightEmission = 6
    Beam.LightInfluence = 1
    Beam.Width0 = Settings.StartWidth
    Beam.Width1 = Settings.EndWidth
    Beam.Texture = "http://www.roblox.com/asset/?id=9150663556"
    Beam.TextureSpeed = 2
    Beam.TextureLength = 1
    delay(Settings.Time, function()
        Part:Destroy()
        Part2:Destroy()
    end)
end

spawn(function()
    while task.wait(0.5) do
        gun = GetGun()
        if gun then
            LastAmmo = gun.Ammo.Value
            gun.Ammo:GetPropertyChangedSignal("Value"):Connect(function()
                if BulletTracers and gun.Ammo.Value < LastAmmo then
                    LastAmmo = gun.Ammo.Value
                    funcs:Beam(gun.Handle.Position, Local.Mouse.hit.p)
                end
            end)
        end
    end
end)
end
return
end)

BulletTracers:AddColorpicker(Color3.fromRGB(255, 255, 255), function(Color)
    local colorSequence = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color),
        ColorSequenceKeypoint.new(1, Color),
    })

end)
]]
local Gunschamtoggle = ChamsSection:AddToggle("Gun Chams", false, function(State)
    if State then
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.ForceField
    else
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.Plastic
    end
end)

Gunschamtoggle:AddColorpicker(Color3.fromRGB(255, 255, 255), function(State)
    LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.BrickColor = BrickColor.new(State)
end)

ChamsSection:AddDropdown("Gun Cham Material", {"ForceField", "Neon", "SmoothPlastic", "Plastic"}, "Plastic", false, function(Value)
    local Client = game.GetService(game, "Players").LocalPlayer
    Client.Character:FindFirstChildOfClass("Tool").Default.Material = (Value)
end)


ChamsSection:AddColorpicker("Self Chams", Color3.fromRGB(255, 255, 255), function(Color)
    LocalPlayer.Character.LeftHand.Color = Color
    LocalPlayer.Character.RightHand.Color = Color
    LocalPlayer.Character.LeftLowerArm.Color = Color
    LocalPlayer.Character.RightLowerArm.Color = Color
    LocalPlayer.Character.LeftUpperArm.Color = Color
    LocalPlayer.Character.RightUpperArm.Color = Color
    LocalPlayer.Character.LeftFoot.Color = Color
    LocalPlayer.Character.RightFoot.Color = Color
    LocalPlayer.Character.LeftLowerLeg.Color = Color
    LocalPlayer.Character.RightLowerLeg.Color = Color
    LocalPlayer.Character.UpperTorso.Color = Color
    LocalPlayer.Character.LowerTorso.Color = Color
    LocalPlayer.Character.LeftUpperLeg.Color = Color
    LocalPlayer.Character.RightUpperLeg.Color = Color
    LocalPlayer.Character.Head.Color = Color 
end)

ChamsSection:AddDropdown("Self Cham Material", {"ForceField", "Neon", "Plastic", "SmoothPlastic"}, "Plastic", false, function(Value)
    game.Players.LocalPlayer.Character.LeftHand.Material = (Value)
    game.Players.LocalPlayer.Character.RightHand.Material = (Value)
    game.Players.LocalPlayer.Character.LeftLowerArm.Material = (Value)
    game.Players.LocalPlayer.Character.RightLowerArm.Material = (Value)
    game.Players.LocalPlayer.Character.LeftUpperArm.Material = (Value)
    game.Players.LocalPlayer.Character.RightUpperArm.Material = (Value)
    game.Players.LocalPlayer.Character.LeftFoot.Material = (Value)
    game.Players.LocalPlayer.Character.RightFoot.Material = (Value)
    game.Players.LocalPlayer.Character.LeftLowerLeg.Material = (Value)
    game.Players.LocalPlayer.Character.RightLowerLeg.Material = (Value)
    game.Players.LocalPlayer.Character.UpperTorso.Material = (Value)
    game.Players.LocalPlayer.Character.LowerTorso.Material = (Value)
    game.Players.LocalPlayer.Character.LeftUpperLeg.Material = (Value)
    game.Players.LocalPlayer.Character.RightUpperLeg.Material = (Value)
    game.Players.LocalPlayer.Character.Head.Material = (Value)
end)

ESPCheckSection:AddLabel("Turn on : \n PlayerCheck & TeamCheck \n (this will show all users)")
-- Crosshair stuff --

local CrosshairSection = VisualsTab:CreateSector("Drawing Crosshair", "right")

local DrawingCrosshairToggle = CrosshairSection:AddToggle("Crosshair Enabled", true, function(State)
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Visible = State
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.Visible = State
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.Visible = State
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.Visible = State
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.Visible = State
end)

DrawingCrosshairToggle:AddColorpicker(Color3.fromRGB(255, 255, 255), function(State)
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.BackgroundColor3 = State
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.BackgroundColor3 = State
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.BackgroundColor3 = State
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.BackgroundColor3 = State
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.BackgroundColor3 = State
end)


-- local stuff --

local LocalSection = VisualsTab:CreateSector("Local", "left")

LocalSection:AddSlider("Field Of View", 70, 70, 120, 1, function(Value)
    if Value then
        Amount = (Value)
    game:GetService'Workspace'.Camera.FieldOfView = Amount
    end
end)

LocalSection:AddButton("Korblox", function()
    game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
end)

LocalSection:AddButton("Headless", function()
    game.Players.LocalPlayer.Character.Head:BreakJoints()
    game.Players.LocalPlayer.Character.Head.Position = Vector3.new(0,99999999999999,0)
end)

LocalSection:AddButton("No Face", function()
    game.Players.LocalPlayer.Character.Head.face:Destroy()
end)

LocalSection:AddButton("Headless (Cs)", function()
    game.Players.LocalPlayer.Character.Head.Transparency = 1
    game.Players.LocalPlayer.Character.Head.face:Destroy()
end)

LocalSection:AddButton("Korblox (Cs)", function()
    game.Players.LocalPlayer.Character.RightFoot.MeshId = "http://www.roblox.com/asset/?id=902942093"
    game.Players.LocalPlayer.Character.RightFoot.Transparency = 1
    game.Players.LocalPlayer.Character.RightLowerLeg.MeshId = "http://www.roblox.com/asset/?id=902942093"
    game.Players.LocalPlayer.Character.RightLowerLeg.Transparency = 1
    game.Players.LocalPlayer.Character.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
    game.Players.LocalPlayer.Character.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
end)

LocalSection:AddButton("Blizzard Beast Mode (Cs)", function()
    game.Players.LocalPlayer.Character.Head.face.Texture =  "rbxassetid://209712379"
end)

LocalSection:AddButton("Beast Mode (Cs)", function()
    game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://127959433"
end)

LocalSection:AddButton("Playful Vampire (Cs)", function()
game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://2409281591"
end)

LocalSection:AddButton("Super Super Happy Face (Cs)", function()
    game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://494290547"
end)

LocalSection:AddButton("Chat Spy", function()
    Notify({
        Title = "Pw-Remake",
        Description = "/spy to toggle, /me to stand out",
        Duration = 5
    })

--chat "/spy" to toggle!
enabled = true
--if true will check your messages too
spyOnMyself = true
--if true will chat the logs publicly (fun, risky)
public = false
--if true will use /me to stand out
publicItalics = true
--customize private logs
privateProperties = {
    Color = Color3.fromRGB(0,255,255); 
    Font = Enum.Font.SourceSansBold;
    TextSize = 18;
}
--////////////////////////////////////////////////////////////////
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance

local function onChatted(p,msg)
    if _G.chatSpyInstance == instance then
        if p==player and msg:lower():sub(1,4)=="/spy" then
            enabled = not enabled
            wait(0.3)
            privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
            StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
        elseif enabled and (spyOnMyself==true or p~=player) then
            msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
            local hidden = true
            local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
                if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
                    hidden = false
                end
            end)
            wait(1)
            conn:Disconnect()
            if hidden and enabled then
                if public then
                    saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
                else
                    privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
                    StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
                end
            end
        end
    end
end

for _,p in ipairs(Players:GetPlayers()) do
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)

privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end)


local MisSector = VisualsTab:CreateSector("Miscs", "left")

local BoomboxTogle = MisSector:AddToggle("Boombox Transparency", false, function(State)
    PuppywareSettings.Visuals.Miscs.BoomboxTransparency = State
end)

MisSector:AddSlider("Boombox Transparency", 0, 0, 1, 2, function(Value)
    PuppywareSettings.Visuals.Miscs.BoomboxAmount = State
end)
MisSector:AddButton("Hide Boombox", function()
    if game.Players.LocalPlayer.Character.BOOMBOXHANDLE then
        game.Players.LocalPlayer.Character.BOOMBOXHANDLE:Destroy()
        Notify({
            Title = "Pw-Remake",
            Description = "Boombox Destroyed.",
            Duration = 3
        })
    else
        Notify({
            Title = "Pw-Remake",
            Description = "You are not holding boombox",
            Duration = 3
        })
    end
end)


MisSector:AddButton("Hide Mask", function()
    if game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask') then
        game.Players.LocalPlayer.Character:FindFirstChild('In-gameMask').Handle:Destroy()
        Notify({
            Title = "Pw-Remake",
            Description = "Mask Hidden!",
            Duration = 3
        })
    else
        Notify({
            Title = "Pw-Remake",
            Description = "Your not wearing a mask.",
            Duration = 3
        })
    end
end)

MisSector:AddButton("AutoClicker", function()

    Notify({
        Title = "Pw-Remake",
        Description = "Click n to on/off autoclicker",
        Duration = 5
    })

    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local Clicking = false
    Mouse.KeyDown:Connect(function(Key)
        if Key == "n" then
            Clicking = not Clicking
            if Clicking == true then
                repeat
                    mouse1click()
                    wait(0.001)    
                until Clicking == false
            end
        end
    end)
end)



local Speedglthkey = MisSector:AddButton("Speed Glitch", function()
    Notify({
        Title = "Pw-Remake",
        Description = "Click V to on/off Speedglitch",
        Duration = 5
    })

    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local SpeedGlitch = false
    local Wallet = Player.Backpack:FindFirstChild("Wallet")

    local UniversalAnimation = Instance.new("Animation")

    function stopTracks()
        for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
            if (v.Animation.AnimationId:match("rbxassetid")) then
                v:Stop()
            end
        end
    end

    function loadAnimation(id)
        if UniversalAnimation.AnimationId == id then
            stopTracks()
            UniversalAnimation.AnimationId = "1"
        else
            UniversalAnimation.AnimationId = id
            local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
            animationTrack:Play()
        end
    end

    Mouse.KeyDown:Connect(function(Key)
        if Key == PuppywareSettings.Visuals.Misc.Macro then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch == true then
                loadAnimation("rbxassetid://3189777795")
                wait(1.5)
                Wallet.Parent = Player.Character
                wait(0.15)
                Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                wait(0.05)
                repeat game:GetService("RunService").Heartbeat:wait()
                    keypress(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keypress(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                until SpeedGlitch == false
            end
        end
    end)
end)

Speedglthkey:AddKeybind(Enum.KeyDown.None, function(State)
    PuppywareSettings.Visuals.Misc.Macro = State
end)

local WorldSection = VisualsTab:CreateSector("World", "right")

WorldSection:AddToggle("Global Shadows", false, function(Toggle)
    game.Lighting.GlobalShadows = (Toggle)
end)

WorldSection:AddColorpicker("Color Effect Top", Color3.fromRGB(0, 0, 0), function(Color)
    game.Lighting.ColorShift_Top = (Color)
end)

WorldSection:AddColorpicker("Color Effect Down", Color3.fromRGB(0, 0, 0), function(Color)
    game.Lighting.ColorShift_Bottom = (Color)
end)

WorldSection:AddColorpicker("Ambient Color", Color3.fromRGB(70, 70, 70), function(Color)
    game.Lighting.Ambient = (Color)
    PuppywareSettings.Visuals.World.Ambient.AmbientColor = (Color)
end)

WorldSection:AddColorpicker("OutAmbient Color", Color3.fromRGB(127, 127, 127), function(Color)
    game.Lighting.OutdoorAmbient = (Color)
end)

WorldSection:AddButton("FullBright", function(Button)
    game.Lighting.Brightness = 15
    PuppywareSettings.Visuals.World.FullBright = (Button)
end)

WorldSection:AddSlider("Brightness", 1, 1, 20, 2, function(Value)
    game.Lighting.Brightness = (Value)
    PuppywareSettings.Visuals.World.Brightness.BrightAmount = (Value)
end)

WorldSection:AddSlider("Fog Effect", 0, 5000, 10000, 1, function(Value)
    game.Lighting.FogEnd = (Value)
end)

WorldSection:AddSlider("Time", 1, 14, 24, 2, function(Value)
    game.Lighting.ClockTime = (Value)
    PuppywareSettings.Visuals.World.Time = (Value)
end)

WorldSection:AddSlider("Sun/Moon Latitude", 1, 25, 360, 1, function(Value)
    game.Lighting.GeographicLatitude = (Value)
    PuppywareSettings.Visuals.World.Latitude = (Value)
end)



-- Blatant Tab --

local BlatantTab = Window:CreateTab("Blatant")

local MovementSector = BlatantTab:CreateSector("Player Movement", "right")

local SpeedToggle = MovementSector:AddToggle('Speed Enabled', false, function(State)
    PuppywareSettings.Blatant.Movement.SpeedEnabled = State
end)

SpeedToggle:AddKeybind()

local BunnyHop = MovementSector:AddToggle('Bunny Hop', false, function(State)
    PuppywareSettings.Blatant.Movement.BunnyHop = State
end)

BunnyHop:AddKeybind()

local JumpStrafe = MovementSector:AddToggle('Jump Strafe', false, function(State)
    PuppywareSettings.Blatant.Movement.JumpStrafe = State
end)

MovementSector:AddSlider('Jump Strafe Speed', 1.0, 3.1, 5.0, 10, function(Value)
    PuppywareSettings.Blatant.Movement.JumpStrafeSpeed = Value
end)

MovementSector:AddSlider("Speed Movemnt", 1, 3, 10, 1, function(Value)
    PuppywareSettings.Blatant.Movement.SpeedAmount = Value
end)

MovementSector:AddDropdown("Speed Type", {"CFrame"}, "CFrame", false, function(Value)
    PuppywareSettings.Blatant.Movement.SpeedType = Value
end)

MovementSector:AddDropdown("Speed Render Type", {"Slower", "Default", "Faster"}, "Default", false, function(Value)
    PuppywareSettings.Blatant.Movement.SpeedRenderType = Value
end)

local BlatantAntiAimSector = BlatantTab:CreateSector("Anti-Aim", "left")

local AntiAimToggle = BlatantAntiAimSector:AddToggle('Anti-Aim Enabled', false, function(State)
    PuppywareSettings.Blatant.BlatantAA.Enabled = State
end)

AntiAimToggle:AddKeybind()

BlatantAntiAimSector:AddToggle('No Auto Rotate', false, function(State)
    PuppywareSettings.Blatant.BlatantAA.NoAutoRotate = State
end)

local UndergroundWallBangToggle = BlatantAntiAimSector:AddToggle('Underground Wallbang', false, function(State)
    pcall(function()
        if State then
            wait(0.5)
            Float = Instance.new("BodyVelocity")
            Float.Parent = LocalPlayer.Character.HumanoidRootPart
            Float.MaxForce = Vector3.new(100000, 100000, 100000)
            Float.Velocity = Vector3.new(0, 0, 0)
            wait(0.10)
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -9.5, 0)
            Cham(LocalPlayer, true)
            PuppywareSettings.Blatant.BlatantAA.UndergroundWallbang = true
            SpeedToggle:Set(true)
        else
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 9.5, 0)
            Cham(LocalPlayer, false)
            Float:Destroy()
            PuppywareSettings.Blatant.BlatantAA.UndergroundWallbang = false
            SpeedToggle:Set(false)
        end
    end)
end)

UndergroundWallBangToggle:AddKeybind()

BlatantAntiAimSector:AddToggle('SlingShot', false, function(State)
    PuppywareSettings.Blatant.BlatantAA.SlingShot = State
end)

BlatantAntiAimSector:AddSlider('Height', -50, 50, 100, 1, function(Value)
    PuppywareSettings.Blatant.BlatantAA.SlingShotHeight = Value
end)

BlatantAntiAimSector:AddToggle('Underground Lay', false, function(State)
    if State then
        game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=3152378852"
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=3152378852"
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=3152378852"
    else
        game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = _G.Idle
        game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = _G.Run
        game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = _G.Walk
    end
end)

BlatantAntiAimSector:AddDropdown("Anti Aim Type", {"Jitter", "Spin"}, "Jitter", false, function(Value)
    PuppywareSettings.Blatant.BlatantAA.AntiAimType = Value
end)

BlatantAntiAimSector:AddSlider("Anti Aim Speed", 0, 100, 300, 1, function(Value)
    PuppywareSettings.Blatant.BlatantAA.AntiAimSpeed = Value
end)

BlatantAntiAimSector:AddSlider("Jitter Angle", 0, 180, 360, 1, function(Value)
    PuppywareSettings.Blatant.BlatantAA.JitterAngle = Value
end)
--[[
local LegitAntiAimSector = BlatantTab:CreateSector("Legit Anti Aim", "left")

local LegitAntiAimToggle = LegitAntiAimSector:AddToggle('Legit AA Enabled', false, function(State)
    PuppywareSettings.Blatant.LegitAA.Enabled = Value
end)

LegitAntiAimSector:AddToggle('Anti Aim At', false, function(State)
    PuppywareSettings.Blatant.LegitAA.AntiAimAt = State
end)

LegitAntiAimSector:AddSlider("Anti Aim At Distance", 1, 20, 100, 1, function(Value)
    PuppywareSettings.Blatant.LegitAA.AntiAimAtDistance = Value
end)
]]
local AntilockSector = BlatantTab:CreateSector("Anti Lock", "left")

AntilockSector:AddTextbox("Anti lock Speed", "0.5 or 0.7 or 0.6", function(Value)
    getgenv().Multiplier = Value
end)

local AntilockToggle = AntilockSector:AddToggle("Anti Lock", false, function(State)
    getgenv().AntiLock = State
end)

AntilockToggle:AddKeybind()

AntilockSector:AddButton("Fix Anti lock", function(State)
    Notify({
        Title = "Pw-Remake",
        Description = "You should be able to shoot people.",
        Duration = 3
    })
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
            v:Destroy()
        end
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        char.ChildAdded:connect(function(child)
        if child.IsA("Script") then
            wait(0.1)
            if child:FindFirstChild("LocalScript") then
                child.LocalScript:FireServer()
            end
        end
    end)
end)
end)


local FlySector = BlatantTab:CreateSector("Fly", "left")

FlySector:AddButton('Increase Speed (+)', function()
    Notify({
        Title = "Pw-Remake",
        Description = "Increased Speed",
        Duration = 3
    })
    FLYSPEED = FLYSPEED + 3
end)

FlySector:AddButton('Fly (X)', function()
    Notify({
        Title = "Pw-Remake",
        Description = "this is one time fly, Click again if resetted.",
        Duration = 2
    })
    FLYSPEED = 20
    FLYMODE = 'Default'
        if FLYMODE == 'Default' then
        local plr = game.Players.LocalPlayer
        local Humanoid = plr.Character:FindFirstChildWhichIsA('Humanoid')
        local mouse = plr:GetMouse()
        localplayer = plr
        if workspace:FindFirstChild("Core") then
            workspace.Core:Destroy()
        end
        local Core = Instance.new("Part")
        Core.Name = "Core"
        Core.Size = Vector3.new(0.05, 0.05, 0.05)
        spawn(function()
            Core.Parent = workspace
            local Weld = Instance.new("Weld", Core)
            Weld.Part0 = Core
            Weld.Part1 = localplayer.Character.LowerTorso
            Weld.C0 = CFrame.new(0, 0, 0)
        end)
        workspace:WaitForChild("Core")
        local torso = workspace.Core
        flying = true
        local speed=FLYSPEED
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(15e15, 15e15, 15e15)
            gyro.cframe = torso.CFrame
            repeat
                wait()
                Humanoid.PlatformStand=true
                local new=gyro.cframe - gyro.cframe.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=FLYSPEED
                end
                if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed
                end
                if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed
                    end
                if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed
                end
                if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed
                end
                if speed>FLYSPEED then
                    speed=FLYSPEED
                end
                pos.position=new.p
                if keys.w then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed),0,0)
                elseif keys.s then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed),0,0)
                else
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                end
                until flying == false
                if gyro then gyro:Destroy() end
                if pos then pos:Destroy() end
                flying=false
                    Humanoid.PlatformStand=false
                    speed=FLYSPEED
                end
                e1=mouse.KeyDown:connect(function(key)
                    if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
                    if key=="w" then
                        keys.w=true
                    elseif key=="s" then
                        keys.s=true
                    elseif key=="a" then
                        keys.a=true
                    elseif key=="d" then
                        keys.d=true
                    elseif key=="x" then
                        if flying==true then
                            flying=false
                        else
                            flying=true
                            start()
                        end
                    end
                end)
            e2=mouse.KeyUp:connect(function(key)
                if key=="w" then
                    keys.w=false
                elseif key=="s" then
                    keys.s=false
                elseif key=="a" then
                    keys.a=false
                elseif key=="d" then
                    keys.d=false
                end
            end)
        start()
    else
        repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
        local mouse = game.Players.LocalPlayer:GetMouse()
        repeat wait() until mouse
        local plr = game.Players.LocalPlayer
        local torso = plr.Character.Head
        local flying = false
        local deb = true
        local ctrl = {f = 0, b = 0, l = 0, r = 0}
        local lastctrl = {f = 0, b = 0, l = 0, r = 0}
        local maxspeed = 5000
        local speed = 5000
        function Fly()
            local bg = Instance.new("BodyGyro", torso)
            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = torso.CFrame
            local bv = Instance.new("BodyVelocity", torso)
            bv.velocity = Vector3.new(0,0.1,0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
            repeat wait()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = true
            if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then
                speed = speed+.0+(speed/maxspeed)
                if speed > maxspeed then
                    speed = maxspeed
                end
            elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then
                speed = speed-5
                if speed > 5 then
                    speed = -2
                end
            end
            if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then
                bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
            else
                bv.velocity = Vector3.new(0,0.1,0)
            end
            bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
            until not flying
            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 5
            bg:Destroy()
            bv:Destroy()
            plr.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false
            end
            mouse.KeyDown:connect(function(key)
            if key:lower() == "x" then
                if flying then flying = false
                else
                    flying = true
                    Fly()
                end
                elseif key:lower() == "w" then
                ctrl.f = FLYSPEED
                elseif key:lower() == "s" then
                ctrl.b = -FLYSPEED
                elseif key:lower() == "a" then
                ctrl.l = -FLYSPEED
                elseif key:lower() == "d" then
                ctrl.r = FLYSPEED
                end
            end)
            mouse.KeyUp:connect(function(key)
                if key:lower() == "w" then
                ctrl.f = 0
                elseif key:lower() == "s" then
                ctrl.b = 0
                elseif key:lower() == "a" then
                    ctrl.l = 0
                elseif key:lower() == "d" then
                    ctrl.r = 0
                end
            end)
        Fly()
    end
end)

FlySector:AddSlider('Fly Speed', 0, 15, 100, 1, function(Value)
    FLYSPEED = FLYSPEED - FLYSPEED + (Value)
end)
--[[
FlySector:AddButton('Change FlyMode', function()
    if FLYMODE == 'Default' then
        FLYMODE = 'IY'
        Notify({
            Title = "Pw-Remake",
            Description = "Coming Soon.",
            Duration = 3
        })                                      -- \\ Maybe sooner
    else
        FLYMODE = 'Default'
        Notify({
            Title = "Pw-Remake",
            Description = "Change To Default, Reset and click fly again.",
            Duration = 3
        })
    end
end)
]]
FlySector:AddButton('Decrease Speed (-)', function()
    Notify({
        Title = "Pw-Remake",
        Description = "Decreased Speed",
        Duration = 3
    })
    FLYSPEED = FLYSPEED - 3
end)

local MiscSector = BlatantTab:CreateSector("Misc", "left")

MiscSector:AddButton('Invisible', function(State)
    Invisible()
end)

MiscSector:AddButton('Nil Char', function(State)
    NilBody()
end)

MiscSector:AddButton('Reset', function(State)
    game.Players.LocalPlayer.Character.Humanoid:Destroy()
end)

local ResetBind = MiscSector:AddKeybind("Rest Bind", false, function()
end, function()
    game.Players.LocalPlayer.Character.Head:Destroy()
end)

local NilCharBind = MiscSector:AddKeybind("Nil Char Bind", false, function()
    
end, function()
    NilBody()
end)

local GodModeSector = BlatantTab:CreateSector("God Mode", "left")

GodModeSector:AddButton("Gun Only", function()
    PuppywareModule.God.GodBullet = true
    NilBody()
end)

GodModeSector:AddButton("Melee Only", function()
    PuppywareModule.God.GodMelee = true
    NilBody()
end)

GodModeSector:AddButton("Anti Ragdoll", function()
    PuppywareModule.God.AntiRagdoll = true
    NilBody()
end)

GodModeSector:AddButton("God Block", function()
    pcall(function()
        LocalPlayer.Character.BodyEffects.Defense.CurrentTimeBlock:Destroy()
        NilBody()
    end)
end)
if game.PlaceId == 2788229376 then
    local ReachingSector = BlatantTab:CreateSector("Reaching", "right")

    local FistReachToggle = ReachingSector:AddToggle('Fist Reach', false, function(State)
        PuppywareSettings.Blatant.Reaching.FistReach = State
    end)

    FistReachToggle:AddKeybind()

    ReachingSector:AddSlider("Fists Transparency", 0, 0, 1, 2, function(Value)
        if Value then
            LocalPlayer.Character.RightHand.Transparency = Value
            LocalPlayer.Character.LeftHand.Transparency = Value
        end
    end)

    local MeleeReachToggle = ReachingSector:AddToggle('Melee Reach', false, function(State)
        PuppywareSettings.Blatant.Reaching.MeleeReach = State
    end)

    MeleeReachToggle:AddKeybind()

    ReachingSector:AddSlider("Melee Transparency", 0, 0, 1, 2, function(Value)
        if Value then
            Tool.Handle.Transparency = Value
        end
    end)
end

local CharacterSector = BlatantTab:CreateSector("Character", "right")

local StompToggle = CharacterSector:AddToggle('Anti Stomp', false, function(State)
    PuppywareSettings.Blatant.Character.AntiStomp = State
end)

StompToggle:AddKeybind()

CharacterSector:AddDropdown("Anti Stomp Type", {"Show Body", "Nil Char"}, "Nil Char", false, function(State)
    PuppywareSettings.Blatant.Character.AntiStompType = State
end)

CharacterSector:AddToggle('Auto Stomp', false, function(State)
    autostomp = State
    game:GetService("RunService").Stepped:connect(function()
        if autostomp then
            game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        end
    end)
    game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(state)
        if state == "." then
            autostomp = not autostomp
            game.ReplicatedStorage.MainEvent:FireServer("Stomp")
        end
    end)
end)

local BagToggle = CharacterSector:AddToggle('Anti Bag', false, function(State)
    PuppywareSettings.Blatant.Character.AntiBag = State
end)

BagToggle:AddKeybind()

local FlingToggle = CharacterSector:AddToggle('Anti-Fling', false, function(State)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = State
end)

FlingToggle:AddKeybind()

CharacterSector:AddToggle('Trash Talk', false, function(State)
    PuppywareSettings.Blatant.Character.TrashTalk = State
end)

CharacterSector:AddToggle('Anti Grab', false, function(State)
    PuppywareSettings.Blatant.Character.AntiGrab = State
end)

CharacterSector:AddToggle('Anti Slow', false, function(State)
    PuppywareSettings.Blatant.Character.AntiSlow2 = State
end)

CharacterSector:AddToggle('Anti Effects', false, function(State)
    PuppywareSettings.Blatant.Character.AntiEffects = State
end)

CharacterSector:AddToggle('No jumpCooldown', false, function(State)
    PuppywareSettings.Blatant.Character.NoJumpCooldown = State
    if State then
        local a;
        a = hookfunction(wait, function(b) if b == 1.5 and PuppywareSettings.Blatant.Character.NoJumpCooldown then return a() end return a(b) end)
    end        
end)



CharacterSector:AddToggle('Auto Lettuce', false, function(State)
    PuppywareSettings.Blatant.Character.AutoLettuce = State
end)

local ArmorToggle = CharacterSector:AddToggle('Auto Armor', false, function(State)
    PuppywareSettings.Blatant.Character.AutoArmor = State
end)

ArmorToggle:AddKeybind()


CharacterSector:AddToggle('Auto Reload', false, function(State)
    PuppywareSettings.Blatant.Character.AutoReload = State
end)

CharacterSector:AddButton('No Recoil', function(NoRecoil)
    if NoRecoil then
        local mt = getrawmetatable(game)
        local newindex = mt.newindex
        setreadonly(mt,false)
        function isframework(scriptInstance)
            if tostring(scriptInstance) == "Framework" then
                return true
            end
            return false
        end
        function checkArgs(instance,index)
            if tostring(instance):lower():find("camera") and tostring(index) == "CFrame" then
                return true
            end
            return false
        end
        mt.newindex = newcclosure(function(self,index,value)
            local callingScr = getcallingscript()
            if isframework(callingScr) and checkArgs(self,index) then
               return;
            end
            return newindex(self,index,value)
        end)
        setreadonly(mt,true)
    end   
end)

CharacterSector:AddButton('High Tool', function()
    if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool') then
        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool').Grip = CFrame.new(0, -12, 0, 1, 0, 0, 0, 1, 0, 0, 0, -1)
    else
        Notify({
            Title = "Pw-Remake",
            Description = "Your not Holding a tool, Please hold a tool.",
            Duration = 3
        })
    end
end)

CharacterSector:AddButton('Longer Lasting Bullet', function()
    if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool') then
        if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('Handle'):FindFirstChildWhichIsA('BillboardGui') then
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Tool'):FindFirstChild('Handle'):FindFirstChildWhichIsA('BillboardGui'):Destroy()
        else
            Notify({
                Title = "Pw-Remake",
                Description = "Your not Holding a gun, Please hold a gun.",
                Duration = 3
            })
        end
    else
        Notify({
            Title = "Pw-Remake",
            Description = "Your not Holding a gun, Please hold a gun.",
            Duration = 3
        })
    end
end)
if game.PlaceId == 2788229376 then
    local FarmingSector = BlatantTab:CreateSector("Farming", "right")

    local ATMToggle = FarmingSector:AddToggle('ATM Farm', false, function(State)
        PuppywareSettings.Blatant.Farming.ATMFarm = State
    end)

    ATMToggle:AddKeybind()

    FarmingSector:AddToggle('Shoe Farm', false, function(State)
        PuppywareSettings.Blatant.Farming.ShoeFarm = State
    end)

    FarmingSector:AddToggle('Hospital Farm', false, function(State)
        PuppywareSettings.Blatant.Farming.HospitalFarm = State
    end)

    local BoxFarmToggle = FarmingSector:AddToggle('Box Farm', false, function(State)
        PuppywareSettings.Blatant.Farming.BoxFarm = State
    end)

    BoxFarmToggle:AddKeybind()

    local MuscleToggle = FarmingSector:AddToggle('Muscle Farm', false, function(State)
        PuppywareSettings.Blatant.Farming.MuscleFarm = State
    end)

    MuscleToggle:AddKeybind()

    FarmingSector:AddDropdown("Muscle Farming Type", {"Normal", "Heavy"}, "Normal", false, function(State)
        PuppywareSettings.Blatant.Farming.MuscleFarmingType = State
    end)
end
local CashSector = BlatantTab:CreateSector("Cash", "right")

local AutoDropToggle = CashSector:AddToggle("Auto Drop", false, function(State)
    PuppywareSettings.Blatant.Cash.AutoDrop = State
end)

AutoDropToggle:AddSlider(1000, 3500, 10000, 1, function(Value)
    PuppywareSettings.Blatant.Cash.AutoDropAmount = Value
end)

CashSector:AddToggle("Auto Pick Cash", false, function(State)
    PuppywareSettings.Blatant.Cash.AutoPickCash = State
end)

-- Auto Buy Tab --

local TeleportTab = Window:CreateTab("Teleport")

local TeleportModule = {
    Food = PuppywareModule.Teleport.Food[1],
    Gun = PuppywareModule.Teleport.Gun[1],
    Armor = PuppywareModule.Teleport.Armor[1],
    Melee = PuppywareModule.Teleport.Melee[1],
    Extra = PuppywareModule.Teleport.Extra[1],
    Bike = PuppywareModule.Teleport.Bike[1],
    Mask = PuppywareModule.Teleport.Mask[1],
    Phone = PuppywareModule.Teleport.Phone[1],
    Weight = PuppywareModule.Teleport.Weight[1],
    AutoSet = {
        Tools = {}
    }
}

local LocationSector = TeleportTab:CreateSector("Location Teleport", "left")
if game.PlaceId == 2788229376 then
    LocationSector:AddButton("Bank", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-333.468445, 80.2145081, -259.203644, 0.0113044931, -4.16143209e-09, 0.999936104, 7.39171568e-08, 1, 3.32604877e-09, -0.999936104, 7.38748298e-08, 0.0113044931)
    end)

    LocationSector:AddButton("Casino", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1006.07953, 57.5999298, -86.7553329, 0.854325175, 6.44815117e-08, -0.519738913, -9.9541694e-08, 1, -3.95572783e-08, 0.519738913, 8.55304663e-08, 0.854325175)
    end)
        
    LocationSector:AddButton("Lava Base", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-796.256897, -39.6492004, -886.306152, -0.39699012, 2.91068263e-05, 0.917822897, 1.63490836e-06, 1, -3.10057476e-05, -0.917822897, -1.08084187e-05, -0.39699012)
    end)

    LocationSector:AddButton("UFO", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(71.7331619, 139, -691.154419, 0.602706313, 7.78292178e-06, 0.797962964, 7.63640458e-07, 1, -1.03302691e-05, -0.797962964, 6.83547478e-06, 0.602706313)
    end)
    
    LocationSector:AddButton("Safe Spot 1", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.270287, -58.7000618, 146.536087, 0.999873519, 5.21876942e-08, -0.0159031227, -5.22713037e-08, 1, -4.84179008e-09, 0.0159031227, 5.67245495e-09, 0.999873519)
    end)
    
    LocationSector:AddButton("Safe Spot 2", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.48085, 38.25, 200014.953, 0.507315397, 0, -0.861760437, 0, 1, 0, 0.861760437, 0, 0.507315397)
    end)
end

local FoodSector = TeleportTab:CreateSector("Food Teleport", "left")
FoodSector:AddDropdown("Food Selection", PuppywareModule.Teleport.Food, PuppywareModule.Teleport.Food[1], false, function(Value)
    TeleportModule.Food = Value
end)

FoodSector:AddButton("Teleport", function()
    TeleportBuy(ToolName(TeleportModule.Food))
end)

local GunSector = TeleportTab:CreateSector("Gun Teleport", "left")
GunSector:AddDropdown("Gun Selection", PuppywareModule.Teleport.Gun, PuppywareModule.Teleport.Gun[1], false, function(Value)
    TeleportModule.Gun = Value
end)

GunSector:AddButton("Teleport", function()
    TeleportBuy(ToolName(TeleportModule.Gun))
    spawn(function()
        for i = 1, PuppywareSettings.Teleport.AmmoPurchaseAmount do
            TeleportBuy(ToolAmmo(TeleportModule.Gun))
            wait(1)
        end
    end)
end)


local ArmorSector = TeleportTab:CreateSector("Armor Teleport", "left")
ArmorSector:AddDropdown("Armor Selection", PuppywareModule.Teleport.Armor, PuppywareModule.Teleport.Armor[1], false, function(Value)
    TeleportModule.Armor = Value
end)

ArmorSector:AddButton("Teleport", function()
    TeleportBuy(ToolName(TeleportModule.Armor))
end)

local MeleeSector = TeleportTab:CreateSector("Melee Teleport", "left")
MeleeSector:AddDropdown("Melee Selection", PuppywareModule.Teleport.Melee, PuppywareModule.Teleport.Melee[1], false, function(Value)
    TeleportModule.Melee = Value
end)

MeleeSector:AddButton("Teleport", function()
    TeleportBuy(ToolName(TeleportModule.Melee))
end)

local ExtraSector = TeleportTab:CreateSector("Extra Teleport", "left")
ExtraSector:AddDropdown("Extra Selection", PuppywareModule.Teleport.Extra, PuppywareModule.Teleport.Extra[1], false, function(Value)
    TeleportModule.Extra = Value
end)

ExtraSector:AddButton("Teleport", function()
    TeleportBuy(ToolName(TeleportModule.Extra))
end)

local BikeSector = TeleportTab:CreateSector("Bike Teleport", "left")
BikeSector:AddDropdown("Bike Selection", PuppywareModule.Teleport.Bike, PuppywareModule.Teleport.Bike[1], false, function(Value)
    TeleportModule.Bike = Value
end)

BikeSector:AddButton("Teleport", function()
    TeleportBuy(ToolName(TeleportModule.Bike))
end)

local MaskSector = TeleportTab:CreateSector("Mask Teleport", "left")
MaskSector:AddDropdown("Mask Selection", PuppywareModule.Teleport.Mask, PuppywareModule.Teleport.Mask[1], false, function(Value)
    TeleportModule.Mask = Value
end)

MaskSector:AddButton("Teleport", function()
    TeleportBuy(ToolName(TeleportModule.Mask))
end)

local PhoneSector = TeleportTab:CreateSector("Phone Teleport", "left")
PhoneSector:AddDropdown("Phone Selection", PuppywareModule.Teleport.Phone, PuppywareModule.Teleport.Phone[1], false, function(Value)
    TeleportModule.Phone = Value
end)

PhoneSector:AddButton("Teleport", function()
    TeleportBuy(ToolName(TeleportModule.Phone))
end)

local WeightSector = TeleportTab:CreateSector("Weight Teleport", "left")
WeightSector:AddDropdown("Weight Selection", PuppywareModule.Teleport.Weight, PuppywareModule.Teleport.Weight[1], false, function(Value)
    TeleportModule.Weight = Value
end)

WeightSector:AddButton("Teleport", function()
    TeleportBuy(ToolName(TeleportModule.Weight))
end)

local TeleportSettings = TeleportTab:CreateSector("Teleport Settings", "right")
TeleportSettings:AddToggle("Teleport Return", false, function(State)
    PuppywareSettings.Teleport.TeleportReturn = State
end)

TeleportSettings:AddSlider("Return Delay", 0, 1, 100, 2, function(Value)
    PuppywareSettings.Teleport.ReturnDelay = Value
end)

TeleportSettings:AddToggle("Auto Purchase", false, function(State)
    PuppywareSettings.Teleport.AutoPurchase = State
end)

TeleportSettings:AddSlider("Ammo Purchase Amount", 0, 1, 100, 1, function(Value)
    PuppywareSettings.Teleport.AmmoPurchaseAmount = Value
end)

local AutoSetTab = TeleportTab:CreateSector("Auto Set", "right")
for i, v in pairs(PuppywareModule.Teleport.Armor) do
    AutoSetTab:AddToggle(v, false, function(State)
        if State then
            if not table.find(TeleportModule.AutoSet.Tools, v) then
                table.insert(TeleportModule.AutoSet.Tools, v)
            end
        else
            Remove(TeleportModule.AutoSet.Tools, v)
        end
    end)
end

for i, v in pairs(PuppywareModule.Teleport.Gun) do
    AutoSetTab:AddToggle(v, false, function(State)
        if State then
            if not table.find(TeleportModule.AutoSet.Tools, v) then
                table.insert(TeleportModule.AutoSet.Tools, v)
            end
        else
            Remove(TeleportModule.AutoSet.Tools, v)
        end
    end)
end

AutoSetTab:AddButton("Teleport", function()
    if Alive(LocalPlayer) then
        for i, v in pairs(TeleportModule.AutoSet.Tools) do
            if string.find(v:lower(), "armor") then
                if PuppywareSettings.Teleport.ArmorValueCheck and LocalPlayer.Character.BodyEffects.Armor.Value < 0 then
                    TeleportBuy(ToolName(v, true))
                else
                    TeleportBuy(ToolName(v, true))
                end
            else
                TeleportBuy(ToolName(v, true))
                spawn(function()
                    for i = 1, PuppywareSettings.Teleport.AmmoPurchaseAmount do
                        TeleportBuy(ToolAmmo(v), true)
                        wait(1)
                    end
                end)
            end
        end
    end
end)

-- Miscellaneous Window --
local MiscellaneousTab = Window:CreateTab("Miscellaneous")

LocalPlayer.CharacterAdded:Connect(function()
    wait(0.5)
    PuppywareModule.God.GodMeleeAlive = false
    if LocalPlayer.Character:FindFirstChild("BodyEffects") then
        if PuppywareModule.God.GodBullet then
            GodFunction(PuppywareModule.God.GodBullet)
            LocalPlayer.Character.BodyEffects.BreakingParts:Destroy()
        end
        if PuppywareModule.God.GodMelee then
            GodFunction(PuppywareModule.God.GodMelee)
            PuppywareModule.God.GodMeleeAlive = true
            LocalPlayer.Character.BodyEffects.Armor:Destroy()
            LocalPlayer.Character.BodyEffects.Defense:Destroy()
        end
        if PuppywareModule.God.AntiRagdoll then
            GodFunction(PuppywareModule.God.AntiRagdoll)
        end
    end
    wait(0.4)
    if PuppywareSettings.Blatant.BlatantAA.UndergroundWallbang then
        Float = Instance.new("BodyVelocity")
        Float.Parent = LocalPlayer.Character.HumanoidRootPart
        Float.MaxForce = Vector3.new(100000, 100000, 100000)
        Float.Velocity = Vector3.new(0, 0, 0)
        wait(0.10)
        LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -11.5, 0)
        Cham(LocalPlayer, true)
        PuppywareSettings.Blatant.BlatantAA.UndergroundWallbang = true
    end
    LocalPlayer.Character.Animate.idle.Animation1.AnimationId = AnimationModule[AnimationState.Idle][1]
    LocalPlayer.Character.Animate.idle.Animation2.AnimationId = AnimationModule[AnimationState.Idle][2]
    LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = AnimationModule[AnimationState.Walk][3]
    LocalPlayer.Character.Animate.run.RunAnim.AnimationId = AnimationModule[AnimationState.Run][4]
    LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = AnimationModule[AnimationState.Jump][5]
    LocalPlayer.Character.Animate.climb.ClimbAnim.AnimationId = AnimationModule[AnimationState.Climb][6]
    LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = AnimationModule[AnimationState.Fall][7]
    for i, v in pairs(AnimationState) do
        print(i, v)
    end
end)
--[[
local AnimSector = MiscellaneousTab:CreateSector("Full Animations", "left")

AnimSector:AddDropdown("Animations", AnimsName, "none", false, function(State)
    if Alive(LocalPlayer) then
        LocalPlayer.Character.Animate.idle.Animation1.AnimationId = AnimModule[State][1]
        LocalPlayer.Character.Animate.idle.Animation2.AnimationId = AnimModule[State][2]
        LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = AnimModule[State][3]
        LocalPlayer.Character.Animate.run.RunAnim.AnimationId = AnimModule[State][4]
        LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = AnimModule[State][5]
        LocalPlayer.Character.Animate.climb.ClimbAnim.AnimationId = AnimModule[State][6]
        LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = AnimModule[State][7]      --- Some fucking animation Setups
        AnimState.Idle = State
        AnimState.Walk = State
        AnimState.Run = State
        AnimState.Jump = State
        AnimState.Climb = State
        AnimState.Fall = State
    end
end)
]]
local AnimationSector = MiscellaneousTab:CreateSector("Animations", "left")
AnimationSector:AddDropdown("Idle", AnimationsName, "none", false, function(State)
    if Alive(LocalPlayer) then
        LocalPlayer.Character.Animate.idle.Animation1.AnimationId = AnimationModule[State][1]
        LocalPlayer.Character.Animate.idle.Animation2.AnimationId = AnimationModule[State][2]
        AnimationState.Idle = State
    end
end)

AnimationSector:AddDropdown("Walk", AnimationsName, "none", false, function(State)
    if Alive(LocalPlayer) then
        LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = AnimationModule[State][3]
        AnimationState.Walk = State
    end
end)

AnimationSector:AddDropdown("Run", AnimationsName, "none", false, function(State)
    if Alive(LocalPlayer) then
        LocalPlayer.Character.Animate.run.RunAnim.AnimationId = AnimationModule[State][4]
        AnimationState.Run = State
    end
end)

AnimationSector:AddDropdown("Jump", AnimationsName, "none", false, function(State)
    if Alive(LocalPlayer) then
        LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = AnimationModule[State][5]
        AnimationState.Jump = State
    end
end)

AnimationSector:AddDropdown("Climb", AnimationsName, "none", false, function(State)
    if Alive(LocalPlayer) then
        LocalPlayer.Character.Animate.climb.ClimbAnim.AnimationId = AnimationModule[State][6]
        AnimationState.Climb = State
    end
end)

AnimationSector:AddDropdown("Fall", AnimationsName, "none", false, function(State)
    if Alive(LocalPlayer) then
        LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = AnimationModule[State][7]
        AnimationState.Fall = State
    end
end)

local ServerSector = MiscellaneousTab:CreateSector("Server", "right")

ServerSector:AddButton("Rejoin", function()
    game.Players.LocalPlayer:Kick("Rejoining")
    wait(0.3)
    game:GetService('TeleportService'):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)

ServerSector:AddButton("Server Hop", function()
    game:GetService("TeleportService"):Teleport(2788229376, game:GetService("Players").LocalPlayer)
end)

ServerSector:AddButton("Anti-AFK", function(State)
    local afk = game:GetService("VirtualUser") -- AntiAfk
game:GetService("Players").LocalPlayer.Idled:connect(function()
    afk:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    afk:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)

ServerSector:AddButton("Decompile Game", function()
    Notify({
        Title = "Pw-Remake",
        Description = "Starting Decompilement, Please be patience",
        Duration = 6
    })
    saveinstance({decomptype = new})
end)

ServerSector:AddButton("Bypass Cheats (hood mod)", function()
    if game.PlaceId == 5602055394 then
        NilBody()
        Notify({
            Title = "Pw-Remake",
            Description = "Bypassed, Resetting you.",
            Duration = 4
        })
    else
        Notify({
            Title = "Pw-Remake",
            Description = "You are not in Hood Modded",
            Duration = 4
        })
        -- init, by xaxa (bypasses anti-silent aim too)
    local GetService, IsLoaded, Loaded = game.GetService, game.IsLoaded, game.Loaded; do 
        if not IsLoaded(game) then 
            Loaded.Wait(Loaded);
        end
    end
    
    -- variables
    local client, connect = GetService(game, "Players").LocalPlayer, Loaded.Connect;
    
    -- main hook
    function griefgc(Index, Value)
        if type(Value) == "function" and getfenv(Value).script and getfenv(Value).script.Name == "Camera" then 
            table.foreach(getupvalues(Value), function(Index, Value)
                if type(Value) == "table" then 
                    table.foreach(Value, function(Index, Value)
                        if type(Value) == "function" and (tostring(Index) == "DoThings" or tostring(Index) == "Alive") then 
                            hookfunction(Value, function()
                                return
                            end)
                        end
                    end)
                end
            end)
        end
    end; table.foreach(getgc(), griefgc);
    
    connect(client.CharacterAdded, function()
        table.foreach(getgc(), griefgc);
    end);
end
end)    


--[[
local RadioSector = MiscellaneousTab:CreateSector("Radio Playlist", "left")

RadioSector:AddDropdown("Playlist", {}, "", false, function()

end)

RadioSector:AddLabel("Current Song: ")

RadioSector:AddButton("Add", function()

end)

RadioSector:AddButton("Remove", function()

end)

RadioSector:AddButton("Play", function()

end)

RadioSector:AddButton("Stop", function()

end)
]]

--[[
local PanicSector = MiscellaneousTab:CreateSector("Coming Soon!", "right")

PanicSector:AddDropdown("Real Leaks", {"Da Hood Moderator", "Player Joined"}, "Da Hood Moderator", false, function()

end)

PanicSector:AddToggle("Panic Enabled", false, function()

end)
]]


-- KillInsults Section -- 
local KillInsultsSector = MiscellaneousTab:CreateSector("Kill Insults", "right")

KillInsultsSector:AddToggle("Enabled", false, function(State)
    PuppywareSettings.Miscellaneous.KillInsults.Enabled = State
end)

KillInsultsSector:AddToggle("Custom Message Enabled", false, function(State)
    PuppywareSettings.Miscellaneous.KillInsults.CustomMessage = State
end)

--[[
KillInsultsSector:AddSlider("Delay (ms)", 1, 1, 10, 1, function(Value)
    PuppywareSettings.Miscellaneous.KillInsults.Delay = Value
end)
]]

KillInsultsSector:AddDropdown("Method", {"Before Dead", "After Dead"}, "After Dead", false, function(Option)
    PuppywareSettings.Miscellaneous.KillInsults.Type = Option
end)

KillInsultsSector:AddTextbox("Custom Message", "Pw-Remake is Private idiot.", function(Text)
    PuppywareSettings.Miscellaneous.KillInsults.CustomMessageText = Text
end)

--[[
local CustomModelSector = MiscellaneousTab:CreateSector("Custom Model", "right")

CustomModelSector:AddToggle("Custom Model Enabled", false, function()

end)

CustomModelSector:AddDropdown("Models", {"Among Us", "19$ Fortnite Card"}, "Among Us", false, function()

end)

CustomModelSector:AddToggle("Edit Mode", false, function()

end)

CustomModelSector:AddSlider("Position X", 0, 0, 360, 1, function(Value)
    
end)

CustomModelSector:AddSlider("Position Y", 0, 0, 360, 1, function(Value)
    
end)

CustomModelSector:AddSlider("Position Z", 0, 0, 360, 1, function(Value)
    
end)

CustomModelSector:AddSlider("Position Rotation", 0, 0, 360, 1, function(Value)
    
end)
]]


-- Settings Window --

local SettingsTab = Window:CreateTab("Settings & Info")
local UpdateSector = SettingsTab:CreateSector("Update Logs", "right")
--[[
UpdateSector:AddLabel("30/4/22 \n-Fixed no Jumpcooldown. \n-Fixed ESP \n-Aimbot Smoothes \n 0.5 > 0.55 \n-Added Hood Mod bypasser \n (in miscellaneous)")
UpdateSector:AddLabel("17/4/22 \n-Sorry for the downtime. \n-Removed WalkSpeed \n-Added AC Bypasser \n-Added \n NoJumpCooldown")
UpdateSector:AddLabel("14/4/22 \n-Added Aimbot bind \n-Fixed Cframe Speed Type \n-Added WalkSpeed \n (not safe)\n-Added Boombox \n trasparency.")
UpdateSector:AddLabel("3/4/22 \n-Aim radius is now\nwith FOV AimbotSize \n-Removed Auto Aimbot \n Prediction (broke it) \n-Fixed Underground lay")
UpdateSector:AddLabel("31/3/22 \n-Added Aimbot Sector \n-Aimbot supports ping-based \n Prediction \n-Removed Use nearest Distance for \n Silent Aim \n-Added FOV NumSides \n-Aimbot supports FOV \n-Fixed FlySpeed Slider \n-Added WalkSpeed \n-Sorry for the downtime \n Pw-Remake should work fine.")
UpdateSector:AddLabel("30/3/22 \n-Added New Aimbot \n(Thanks to tenaki) \n-Fixed FOV for Aimbot \n-Replaced Smooth tracing \n with Aimbot Smoothness.")
UpdateSector:AddLabel("17/3/22 \n-Added Kill Insults \n(Will not work ig)")
UpdateSector:AddLabel("16/3/22 \n-Added back Antilock \n(took me time to fix)")
UpdateSector:AddLabel("15/3/22 \n-Removed Antilock \n(Broken)")
UpdateSector:AddLabel("15/3/22 \n-Added external options in \n -visuals & blatant \n -Removed killinsults \n(due to it being broken) \n-Added extra options in \nlocation \n-added external options in \nESP")
UpdateSector:AddLabel("10/3/22 \n-Added Extra features in \n Blatant (guns) \n-Fixed Headless (cs)")
UpdateSector:AddLabel("7/3/22 \n-Added some features in \n Blatant \n-Added Options for fly \n ")
UpdateSector:AddLabel("24/2/22 \n-Added Kill Insults \n-Added more local features")
UpdateSector:AddLabel("23/2/22 \n-Added fe and Cs \nkorblox and headless.")
UpdateSector:AddLabel("22/2/22 \n-Added some Ui features \n-Added character features. \n-Added More options in \n -Visuals and Blatant \n-Remove Useless features \n-Added Coming soon features")
UpdateSector:AddLabel("21/2/22 \n-Added Crosshair in \n Visuals \n-Added for local also.")
UpdateSector:AddLabel("20/2/22 \n-Added new features \n in visuals")
UpdateSector:AddLabel("18/2/22 \n-Removed A feature \nMiscellanceous. \n-Removed some useless \nfeatures.")
UpdateSector:AddLabel("17/2/22 \n-Added Few beta features \n and world.")
UpdateSector:AddLabel("16/2/22 \n-Added extra options \n for world.")
UpdateSector:AddLabel("15/2/22 \n-Added options in Visuals. \n -Added options in Local. \n -Added options in world.")
UpdateSector:AddLabel("8/2/22 \n-Improved ESP and Options")
UpdateSector:AddLabel("5/2/22 \n-Added Visuals and ESP")
UpdateSector:AddLabel("1/2/22 \n-Added some features")


local PendingSector = SettingsTab:CreateSector("Pending", "right")

PendingSector:AddLabel("Add better ESP? \nCustom Bullet color? \n-Custom Skin? \n uh what else?")
]]
if syn then
    SettingsTab:CreateConfigSystem("left")
else
    Notify({
        Title = "Pw-Remake",
        Description = "Your Executor Doesn't Support Config.",
        Duration = 3
    })
end

local WindowSection = SettingsTab:CreateSector("Ui Settings", "left")

WindowSection:AddToggle("Watermark", false, function(State)
    Watermark.Visible = State
end)

WindowSection:AddColorpicker("Accent Color", Color3.new(0.284713, 0.011764, 1), function(Color)
    Library.theme.accentcolor = (Color)
end)

local CreditSector = SettingsTab:CreateSector("Credits", "left")

CreditSector:AddLabel("Special credits to \n Tenkai, Vanis")
CreditSector:AddLabel("Credits to Loni \n all his team")

CreditSector:AddButton("Puppyware Server", function()
    Notify({
        Title = "Pw-Remake",
        Description = "Copied to clipboard!",
        Duration = 3    
    })
    setclipboard("https://discord.gg/Puppyware")
end)

CreditSector:AddButton("My Discord Server", function()
    Notify({
        Title = "Pw-Remake",
        Description = "Copied to clipboard!",
        Duration = 3
    })
    setclipboard("https://discord.gg/D83UdBWrV2")
end)


-- Init --

for _, v in next, Players:GetPlayers() do
    if v ~= LocalPlayer and v:IsFriendsWith(LocalPlayer.UserId) then
        Insert(PuppywareSettings.Aiming.Whitelist.Friends, v.Name)
    end
end

Players.PlayerAdded:Connect(function(_Player)
    if _Player ~= LocalPlayer and _Player:IsFriendsWith(LocalPlayer.UserId) then
        Insert(PuppywareSettings.Aiming.Whitelist.Friends, _Player.Name)
    end
end)

Players.PlayerRemoving:Connect(function(_Player)
    if _Player ~= LocalPlayer and _Player:IsFriendsWith(LocalPlayer.UserId) then
        Remove(PuppywareSettings.Aiming.Whitelist.Friends, _Player.Name)
    end
end)

function NoSpace(Data)
    return Data:gsub("%s+", "") or Data
end
    
function Find(Data)
    local Target = nil
    
    for i, v in next, Players:GetPlayers() do
        if v.Name ~= LocalPlayer.Name and v.Name:lower():match('^'.. NoSpace(Data):lower()) then
            Target = v.Name
        end
    end
    
    return Target
end

function Alive(Player)
    if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Head") ~= nil then
        return true
    end
    return false
end

function Knocked(Player)
    if Alive(Player) then
        if Player.Character.BodyEffects["K.O"].Value then
            return true
        end
        return false
    end
    return false
end

function Grabbing(Player)
    if Alive(Player) then
        if Player.Character:FindFirstChild("GRABBING_CONSTRAINT") then
            return true
        end
        return false
    end
    return false
end

function NearestDistance()
    local Target = nil
    local Distance = math.huge
    
    for i, v in next, Players:GetPlayers() do
        if v ~= LocalPlayer and Alive(LocalPlayer) and Alive(v) then
            local DistanceFromPlayer = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if Distance > DistanceFromPlayer then
                if (not PuppywareSettings.Aiming.Whitelist.FriendsWhitelist or not table.find(PuppywareSettings.Aiming.Whitelist.Friends, v.Name)) and (not PuppywareSettings.Aiming.Whitelist.CrewEnabled or v:FindFirstChild("DataFolder") and v.DataFolder.Information:FindFirstChild("Crew") and not tonumber(v.DataFolder.Information.Crew.Value) == tonumber(LocalPlayer.DataFolder.Information.Crew.Value)) and (not PuppywareSettings.Aiming.Whitelist.Enabled or not table.find(PuppywareSettings.Aiming.Whitelist.Players, v.Name)) then
                    Target = v
                    Distance = DistanceFromPlayer
                end
            end
        end
    end

    return Target, Distance
end

function NearestMouse()
    local Target = nil
    local Distance = math.huge

    for i, v in next, Players:GetPlayers() do
        if v ~= LocalPlayer and Alive(LocalPlayer) and Alive(v) then
            local RootPosition, RootVisible = CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local DistanceFromMouse = (Vector2.new(RootPosition.X, RootPosition.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
            if RootVisible and Distance > DistanceFromMouse then
                if (not PuppywareSettings.Aiming.Whitelist.FriendsWhitelist or not table.find(PuppywareSettings.Aiming.Whitelist.Friends, v.Name)) and (not PuppywareSettings.Aiming.Whitelist.CrewEnabled or v:FindFirstChild("DataFolder") and v.DataFolder.Information:FindFirstChild("Crew") and not tonumber(v.DataFolder.Information.Crew.Value) == tonumber(LocalPlayer.DataFolder.Information.Crew.Value)) and (not PuppywareSettings.Aiming.Whitelist.Enabled or not table.find(PuppywareSettings.Aiming.Whitelist.Players, v.Name)) then
                    Target = v
                    Distance = DistanceFromMouse
                end
            end
        end
    end

    return Target, Distance
end

function NearestType(Type)
    if Type == "Distance" then
        return NearestDistance()
    elseif Type == "Mouse" then
        return NearestMouse()
    end
end

function Jitter(Speed, Angle)
    if Alive(LocalPlayer) then
        local Jit = Speed or math.random(30, 90)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.Position) * CFrame.Angles(0, math.rad(Angle) + math.rad((math.random(1, 2) == 1 and Jit or -Jit)), 0) 
    end
end

function TableLowerFind(Table, CurrentName)
    local TableName
    for i, v in pairs(Table) do
        if string.find(CurrentName:gsub("%[", ""):gsub("%]", ""):lower(), v:lower()) then
            TableName = v
        end
    end
    return TableName
end
    
function Spin(Speed)
    if Alive(LocalPlayer) then
        LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(Speed), 0)
    end
end

function SlingShot(Speed)
    if Alive(LocalPlayer) then
        LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, math.rad(Speed), 0)
        wait(0.2)
    end
end


function TeleportBuy(Target, AutoSetDelay)
    if workspace.Ignored.Shop:FindFirstChild(Target) and Alive(LocalPlayer) then
        PuppywareModule.Old.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(0.05)
        LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Ignored.Shop[Target].Head.CFrame * CFrame.new(0, 3, 0)
        wait(0.15)
        if PuppywareSettings.Teleport.AutoPurchase then
            for i = 1, 10 do
                fireclickdetector(Workspace.Ignored.Shop[Target].ClickDetector)
            end
        end
        if PuppywareSettings.Teleport.TeleportReturn then
            wait(PuppywareSettings.Teleport.ReturnDelay)
            LocalPlayer.Character.HumanoidRootPart.CFrame = PuppywareModule.Old.CFrame  
        end
        if AutoSetDelay then
            wait(1)
        end
    end
end

function Buy(Target, Delay, LagBack)
    if workspace.Ignored.Shop:FindFirstChild(Target) and Alive(LocalPlayer) then
        PuppywareModule.Old.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(0.05)
        LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.Ignored.Shop[Target].Head.CFrame * CFrame.new(0, 3, 0)
        wait(0.15)
        for i = 1, 3 do
            fireclickdetector(Workspace.Ignored.Shop[Target].ClickDetector)
        end
        if LagBack then
            wait(1)
            LocalPlayer.Character.HumanoidRootPart.CFrame = PuppywareModule.Old.CFrame  
        end
        if Delay ~= nil then
            wait(Delay)
        end
    end
end

function Visible(OriginPart, Part)
    if Alive(LocalPlayer) then
        local IgnoreList = {CurrentCamera, LocalPlayer.Character, OriginPart.Parent}
        local Parts = CurrentCamera:GetPartsObscuringTarget({OriginPart.Position, Part.Position}, IgnoreList)
    
        for i, v in pairs(Parts) do
            if v.Transparency >= 0.3 then
                PuppywareModule.Instance[#PuppywareModule.Instance + 1] = v
            end
    
            if v.Material == Enum.Material.Glass then
                PuppywareModule.Instance[#PuppywareModule.Instance + 1] = v
            end
        end
    
        return #Parts == 0
    end
    return true
end

function ToolName(Name)
    for Check = 1, 100000 do
        if Workspace.Ignored.Shop:FindFirstChild("[" .. Name .. "] - $" .. Check) then
            return tostring("[" .. Name .. "] - $" .. Check)
        end
    end
end

function ToolAmmo(Name)
    for Check1 = 1, 250 do
        for Check2 = 1, 250 do
            if Workspace.Ignored.Shop:FindFirstChild(Check1 .. " [" .. Name .. " Ammo] - $" .. Check2) then
                return tostring(Check1 .. " [" .. Name .. " Ammo] - $" .. Check2)
            end
        end
    end
end

function Invisible()
    if Alive(LocalPlayer) then
        PuppywareModule.Old.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        print(PuppywareModule.Old.CFrame)
        wait(0.1)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 96995694596945934234234234, 0)
        wait(0.1)
        LocalPlayer.Character.LowerTorso.Root:Destroy()
        for _, v in pairs(LocalPlayer.Character:GetChildren()) do
            if v:IsA("MeshPart") and not table.find(PuppywareModule.Ignores, v.Name) then
                v:Destroy()
            end
        end
        wait(0.1)
        LocalPlayer.Character.HumanoidRootPart.CFrame = PuppywareModule.Old.CFrame
    end
end

function NilBody()
    if Alive(LocalPlayer) then
        for i, v in pairs(LocalPlayer.Character:GetChildren()) do
            if v:IsA("BasePart") or v:IsA("Part") or v:IsA("MeshPart") then
                if v.Name ~= "HumanoidRootPart" then
                    v:Destroy()
                end
            end
        end
    end
end

function ChanceTable(Table)
    local Chance = 0
    for i, v in pairs(Table) do
        Chance = Chance + v
    end
    Chance = math.random(0, Chance)
    for i, v in pairs(Table) do
        Chance = Chance - v
        if Chance <= 0 then
            return i
        end
    end	
end

function RandomTable(Table)
    local Values = 0
    for i, v in pairs(Table) do
        Values = i
    end
    
    return Table[math.random(1, Values)]
end

function Remove(Data, Data2)
    for i, v in pairs(Data) do
        if v == Data2 then
            table.remove(Data, i)
        end
    end
end

function IsVisible(GetPosition, IgnoreLists)
    return #CurrentCamera:GetPartsObscuringTarget({game.Players.LocalPlayer.Character.Head.Position, GetPosition}, IgnoreLists) == 0 and true or false
end

function GodFunction(Variable)
    LocalPlayer.Character.RagdollConstraints:Destroy()
    local Folder = Instance.new("Folder", LocalPlayer.Character)
    Folder.Name = "FULLY_LOADED_CHAR"
    wait()
    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
    Variable = false
end

function Cham(Data, State)
    local BoxVar = nil
    local GlowVar = nil
    if State then
        for _, v in pairs(Data.Character:GetChildren()) do
            if v:IsA("BasePart") and v.Transparency ~= 1 then
                if not v:FindFirstChild("Box") then
                    BoxVar = Instance.new("BoxHandleAdornment", v)
                    BoxVar.Name = "Box"
                    BoxVar.AlwaysOnTop = true
                    BoxVar.ZIndex = 4
                    BoxVar.Adornee = v
                    BoxVar.Color3 = Color3.new(0.284713, 0.011764, 1)
                    BoxVar.Transparency = 0.7
                    BoxVar.Size = v.Size + Vector3.new(0.02, 0.02, 0.02)
                end
            end
        end
    else
        for i, v in pairs(Data.Character:GetChildren()) do
            if v:IsA("BasePart") and v.Transparency ~= 1 then
                if v:FindFirstChild("Box") then
                    v["Box"]:Destroy()
                end
            end
        end
        
        return BoxVar, GlowVar
    end
end


RunService.Heartbeat:Connect(function()
    if Alive(LocalPlayer) then
        if PuppywareSettings.Blatant.Movement.SpeedEnabled and PuppywareSettings.Blatant.Movement.SpeedType == "CFrame" then
            if PuppywareSettings.Blatant.Movement.SpeedRenderType == "Default" then
                if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                    for i = 1, PuppywareSettings.Blatant.Movement.SpeedAmount do
                        LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection)
                    end
                end
            end
        end
        if PuppywareSettings.Blatant.Character.AntiStomp then
            if Knocked(LocalPlayer) then
                if PuppywareSettings.Blatant.Character.AntiStompType == "Nil Char" then
                    NilBody()
                end
                if PuppywareSettings.Blatant.Character.AntiStompType == "Show Body" then
                    pcall(function()
                        LocalPlayer.Character.Humanoid:Destroy()
                    end)
                end
            end
        end
        if getgenv().AntiLock then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                - game.Players.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().Multiplier
        end

        -- Anti bag --
        if PuppywareSettings.Blatant.Character.AntiBag then
            if LocalPlayer.Character:FindFirstChild("Christmas_Sock") then
                LocalPlayer.Character:FindFirstChild("Christmas_Sock"):Destroy()
            end
        end
        -- Anti Slow --
        if PuppywareSettings.Blatant.Character.AntiSlow2 then
            local DeletePart = game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('NoJumping') or game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('ReduceWalk') or game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('NoWalkSpeed')
            if DeletePart then DeletePart:Destroy() end
            if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then 
                game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false 
            end
        end
        -- Trash Talk --
        if PuppywareSettings.Blatant.Character.TrashTalk then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "Bad sped, sit",
                "All"
            )
            wait(1.2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "Son you bad lock",
                "All"
            )
            wait(1.2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "L = all",
                "All"
            )
            wait(1.2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "How you lose from an NN user?",
                "All"
            )
            wait(1.2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "Oh you can't resolve me?, shames on your lock",
                "All"
            )
            wait(1.2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "You need aimlock?, go and buy Pw-Remake",
                "All"
            )
        end
        --Anti Grab --
        if PuppywareSettings.Blatant.Character.AntiGrab and LocalPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT") then
            LocalPlayer.Character["GRABBING_CONSTRAINT"]:Destroy()
        end
    end
end)

RunService.Stepped:Connect(function()
    if PuppywareSettings.Blatant.BlatantAA.UndergroundWallbang then
        for i, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide == true then
                v.CanCollide = false
            end
        end
    end
end)

spawn(function()
    while wait() do
        if Alive(LocalPlayer) then
            if PuppywareSettings.Blatant.Character.AutoLettuce then     -- Auto Lettuce init --
                pcall(function()
                    Buy("[Lettuce] - $5", 0.3)
                    if LocalPlayer.Backpack:FindFirstChild("[Lettuce]") then
                        LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack["[Lettuce]"])
                    end
                    wait(0.3)
                    LocalPlayer.Character["[Lettuce]"]:Activate()
                end)
            end
            -- Auto reload Init --
            if PuppywareSettings.Blatant.Character.AutoReload then
                local Gun = LocalPlayer.Character:FindFirstChildOfClass("Tool")
                if Gun ~= nil and Gun:FindFirstChild("MaxAmmo") then
                    if Gun.Ammo.Value == 0 then
                        ReplicatedStorage.MainEvent:FireServer("Reload", Gun)
                    end
                end
            end
            -- auto Armor init --
            if PuppywareSettings.Blatant.Character.AutoArmor then
                if LocalPlayer.Character.BodyEffects.Armor.Value == 0 then
                    Buy("[High-Medium Armor] - $2300", 0.3, true)
                end
            end
            --Anti Effect --
            if PuppywareSettings.Blatant.Character.AntiEffects then
                local Particle = game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('ElectricuteParticle') or game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('FlamethrowerFireParticle')
                if Particle then Particle:Destroy()
                end
                for i,v in pairs(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
                    if v.Animation.AnimationId == 'rbxassetid://5641749824' then
                        v:Stop()
                    end
                end
            end
            -- Muscle Farm Init --
            if PuppywareSettings.Blatant.Farming.MuscleFarm then
                pcall(function()
                    if PuppywareSettings.Blatant.Farming.MuscleFarmingType == "Normal" then
                        if not LocalPlayer.Backpack:FindFirstChild("[Weights]") then
                            Buy("[Weights] - $120", 0.5)
                        end
                        if LocalPlayer.Backpack:FindFirstChild("[Weights]") then
                            LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack["[Weights]"])
                        end
                        LocalPlayer.Character["[Weights]"]:Activate()
                    end
                    if PuppywareSettings.Blatant.Farming.MuscleFarmingType == "Heavy" then
                        if not LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]") then
                            Buy("[HeavyWeights] - $250", 0.5)
                        end
                        if LocalPlayer.Backpack:FindFirstChild("[HeavyWeights]") then
                            LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack["[HeavyWeights]"])
                        end
                        LocalPlayer.Character["[HeavyWeights]"]:Activate()
                    end
                end)
            end
            -- Shoe Farm Init --
            if PuppywareSettings.Blatant.Farming.ShoeFarm then
                pcall(function()
                    for i, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                        if v.Name == "MeshPart" then
                            LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0, 2, 0)
                            local ShoeDistance = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if ShoeDistance < 25 then
                                fireclickdetector(v.ClickDetector)
                            end
                        else
                            fireclickdetector(Workspace.Ignored["Clean the shoes on the floor and come to me for cash"].ClickDetector)
                        end
                    end
                end)
            end
            -- Hospital Farm init --
            if PuppywareSettings.Blatant.Farming.HospitalFarm then
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(116, 23, -479)
                for _, v in pairs(Workspace.Ignored.HospitalJob:GetChildren()) do
                    if v.Name == "Can I get the Green bottle" then
                        fireclickdetector(v.Parent.Green.ClickDetector)
                        wait(0.5)
                        fireclickdetector(v.ClickDetector)
                    end
                    if v.Name == "Can I get the Blue bottle" then
                        fireclickdetector(v.Parent.Blue.ClickDetector)
                        wait(0.5)
                        fireclickdetector(v.ClickDetector)
                    end
                    if v.Name == "Can I get the Red bottle" then
                        fireclickdetector(v.Parent.Red.ClickDetector)
                        wait(0.5)
                        fireclickdetector(v.ClickDetector)
                    end
                end
            end
            -- Box farm Init --
            if PuppywareSettings.Blatant.Farming.BoxFarm then
                pcall(function()
                    LocalPlayer.Character.HumanoidRootPart.CFrame = Workspace.MAP.Map.ArenaBOX.PunchingBagInGame["pretty ransom"].CFrame * CFrame.new(0, -1, 3)
                    if LocalPlayer.Backpack:FindFirstChild("Combat") then
                        LocalPlayer.Backpack.Combat.Parent = LocalPlayer.Character
                    end
                end)
                mouse1click()
            end
        end
    end
end)

spawn(function()
    while wait() do
        if PuppywareSettings.Blatant.Farming.ATMFarm then       -- ATM FARM --
            for _, v in pairs(Workspace.Cashiers:GetChildren()) do
                if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    repeat
                        PuppywareSettings.Blatant.Farming.ATMPick = false
                        wait()
                        if PuppywareSettings.Blatant.Farming.ATMFarm then
                            if Alive(LocalPlayer) then
                                LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame * CFrame.new(0, -1, 2.5)
                                if LocalPlayer.Backpack:FindFirstChild("Combat") then
                                    LocalPlayer.Backpack.Combat.Parent = LocalPlayer.Character
                                end
                                --if LocalPlayer.Character:FindFirstChild("Combat") then
                                    LocalPlayer.Character["Combat"]:Activate()
                                --end
                            end
                        end
                    until v.Humanoid.Health <= 0 or not PuppywareSettings.Blatant.Farming.ATMFarm
                    pcall(function()
                        LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
                    end)
                    PuppywareSettings.Blatant.Farming.ATMPick = true
                    wait(5)
                end
            end
        end
    end
end)




RunService.RenderStepped:Connect(function()
    if Alive(LocalPlayer) then
        if PuppywareSettings.Aiming.AimingSettings.PingBasedPrediction then -- Easy ping based prediction init --
            local PingStats = GetService.Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
            local Value = tostring(PingStats)
            local PingValue = Value:split(" ")
            local PingNumber = tonumber(PingValue[1])

            if PingNumber < 130 then
                PuppywareSettings.Aiming.AimingSettings.GetVelocity = PingNumber / 1000 + 0.037
            else
                PuppywareSettings.Aiming.AimingSettings.GetVelocity = PingNumber / 1000 + 0.033
            end
        else
            PuppywareSettings.Aiming.AimingSettings.GetVelocity = 0.165
        end
        -- Auto Drop init --
        if PuppywareSettings.Blatant.Cash.AutoDrop then     
            ReplicatedStorage.MainEvent:FireServer("DropMoney", tostring(PuppywareSettings.Blatant.Cash.AutoDropAmount))
        end
        -- Auto Pickup init --
        if PuppywareSettings.Blatant.Cash.AutoPickCash then     
            pcall(function()
                for _, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                    if v.Name == "MoneyDrop" then
                        local MoneyMagnitude = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                        if MoneyMagnitude < 25 then
                            fireclickdetector(v.ClickDetector)
                        end 
                    end
                end
            end)
        end
        -- ATM pick init --
        if PuppywareSettings.Blatant.Farming.ATMPick then
            pcall(function()        
                for _, v in pairs(Workspace.Ignored.Drop:GetChildren()) do
                    if v.Name == "MoneyDrop" then
                        local MoneyMagnitude = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if MoneyMagnitude < 25 then
                            fireclickdetector(v.ClickDetector)
                        end 
                    end
                end
            end)
        end        
            -- Speed Movement (faster) --
        if PuppywareSettings.Blatant.Movement.SpeedEnabled and PuppywareSettings.Blatant.Movement.SpeedType == "CFrame" then
            if PuppywareSettings.Blatant.Movement.SpeedRenderType == "Faster" and Alive(LocalPlayer) then
                if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                    for i = 0.5, PuppywareSettings.Blatant.Movement.SpeedAmount do
                        LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection)
                    end
                end
            end
        end
            -- Speed movement (slower) --
        if PuppywareSettings.Blatant.Movement.SpeedEnabled and PuppywareSettings.Blatant.Movement.SpeedType == "CFrame" then
            if PuppywareSettings.Blatant.Movement.SpeedRenderType == "Slower" and Alive(LocalPlayer) then
                if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                    for i = 2, PuppywareSettings.Blatant.Movement.SpeedAmount do
                        LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection)
                    end
                end
            end
        end

        -- Fist reach init --
        if PuppywareSettings.Blatant.Reaching.FistReach and LocalPlayer.Character.LeftHand.Transparency ~= 1 then
            LocalPlayer.Character.LeftHand.Size = Vector3.new(45, 45, 45)
            LocalPlayer.Character.RightHand.Size = Vector3.new(45, 45, 45)
            LocalPlayer.Character.RightHand.Massless = true
            LocalPlayer.Character.LeftHand.Massless = true
            LocalPlayer.Character.RightHand.Transparency = 1
            LocalPlayer.Character.LeftHand.Transparency = 1
        end
        -- Melee Reach init --
        if PuppywareSettings.Blatant.Reaching.MeleeReach then
            local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
            if Tool ~= nil and not Tool:FindFirstChild("Ammo") and TableLowerFind(PuppywareModule.Teleport.Melee, Tool.Name) ~= nil and Tool:FindFirstChild("Handle") then
                if Tool.Handle.Transparency ~= 1 then
                    Tool.Handle.Size = Vector3.new(45, 45, 45)
                    Tool.Handle.Transparency = 1
                end
            end
        else
            local Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
            if Tool ~= nil and not Tool:FindFirstChild("Ammo") and TableLowerFind(PuppywareModule.Teleport.Melee, Tool.Name) ~= nil and Tool:FindFirstChild("Handle") then
                if Tool.Handle.Transparency == 1 then
                    if Tool.Name == "knife" then
                        Tool.Handle.Size = Vector3.new(2.19574, 0.449288, 0.102495)
                    end
                    if Tool.Name == "bat" then
                        Tool.Handle.Size = Vector3.new(0.559523, 4.68133, 0.559523)
                    end
                    if Tool.Name == "pencil" then
                        Tool.Handle.Size = Vector3.new(0.375586, 1.9, 0.375587)
                    end
                    if Tool.Name == "pitchfork" then
                        Tool.Handle.Size = Vector3.new(1.0553, 5.86135, 0.316619)
                    end
                    if Tool.Name == "shovel" then
                        Tool.Handle.Size = Vector3.new(1.68383, 5.903, 0.337731)
                    end
                    Tool.Handle.Transparency = 0
                end
            end
        end
        if PuppywareSettings.Blatant.BlatantAA.Enabled then
                if PuppywareSettings.Blatant.BlatantAA.AntiAimType == "Jitter" then     -- Jitter Init--
                    Jitter(PuppywareSettings.Blatant.BlatantAA.AntiAimSpeed, PuppywareSettings.Blatant.BlatantAA.JitterAngle)
                else
                    Spin(PuppywareSettings.Blatant.BlatantAA.AntiAimSpeed)
                end
                if PuppywareSettings.Blatant.BlatantAA.NoAutoRotate then
                    LocalPlayer.Character.Humanoid.AutoRotate = false
                else
                    LocalPlayer.Character.Humanoid.AutoRotate = true
                end
        else
            LocalPlayer.Character.Humanoid.AutoRotate = true
        end
    end
    if PuppywareSettings.Blatant.BlatantAA.SlingShot then
        SlingShot(PuppywareSettings.Blatant.BlatantAA.SlingShotHeight)
    end

    if PuppywareSettings.Blatant.Movement.BunnyHop then
        if LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall 
        then
            LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end

    if PuppywareSettings.Blatant.Movement.JumpStrafe then
        if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 and
            LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall
        then
            LocalPlayer.Character:TranslateBy(LocalPlayer.Character.Humanoid.MoveDirection / PuppywareSettings.Blatant.Movement.JumpStrafeSpeed)
        end
    end

    if PuppywareSettings.Aiming.TargetAimSettings.UnlockTargetKnocked then      -- Unlock Target Knocked init --
        if PuppywareSettings.Aiming.TargetAimSettings.Target ~= nil and Players:FindFirstChild(PuppywareSettings.Aiming.TargetAimSettings.Target) then
            if Knocked(Players:FindFirstChild(PuppywareSettings.Aiming.TargetAimSettings.Target)) then
                PuppywareSettings.Aiming.TargetAimSettings.Target = nil
            end
        end
    end
    -- FOV Init --
    if PuppywareSettings.Aiming.SilentAim.ShowFOV then
        SilentAimFOV.Visible = true
        SilentAimFOV.Radius = PuppywareSettings.Aiming.FOV.SilentAimSize
        SilentAimFOV.Filled = PuppywareSettings.Aiming.FOV.FOVFilled            -- Fill -- 
        SilentAimFOV.Transparency = PuppywareSettings.Aiming.FOV.Transparency   -- Transparency --
        SilentAimFOV.NumSides = PuppywareSettings.Aiming.FOV.NumSides    --Num Sides --      -- Silent Aim Fov Init --
        SilentAimFOV.Color = PuppywareSettings.Aiming.SilentAim.FOVColor
        SilentAimFOV.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset.Y)
    else
        SilentAimFOV.Visible = false
    end
    if PuppywareSettings.Aiming.Aimbot.Enabled then
        if PuppywareSettings.Aiming.Aimbot.ShowFOV then
            AimbotFOV.Visible = true
            AimbotFOV.Radius = PuppywareSettings.Aiming.FOV.AimbotSize
            AimbotFOV.Filled = PuppywareSettings.Aiming.FOV.FOVFilled
            AimbotFOV.Transparency = PuppywareSettings.Aiming.FOV.Transparency      -- Aimbot/AimAssist Fov Init --
            AimbotFOV.NumSides = PuppywareSettings.Aiming.FOV.NumSides
            AimbotFOV.Color = PuppywareSettings.Aiming.Aimbot.FOVColor
            AimbotFOV.Position = Vector2.new(Mouse.X, Mouse.Y + GuiInset.Y)
        else
            AimbotFOV.Visible = false
        end
    end
end)
            -- Hookatamethod --
local __namecall -- flol ;)
__namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local Args = {...}
    local Method = getnamecallmethod()

    if tostring(self.Name) == "MainEvent" and tostring(Method) == "FireServer" then
        if Args[1] == "TeleportDetect" or Args[1] == "CHECKER_1" or Args[1] == "OneMoreTime" then
            return
        end
    end

    return __namecall(self, ...)
end)
--  Target Aim Init --
local __index -- <3
__index = hookmetamethod(game, "__index", function(self, key)
    if self == Mouse and (tostring(key) == "Hit" or tostring(key) == "Target") then
        if PuppywareSettings.Aiming.TargetAim.Enabled then
            if PuppywareSettings.Aiming.TargetAim.Target ~= nil and ChanceTable(PuppywareSettings.Aiming.AimingSettings.HitChanceAmount) == "HitPercent" then
                if Players:FindFirstChild(PuppywareSettings.Aiming.TargetAim.Target) ~= nil and (not PuppywareSettings.Aiming.TargetAim.GrabbedCheck or not Grabbing(Players[PuppywareSettings.Aiming.TargetAim.Target])) and (not PuppywareSettings.Aiming.TargetAim.KnockedOutCheck or not Knocked(Players[PuppywareSettings.Aiming.TargetAim.Target])) and (not PuppywareSettings.Aiming.TargetAim.ShowFOV or PuppywareSettings.Aiming.FOV.TargetAimSize > (LocalPlayer.Character.Head.Position - Players[PuppywareSettings.Aiming.TargetAim.Target].Character.Head.Position).Magnitude) and (not PuppywareSettings.Aiming.TargetAim.WallCheck or Visible(Players[PuppywareSettings.Aiming.TargetAim.Target].Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                    local TargetPart = (Players[PuppywareSettings.Aiming.TargetAim.Target].Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and Players[PuppywareSettings.Aiming.TargetAim.Target].Character.LeftFoot or Players[PuppywareSettings.Aiming.TargetAim.Target].Character[RandomTable(PuppywareSettings.Aiming.TargetAim.Hitboxes)])
                    local Prediction = (PuppywareSettings.Aiming.TargetAimSettings.MovementPrediction and TargetPart.CFrame + (TargetPart.Velocity * PuppywareSettings.Aiming.TargetAimSettings.MovementPredictionAmount) or TargetPart.CFrame + (TargetPart.Velocity * PuppywareSettings.Aiming.AimingSettings.GetVelocity))

                    return (tostring(key) == "Hit" and Prediction or tostring(key) == "Target" and TargetPart)
                end
            end
        else    -- Silent aim shit --
            if PuppywareSettings.Aiming.SilentAim.Enabled and ChanceTable(PuppywareSettings.Aiming.AimingSettings.HitChanceAmount) == "HitPercent" then
                local NearestTarget, NearestDistance = NearestType(PuppywareSettings.Aiming.SilentAim.UseNearestDistance and "Distance" or "Mouse")
    
                if NearestTarget and (not PuppywareSettings.Aiming.SilentAim.GrabbedCheck or not Grabbing(NearestTarget)) and (not PuppywareSettings.Aiming.SilentAim.KnockedOutCheck or not Knocked(NearestTarget)) and (not PuppywareSettings.Aiming.SilentAim.ShowFOV or PuppywareSettings.Aiming.FOV.SilentAimSize > NearestDistance) and (not PuppywareSettings.Aiming.SilentAim.WallCheck or IsVisible(NearestTarget.Character.Head.Position, {NearestTarget.Character, LocalPlayer.Character, CurrentCamera}) == true) then
                    local TargetPart = (NearestTarget.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and NearestTarget.Character.LeftFoot or NearestTarget.Character[RandomTable(PuppywareSettings.Aiming.SilentAim.Hitboxes)])
                    local Prediction = (PuppywareSettings.Aiming.TargetAimSettings.MovementPrediction and TargetPart.CFrame + (TargetPart.Velocity * PuppywareSettings.Aiming.TargetAimSettings.MovementPredictionAmount) or TargetPart.CFrame + (TargetPart.Velocity * PuppywareSettings.Aiming.AimingSettings.GetVelocity))
    
                    return (tostring(key) == "Hit" and Prediction or tostring(key) == "Target" and TargetPart)
                end
            end
        end
        
    end

    return __index(self, key)
end)

while wait() do
    if PuppywareSettings.Aiming.TriggerBot.Enabled then
        for i, v in next, Players:GetPlayers() do           -- TriggerBot Init --
            if Alive(v) then 
                if Mouse.Target:IsDescendantOf(v.Character) then 
                    mouse1press()
                    wait()
                    mouse1release()
                    if PuppywareSettings.Aiming.TriggerBot.Delay then
                        wait(PuppywareSettings.Aiming.TriggerBot.DelayAmount)
                    end
                end 
            end
        end
    end
end
-- Kill Insults init--

if PuppywareSettings.Miscellaneous.KillInsults.Enabled then
    game:GetService("Workspace").Players.ChildRemoved:Connect(function(PlayerThatIsGone)
        if PlayerThatIsGone.Name == PuppywareSettings.KillInsults.OldPlayer and PuppywareSettings.Miscellaneous.KillInsults.Type == "After Dead" then
            if PuppywareSettings.Miscellaneous.KillInsults.CustomMessage then
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(PuppywareSettings.Miscellaneous.KillInsults.CustomMessageText:gsub("@s", PuppywareSettings.KillInsults.OldPlayer), "All")
            else
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(PuppywareSettings.Miscellaneous.KillInsults.Message[math.random(1, 4)]:gsub("@s", PuppywareSettings.KillInsults.OldPlayer), "All")
            end
        end
    end)
end

while wait() do
    if PuppywareSettings.Miscellaneous.KillInsults.Type == "Before Dead" and PuppywareSettings.KillInsults.OldPlayer ~= nil then
        if Players[PuppywareSettings.KillInsults.OldPlayer].Character.BodyEffects.Dead then
            if PuppywareSettings.Miscellaneous.KillInsults.CustomMessage then
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(PuppywareSettings.Miscellaneous.KillInsults.CustomMessageText:gsub("@s", PuppywareSettings.KillInsults.OldPlayer), "All")
            else
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(PuppywareSettings.Miscellaneous.KillInsults.Message[math.random(1, 4)]:gsub("@s", PuppywareSettings.KillInsults.OldPlayer), "All")
            end
        end
    end
    
    while wait(3) do
        if PuppywareSettings.KillInsults.Cooldown then
            PuppywareSettings.KillInsults.OldPlayer = ""
        end
    end
end