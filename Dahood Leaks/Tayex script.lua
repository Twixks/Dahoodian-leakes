

local NotifyLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwel33/hud/main/Notification"))()




local LocalPlayer = game.Players.LocalPlayer

local Mouse = LocalPlayer:GetMouse()

local RunService = game:GetService("RunService")

local workspace = game:GetService("Workspace")

local Light = game:GetService("Lighting")
makefolder("CONFIG")





local Yung =
loadstring(game:HttpGet("https://raw.githubusercontent.com/xwel33/meffsol-remake/main/orbit"))() -- This is not mine
local Circle2222 = Yung:New3DCircle()
local legitcolor = Color3.fromRGB(253, 150, 255)
Circle2222.Visible = false
Circle2222.ZIndex = 1
local Chingbing32 = false
local Chingbing33 = false
Circle2222.Transparency = 1
Circle2222.Color = Color3.fromRGB(255, 255, 255)
Circle2222.Thickness = 1
--
--highlight
local niggacum2 = false
local niggacumcolorxe2 = Color3.fromRGB(255, 0, 0)
local niggaculor2 = Color3.fromRGB(255, 0, 0)
local LocalHL2 = Instance.new("Highlight")
--

local aiming = {
targetaim = {
    enabled = false,
    toggablexd = false,
    targeting = false,
    view = false,
    chat = false,
    ben = false,
    airshotfunpart = "LowerTorso",
    airshotfun = false,
    teleportontarget = false,
    lookat = false,
    Notificationmode = false,
    Notificationmodepart = "Roblox",
    autoshoot = false,
    autoprediction = false,
    key = Enum.KeyCode.Q,
    prediction = 0.13,
    predictionv2 = 0.13,
    hitpart = "LowerTorso",
    hitpart2 = "LowerTorso"
},
tracers = {
    enabled = false,
    showprediction = false,
    rainbow = false,
    thickness = 1.26,
    colour = Color3.fromRGB(255, 255, 255),
    from = "Penis"
},
orbit = {
    enabled = false,
    visualization = false,
    flymode = false,
    flymodeh = 75,
    vc = Color3.fromRGB(255, 255, 255),
    speed = 20,
    distance = 10
},
visualization = {
    part = false,
    transparency = 0,
    material = "forcefield",
    circle = false,
    forcefield = false,
    forcefieldmat = "ForceField",
    forcefieldcol = Color3.fromRGB(253, 150, 255),
    mode = "Part",
    partcolour = Color3.fromRGB(255, 255, 255),
    circlecolour = Color3.fromRGB(255, 255, 255)
},
 --Memelouse#3150
fov = {
    enabled = false,
    filled = false,
    thickness = 2,
    sides = 350,
    radius = 50,
    colour = Color3.fromRGB(255, 255, 255),
    option = "Circle"
},
od = {
    unlockkoplayer = false,
    unlockko = false,
    tpko = false,
    realodko = false,
    stompko = false,
    stomptime = 3
}
}
local Meffsolset = {
    Loaded = false,
    Target = {
        UseMouseNearest = "Mouse",
        WallCheck = false,
        Grabbed = false,
        Knocked = false,
        UseOldWallCheck = false,
        UseNewWallCheck = true
    },
    TargetGui = {
        Enabled = false
    }
}

local Service =
    setmetatable(
    {},
    {
        __index = function(t, k)
            return game:GetService(k)
        end
    }
)

local RunService = Service.RunService
local Players = Service.Players
local LocalPlayer = Players.LocalPlayer
local UIs = Service.UserInputService
local TweenService = Service.TweenService
local CurrentCamera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()
local CoreGui = Service.CoreGui
local GuiInset = Service.GuiService:GetGuiInset()

if
    not pcall(
        function()
            return syn.protect_gui
        end
    )
 then
    syn = {}
    syn.protect_gui = function(gui)
        gui.Parent = CoreGui
    end
end
--Memelouse#3150
local MainGui = Instance.new("ScreenGui")
MainGui.Name = "VaultsUI"
MainGui.Parent = CoreGui
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
syn.protect_gui(MainGui)

local DrawingFunctions = {
    NewLine = function(Thickness)
        local Line = Drawing.new("Line")
        Line.Visible = true
        Line.Color = Color3.fromRGB(253, 150, 255)
        Line.Thickness = 1
        Line.Transparency = 1
        Line.ZIndex = 2

        local OutLine = Drawing.new("Line")
        OutLine.Visible = false
        OutLine.Color = Color3.fromRGB(0, 0, 0)
        OutLine.Thickness = 4
        OutLine.Transparency = 1
        OutLine.ZIndex = 1
        return Line, OutLine
    end,
    NewCircle = function()
        local Circle = Drawing.new("Circle")
        Circle.Transparency = 1
        Circle.Thickness = 1
        Circle.ZIndex = 2
        Circle.Visible = false
        Circle.Color = Color3.fromRGB(253, 150, 255)
        Circle.NumSides = 100

        local OutLine = Drawing.new("Circle")
        OutLine.Visible = false
        OutLine.Color = Color3.fromRGB(0, 0, 0)
        OutLine.Transparency = 1
        OutLine.Thickness = 4
        OutLine.ZIndex = 1
        OutLine.NumSides = 100
        return Circle, OutLine
    end
}

local DrawingCircle, OutlineDrawingCircle = DrawingFunctions.NewCircle(1)

local IsNetwork = function(GetPlayer)
    return GetPlayer and GetPlayer.Character and
        GetPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and
        GetPlayer.Character:FindFirstChild("Humanoid") ~= nil and
        GetPlayer.Character:FindFirstChild("Head") ~= nil and
        true or
        false
end

local Meffsolset2 = {
    Round = function(num, numDecimalPlaces)
        return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
    end
}

local TargetUI = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Container_2 = Instance.new("Frame")
local Line_2 = Instance.new("Frame")
local Profile = Instance.new("ImageButton")
local HealthBorder = Instance.new("Frame")
local HealthBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local HealthText = Instance.new("TextLabel")
local HealthIcon = Instance.new("ImageButton")
local Title_2 = Instance.new("TextLabel")
local ArmorBorder = Instance.new("Frame")
local ArmorBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ArmorText = Instance.new("TextLabel")
local ArmorIcon = Instance.new("ImageButton")
local UmbraShadow_2 = Instance.new("ImageLabel")
local AmbientShadow_2 = Instance.new("ImageLabel")

TargetUI.Name = "Target UI"
TargetUI.Parent = MainGui
TargetUI.AnchorPoint = Vector2.new(0.5, 0.5)
TargetUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TargetUI.BackgroundTransparency = 0.700
TargetUI.BorderSizePixel = 0
TargetUI.Position = UDim2.new(0.504575729, 0, 0.787337661, 0)
TargetUI.Size = UDim2.new(0, 251, 0, 97)
TargetUI.Visible = false

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = TargetUI

Container_2.Name = "Container"
Container_2.Parent = TargetUI
Container_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Container_2.BackgroundTransparency = 0.700
Container_2.BorderSizePixel = 0
Container_2.Position = UDim2.new(0.00973401312, 0, 0.027855942, 0)
Container_2.Size = UDim2.new(0, 248, 0, 94)

Line_2.Name = "Line"
Line_2.Parent = Container_2
Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line_2.BorderSizePixel = 0
Line_2.Position = UDim2.new(-0.00261220615, 0, -0.00655640941, 0)
Line_2.Size = UDim2.new(0, 249, 0, 3)

Profile.Name = "Profile"
Profile.Parent = Container_2
Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Profile.BackgroundTransparency = 1.000
Profile.Position = UDim2.new(-0.00427350448, 0, 0.0338983051, 0)
Profile.Size = UDim2.new(0, 90, 0, 90)
Profile.AutoButtonColor = false
Profile.Image = "rbxthumb://type=AvatarHeadShot&id=590180069&w=420&h=420"

HealthBorder.Name = "HealthBorder"
HealthBorder.Parent = Container_2
HealthBorder.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
HealthBorder.BackgroundTransparency = 0.500
HealthBorder.BorderSizePixel = 0
HealthBorder.Position = UDim2.new(0.400000006, 0, 0.349999994, 0)
HealthBorder.Size = UDim2.new(0, 135, 0, 22)

HealthBar.Name = "HealthBar"
HealthBar.Parent = HealthBorder
HealthBar.Active = true
HealthBar.BackgroundColor3 = Color3.fromRGB(7, 215, 0)
HealthBar.BorderSizePixel = 0
HealthBar.ClipsDescendants = true
HealthBar.Position = UDim2.new(0.0220597833, 0, -0.0436026901, 0)
HealthBar.Size = UDim2.new(1, 0, 1, 0)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = HealthBar

HealthText.Name = "HealthText"
HealthText.Parent = HealthBorder
HealthText.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
HealthText.BackgroundTransparency = 1.000
HealthText.Size = UDim2.new(0, 138, 0, 22)
HealthText.Font = Enum.Font.Roboto
HealthText.Text = "100"
HealthText.TextColor3 = Color3.fromRGB(255, 255, 255)
HealthText.TextSize = 20.000

HealthIcon.Name = "HealthIcon"
HealthIcon.Parent = HealthBorder
HealthIcon.BackgroundTransparency = 1.000
HealthIcon.Position = UDim2.new(0.0900000036, 0, 0.119999997, 0)
HealthIcon.Size = UDim2.new(0, 15, 0, 15)
HealthIcon.ZIndex = 2
HealthIcon.Image = "rbxassetid://3926305904"
HealthIcon.ImageRectOffset = Vector2.new(964, 444)
HealthIcon.ImageRectSize = Vector2.new(36, 36)

Title_2.Name = "Title"
Title_2.Parent = Container_2
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0.426879644, 0, 0.0496608652, 0)
Title_2.Size = UDim2.new(0, 132, 0, 25)
Title_2.Font = Enum.Font.Roboto
Title_2.Text = "T_4Q (WetAnimeGirls)"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 20.000
Title_2.TextWrapped = true
Title_2.TextXAlignment = Enum.TextXAlignment.Left

ArmorBorder.Name = "ArmorBorder"
ArmorBorder.Parent = Container_2
ArmorBorder.BackgroundColor3 = Color3.fromRGB(255,255,255)
ArmorBorder.BackgroundTransparency = 0.500
ArmorBorder.BorderSizePixel = 0
ArmorBorder.Position = UDim2.new(0.400000006, 0, 0.649999976, 0)
ArmorBorder.Size = UDim2.new(0, 135, 0, 22)

ArmorBar.Name = "ArmorBar"
ArmorBar.Parent = ArmorBorder
ArmorBar.BackgroundColor3 = Color3.fromRGB(82,151,255)
ArmorBar.BorderSizePixel = 0
ArmorBar.Position = UDim2.new(0.0220597833, 0, -0.0436026901, 0)
ArmorBar.Size = UDim2.new(1, 0, 1, 0)

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = ArmorBar

ArmorText.Name = "ArmorText"
ArmorText.Parent = ArmorBorder
ArmorText.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
ArmorText.BackgroundTransparency = 1.000
ArmorText.Size = UDim2.new(0, 138, 0, 21)
ArmorText.Font = Enum.Font.Roboto
ArmorText.Text = "100"
ArmorText.TextColor3 = Color3.fromRGB(255, 255, 255)
ArmorText.TextSize = 20.000

ArmorIcon.Name = "ArmorIcon"
ArmorIcon.Parent = ArmorBorder
ArmorIcon.BackgroundTransparency = 1.000
ArmorIcon.Position = UDim2.new(0.0900000036, 0, 0.119999997, 0)
ArmorIcon.Size = UDim2.new(0, 15, 0, 15)
ArmorIcon.ZIndex = 2
ArmorIcon.Image = "rbxassetid://3926307971"
ArmorIcon.ImageRectOffset = Vector2.new(164, 284)
ArmorIcon.ImageRectSize = Vector2.new(36, 36)
--Memelouse#3150
UmbraShadow_2.Name = "UmbraShadow"
UmbraShadow_2.Parent = TargetUI
UmbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
UmbraShadow_2.BackgroundTransparency = 1.000
UmbraShadow_2.BorderSizePixel = 0
UmbraShadow_2.Position = UDim2.new(0.5, 0, 0.5, 6)
UmbraShadow_2.Size = UDim2.new(1, 10, 1, 10)
UmbraShadow_2.ZIndex = 0
UmbraShadow_2.Image = "rbxassetid://1316045217"
UmbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
UmbraShadow_2.ImageTransparency = 0.850
UmbraShadow_2.ScaleType = Enum.ScaleType.Slice
UmbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

AmbientShadow_2.Name = "AmbientShadow"
AmbientShadow_2.Parent = TargetUI
AmbientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
AmbientShadow_2.BackgroundTransparency = 1.000
AmbientShadow_2.BorderSizePixel = 0
AmbientShadow_2.Position = UDim2.new(0.5, 0, 0.476000011, 3)
AmbientShadow_2.Size = UDim2.new(1, 5, 1, 5)
AmbientShadow_2.ZIndex = 0
AmbientShadow_2.Image = "rbxassetid://1316045217"
AmbientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
AmbientShadow_2.ImageTransparency = 0.500
AmbientShadow_2.ScaleType = Enum.ScaleType.Slice
AmbientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)
getgenv().OldAimPart = "HumanoidRootPart"
getgenv().AimPart = "HumanoidRootPart"
getgenv().Airshotpart = "HumanoidRootPart"
getgenv().AimRadius = 30
getgenv().ThirdPerson = true
getgenv().FirstPerson = true
getgenv().Velocityres2 = false
getgenv().TeamCheck = false
getgenv().keybind = "q"
getgenv().PredictMovement = false
getgenv().PredictionVelocity = 12.29
getgenv().CheckIfJumped = true
getgenv().Smoothness = false
getgenv().WallCheck = false
getgenv().SmoothnessAmount = 0.05
getgenv().Notificationmode = false
getgenv().Notificationmodepart = "Roblox"
getgenv().Disableontargetdeath = false
getgenv().Disableonplayerdeath = false

getgenv().Visual = {
    Thickness = 3.4,
    Transparency = 1,
    Color = Color3.fromRGB(0, 255, 0),
    FOV = false,
    LINE = false
}
--Memelouse#3150

local CurrentCamera = game:GetService("Workspace").CurrentCamera
local Inset = game:GetService("GuiService"):GetGuiInset().Y
local Mouse = game.Players.LocalPlayer:GetMouse()
local Line = Drawing.new("Line")
local Circle = Drawing.new("Circle")

local CurrentCamera = game:GetService "Workspace".CurrentCamera
local services =
    setmetatable(
    {},
    {
        __index = function(t, k)
            return game:GetService(k)
        end
    }
)
local Players = services.Players
local Uisf = services.UserInputService
local Workgalaxy = services.Workspace
local RService = services.RunService
local SGui = services.StarterGui
local Inset2 = game:GetService("GuiService"):GetGuiInset().Y

local mousef = game.Players.LocalPlayer:GetMouse()
local Clientuser = Players.LocalPlayer
local runshit = game:GetService("RunService")
local localnigger = game.Players.LocalPlayer
local Line2 = Drawing.new("Line")

local camgay = Workspace.CurrentCamera

local CF = CFrame.new
local RNew = Ray.new
local Vec3 = Vector3.new
local Vec2 = Vector2.new

local Aimlock, MousePressed, CanNotify = false, false, false
local AimlockTarget, OldPre

--Memelouse#3150

local Target, PartMode, Partz, NotifMode, PredictionF

getgenv().GetObscuringObjects = function(T)
    if T and T:FindFirstChild(AimPart) and Clientuser and Clientuser.Character:FindFirstChild("Head") then
        local RayPos =
            workspace:FindPartOnRay(RNew(T[AimPart].Position, Clientuser.Character.Head.Position))
        if RayPos then
            return RayPos:IsDescendantOf(T)
        end
    end
end

local GetNearestTarget = function()
    local plr1g2 = nil
    local distance = 99999

    for i, v in next, Players:GetPlayers() do
        if v.Name ~= Clientuser.Name then
            --if v.Character and v.Team ~= Clientuser.Team then
            if v.Character then
                local pos, aaaa = camgay:WorldToViewportPoint(v.Character.Head.Position)
                local mouse = Uisf:GetMouseLocation()
                local magnitude = (Vec2(pos.X, pos.Y) - Vec2(mousef.X, mousef.Y)).magnitude

                if aaaa and (magnitude < distance) then
                    plr1g2 = v
                    distance = magnitude
                end
            end
        end
    end

    return plr1g2
end
 --Memelouse#3150

mousef.KeyDown:Connect(
    function(k)
        if k ~= keybind then
            return
        end
        if Aimlock and AimlockTarget == nil then
            if MousePressed ~= true then
                MousePressed = true
            end
            local Target
            Target = GetNearestTarget()
            if Target ~= nil then
                AimlockTarget = Target
                if getgenv().Notificationmode and getgenv().Notificationmodepart == "Roblox" then
                    game.StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "NOShot.tm",
                            Text = "Locked: " .. AimlockTarget.DisplayName,
                            Icon = "rbxthumb://type=AvatarHeadShot&id=" ..
                                AimlockTarget.UserId .. "&w=420&h=420",
                            Duration = 1
                        }
                    )
                end
                if aiming.targetaim.ben == true then
                    local benlocked = Instance.new("Sound")
                    benlocked.Name = "e"
                    benlocked.Volume = aiming.targetaim.benvolume
                    benlocked.SoundId = "rbxassetid://6518811702"
                    benlocked.Parent = game:GetService("SoundService")
                    benlocked.Playing = true
                end
                if getgenv().Notificationmode and getgenv().Notificationmodepart == "Meff" then
                    NotifyLib.prompt("NoShot.TM ♠", "Locked: " .. AimlockTarget.DisplayName, 0)
                end
            end
        else
            if AimlockTarget ~= nil then
                AimlockTarget = nil
            end
            if MousePressed ~= false then
                MousePressed = false
                if getgenv().Notificationmode and getgenv().Notificationmodepart == "Roblox" then
                    game.StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "NoShot.TM",
                            Text = "Unlocked",
                            Icon = "",
                            Duration = 1
                        }
                    )
                end
                if niggacum2 then
                    LocalHL2.Parent = game.CoreGui
                end
                if aiming.targetaim.ben == true then
                    local benlocked = Instance.new("Sound")
                    benlocked.Name = "e"
                    benlocked.Volume = aiming.targetaim.benvolume
                    benlocked.SoundId = "rbxassetid://6518811702"
                    benlocked.Parent = game:GetService("SoundService")
                    benlocked.Playing = true
                end
                if getgenv().Notificationmode and getgenv().Notificationmodepart == "Meff" then
                    NotifyLib.prompt("♠", "Unlocked", 0)
                end
                Line2.Visible = false
            end
        end
    end
)
 --Memelouse#3150

RService.RenderStepped:Connect(
    function()
        if ThirdPerson == true and FirstPerson == true then
            if WallCheck == true and not GetObscuringObjects(AimlockTarget) then
                if
                    (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude > 1 or
                        (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude <= 1
                 then
                    CanNotify = true
                else
                    CanNotify = false
                end
            elseif ThirdPerson == true and FirstPerson == false then
                if (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude > 1 then
                    CanNotify = true
                else
                    CanNotify = false
                end
            elseif ThirdPerson == false and FirstPerson == true then
                if (camgay.Focus.p - camgay.CoordinateFrame.p).Magnitude <= 1 then
                    CanNotify = true
                else
                    CanNotify = false
                end
            end
            if Aimlock == true and MousePressed == true then
                if AimlockTarget then
                    if aiming.od.unlockko == true and AimlockTarget.Character.Humanoid.health < 1 then
                        CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                        AimlockTarget = nil
                        if niggacum2 then
                            LocalHL2.Parent = game.CoreGui
                        end
                        if Line.Visible == true or Circle.Visible == true then
                            Line.Visible = false
                            Circle.Visible = false
                        end
                    end
                end
            end
             --Memelouse#3150
            if Aimlock == true and MousePressed == true then
                if AimlockTarget then
                    if aiming.od.tpko == true and AimlockTarget.Character.Humanoid.health < 1 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            AimlockTarget.Character.LowerTorso.CFrame
                    end
                end
            end
            if Aimlock == true and MousePressed == true then
                if AimlockTarget then
                    if aiming.od.realodko == true and AimlockTarget.Character.Humanoid.health < 1 then
                        if AimlockTarget.Character.Humanoid.health < 1 then
                            game:GetService("ReplicatedStorage").MainEvent:FireServer(
                                "Reload",
                                game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA(
                                    "Tool"
                                )
                            )
                        end
                    end
                end
            end
            if
                aiming.od.unlockkoplayer == true and game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                    game.Players.LocalPlayer.Character.Humanoid.health < 1
             then
                CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                AimlockTarget = nil
                if niggacum2 then
                    LocalHL2.Parent = game.CoreGui
                end
                if Line.Visible == true or Circle.Visible == true then
                    Line.Visible = false
                    Circle.Visible = false
                end
            end
            if Aimlock == true and MousePressed == true then
                if AimlockTarget then
                    if
                        Line.Visible == true or
                            Circle.Visible == true and AimlockTarget.Character.Humanoid.health < 1
                     then
                        Line.Visible = false
                        Circle.Visible = false
                    end
                end
            end
            if Aimlock == true and MousePressed == true then
                if
                    niggacum2 and AimlockTarget and game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                 then
                    LocalHL2.Parent = AimlockTarget.Character
                    LocalHL2.FillColor = niggaculor2
                    LocalHL2.OutlineColor = niggacumcolorxe2
                end
            end
            if
                Aimlock == true and MousePressed == true and game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
             then
                if AimlockTarget then
                    local Vector =
                        CurrentCamera:WorldToViewportPoint(
                        AimlockTarget.Character[getgenv().AimPart].Position +
                            (AimlockTarget.Character[getgenv().AimPart].Velocity *
                                getgenv().PredictionVelocity)
                    )
                    Line.Color = getgenv().Visual.Color
                    Line.Transparency = getgenv().Visual.Transparency
                    Line.Thickness = getgenv().Visual.Thickness
                    Line.Visible = getgenv().Visual.LINE
                    Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset)
                    Line.To = Vector2.new(Vector.X, Vector.Y)
                    Line.Visible = getgenv().Visual.LINE
                    Circle.Position = Vector2.new(Mouse.X, Mouse.Y + Inset)
                    Circle.Visible = getgenv().Visual.FOV
                    Circle.Thickness = 1.5
                    Circle.Thickness = 2
                    Circle.Radius = 60
                    Circle.Color = getgenv().Visual.Color
                end
            else
                Line.Visible = false
                Circle.Visible = false
            end
             --Memelouse#3150
            if Aimlock == true and MousePressed == true then
                if
                    AimlockTarget and AimlockTarget.Character and
                        AimlockTarget.Character:FindFirstChild(AimPart)
                 then
                    if FirstPerson == true then
                        if CanNotify == true then
                            if PredictMovement == true then
                                if Smoothness == true then
                                    local Main =
                                        CF(
                                        camgay.CFrame.p,
                                        AimlockTarget.Character[AimPart].Position +
                                            AimlockTarget.Character[AimPart].Velocity *
                                                PredictionVelocity
                                    )

                                    camgay.CFrame =
                                        camgay.CFrame:Lerp(
                                        Main,
                                        SmoothnessAmount,
                                        Enum.EasingStyle.Elastic,
                                        Enum.EasingDirection.InOut
                                    )
                                else
                                    camgay.CFrame =
                                        CF(
                                        camgay.CFrame.p,
                                        AimlockTarget.Character[AimPart].Position +
                                            AimlockTarget.Character[AimPart].Velocity *
                                                PredictionVelocity
                                    )
                                end
                            elseif PredictMovement == false then
                                if Smoothness == true then
                                    local Main =
                                        CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)

                                    camgay.CFrame =
                                        camgay.CFrame:Lerp(
                                        Main,
                                        SmoothnessAmount,
                                        Enum.EasingStyle.Elastic,
                                        Enum.EasingDirection.InOut
                                    )
                                else
                                    camgay.CFrame =
                                        CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)
                                end
                            end
                        end

                        if PredictMovement == true then
                            if Smoothness == true then
                                local Main =
                                    CF(
                                    camgay.CFrame.p,
                                    AimlockTarget.Character[AimPart].Position +
                                        AimlockTarget.Character[AimPart].Velocity * PredictionVelocity
                                )

                                camgay.CFrame =
                                    camgay.CFrame:Lerp(
                                    Main,
                                    SmoothnessAmount,
                                    Enum.EasingStyle.Elastic,
                                    Enum.EasingDirection.InOut
                                )
                            else
                                camgay.CFrame =
                                    CF(
                                    camgay.CFrame.p,
                                    AimlockTarget.Character[AimPart].Position +
                                        AimlockTarget.Character[AimPart].Velocity * PredictionVelocity
                                )
                            end
                        elseif PredictMovement == false then
                            if Smoothness == true then
                                local Main =
                                    CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)

                                camgay.CFrame =
                                    camgay.CFrame:Lerp(
                                    Main,
                                    SmoothnessAmount,
                                    Enum.EasingStyle.Elastic,
                                    Enum.EasingDirection.InOut
                                )
                            else
                                camgay.CFrame =
                                    CF(camgay.CFrame.p, AimlockTarget.Character[AimPart].Position)
                            end
                        end
                    end
                end
            end
        end
        if aiming.visualization.forcefield and AimlockTarget then
            AimlockTarget.Character.LeftHand.Material = "ForceField"
            AimlockTarget.Character.RightHand.Material = "ForceField"
            AimlockTarget.Character.LeftLowerArm.Material = "ForceField"
            AimlockTarget.Character.RightLowerArm.Material = "ForceField"
            AimlockTarget.Character.LeftUpperArm.Material = "ForceField"
            AimlockTarget.Character.RightUpperArm.Material = "ForceField"
            AimlockTarget.Character.LeftFoot.Material = "ForceField"
            AimlockTarget.Character.RightFoot.Material = "ForceField"
            AimlockTarget.Character.LeftLowerLeg.Material = "ForceField"
            AimlockTarget.Character.RightLowerLeg.Material = "ForceField"
            AimlockTarget.Character.UpperTorso.Material = "ForceField"
            AimlockTarget.Character.LowerTorso.Material = "ForceField"
            AimlockTarget.Character.LeftUpperLeg.Material = "ForceField"
            AimlockTarget.Character.RightUpperLeg.Material = "ForceField"
            AimlockTarget.Character.Head.Material = "ForceField"
            _G.colorbody111 = AimlockTarget.Character.LeftHand.Color
            _G.colorbody112 = AimlockTarget.Character.RightHand.Color
            _G.colorbody21 = AimlockTarget.Character.LeftLowerArm.Color
            _G.colorbody31 = AimlockTarget.Character.RightLowerArm.Color
            _G.colorbody41 = AimlockTarget.Character.LeftUpperArm.Color
            _G.colorbody51 = AimlockTarget.Character.RightUpperArm.Color
            _G.colorbody61 = AimlockTarget.Character.LeftFoot.Color
            _G.colorbody71 = AimlockTarget.Character.RightFoot.Color
            _G.colorbody81 = AimlockTarget.Character.LeftLowerLeg.Color
            _G.colorbody91 = AimlockTarget.Character.RightLowerLeg.Color
            _G.colorbody101 = AimlockTarget.Character.UpperTorso.Color
            _G.colorbody111 = AimlockTarget.Character.LowerTorso.Color
            _G.colorbody121 = AimlockTarget.Character.LeftUpperLeg.Color
            _G.colorbody131 = AimlockTarget.Character.RightUpperLeg.Color
            _G.colorbody141 = AimlockTarget.Character.Head.Color
            AimlockTarget.Character.LeftHand.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.RightHand.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.LeftLowerArm.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.RightLowerArm.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.LeftUpperArm.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.RightUpperArm.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.LeftFoot.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.RightFoot.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.LeftLowerLeg.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.RightLowerLeg.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.UpperTorso.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.LowerTorso.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.LeftUpperLeg.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.RightUpperLeg.Color = aiming.visualization.forcefieldcol
            AimlockTarget.Character.Head.Color = aiming.visualization.forcefieldcol
        end

        if getgenv().CheckIfJumped == true then
            if
                AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air and
                    AimlockTarget.Character.Humanoid.Jump == true
             then
                getgenv().AimPart = getgenv().Airshotpart
            else
                getgenv().AimPart = getgenv().OldAimPart
            end
        end
    end
)

game:GetService("RunService").heartbeat:Connect(
    function()
        if aiming.visualization.forcefield and AimlockTarget ~= nil then
            AimlockTarget.Character.LeftHand.Material = "Plastic"
            AimlockTarget.Character.RightHand.Material = "Plastic"
            AimlockTarget.Character.LeftLowerArm.Material = "Plastic"
            AimlockTarget.Character.RightLowerArm.Material = "Plastic"
            AimlockTarget.Character.LeftUpperArm.Material = "Plastic"
            AimlockTarget.Character.RightUpperArm.Material = "Plastic"
            AimlockTarget.Character.LeftFoot.Material = "Plastic"
            AimlockTarget.Character.RightFoot.Material = "Plastic"
            AimlockTarget.Character.LeftLowerLeg.Material = "Plastic"
            AimlockTarget.Character.RightLowerLeg.Material = "Plastic"
            AimlockTarget.Character.UpperTorso.Material = "Plastic"
            AimlockTarget.Character.LowerTorso.Material = "Plastic"
            AimlockTarget.Character.LeftUpperLeg.Material = "Plastic"
            AimlockTarget.Character.RightUpperLeg.Material = "Plastic"
            AimlockTarget.Character.Head.Material = "Plastic"
            AimlockTarget.Character.LeftHand.Color = _G.colorbody111
            AimlockTarget.Character.RightHand.Color = _G.colorbody112
            AimlockTarget.Character.LeftLowerArm.Color = _G.colorbody21
            AimlockTarget.Character.RightLowerArm.Color = _G.colorbody31
            AimlockTarget.Character.LeftUpperArm.Color = _G.colorbody41
            AimlockTarget.Character.RightUpperArm.Color = _G.colorbody51
            AimlockTarget.Character.LeftFoot.Color = _G.colorbody61
            AimlockTarget.Character.RightFoot.Color = _G.colorbody71
            AimlockTarget.Character.LeftLowerLeg.Color = _G.colorbody81
            AimlockTarget.Character.RightLowerLeg.Color = _G.colorbody91
            AimlockTarget.Character.UpperTorso.Color = _G.colorbody101
            AimlockTarget.Character.LowerTorso.Color = _G.colorbody111
            AimlockTarget.Character.LeftUpperLeg.Color = _G.colorbody121
            AimlockTarget.Character.RightUpperLeg.Color = _G.colorbody131
            AimlockTarget.Character.Head.Color = _G.colorbody141
        end
    end
)









local CurrentCamera = game:GetService("Workspace").CurrentCamera
local LocalMouse = game.Players.LocalPlayer:GetMouse()

local circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255, 255, 255)
circle.Thickness = 2
circle.NumSides = 350
circle.Transparency = 0.6
circle.Radius = 70
circle.Visible = false
circle.Filled = false

local circlev = Drawing.new("Circle")
circlev.Color = legitcolor
circlev.Thickness = 2
circlev.NumSides = 350
circlev.Transparency = 0.6
circlev.Radius = 50
circlev.Visible = false
 --Memelouse#3150
circlev.Filled = false

local circlev2 = Drawing.new("Circle")
circlev2.Color = legitcolor
circlev2.Thickness = 4
circlev2.NumSides = 3
circlev2.Transparency = 0.6
circlev2.Radius = 50
circlev2.Visible = false
circlev2.Filled = false

local line = Drawing.new("Line")
line.Visible = false
line.From = Vector2.new(0, 0)
line.To = Vector2.new(200, 200)
_G.SpecterL = Color3.fromRGB(253, 150, 255)
line.Color = _G.SpecterL
line.Thickness = 1.26
line.Transparency = 1.

-- not mine lol
function getClosestPlayerToCursor()
    local ClosestDistance, ClosestPlayer = math.huge, nil
    for _, Player in next, game:GetService("Players"):GetPlayers() do
        local ISNTKNOCKED = Player.Character:FindFirstChild("BodyEffects")["K.O"].Value ~= true
        local ISNTGRABBED = Player.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil

        if Player ~= game.Players.LocalPlayer then
            local Character = Player.Character
            if Character and Character.Humanoid.Health > 1 and ISNTKNOCKED and ISNTGRABBED then
                local Position, IsVisibleOnViewPort =
                    CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                if IsVisibleOnViewPort then
                    local Distance =
                        (Vector2.new(LocalMouse.X, LocalMouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude
                    if Distance < ClosestDistance then
                        ClosestPlayer = Player
                        ClosestDistance = Distance
                    end
                end
            end
        end
    end
    return ClosestPlayer, ClosestDistance
end

game:GetService("UserInputService").InputBegan:Connect(
    function(keyinput, stupid)
        if keyinput.KeyCode == aiming.targetaim.key then
            if aiming.targetaim.enabled then
                aiming.targetaim.targeting = not aiming.targetaim.targeting
                if aiming.targetaim.targeting then
                    target = getClosestPlayerToCursor()
                    targetplr = tostring(target)
                    localtargetplr = game.Players[targetplr]

                    if aiming.targetaim.chat == true then
                        local args = {
                            [1] = "Targeting " .. tostring(targetplr),
                            [2] = "All"
                        }

                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            unpack(args)
                        )
                    end

                    if
                        aiming.targetaim.Notificationmode == true and
                            aiming.targetaim.Notificationmodepart == "Roblox"
                     then
                        game.StarterGui:SetCore(
                            "SendNotification",
                            {
                                Title = "NoShot.Tm",
                                Text = "Locked : " .. tostring(targetplr),
                                Icon = "rbxthumb://type=AvatarHeadShot&id=" ..
                                    game.Players[targetplr].UserId .. "&w=420&h=420",
                                Duration = 1
                            }
                        )
                    end
                    if
                        aiming.targetaim.Notificationmode == true and
                            aiming.targetaim.Notificationmodepart == "Meff"
                     then
                        NotifyLib.prompt("♠", "Locked: " .. tostring(targetplr), 0)
                    end
                    if aiming.targetaim.toggablexd == false then
                        aiming.targetaim.toggablexd = true
                    end
                    if aiming.targetaim.view == true then
                        if game.Players[targetplr].Character:FindFirstChild("Humanoid") then
                            CurrentCamera.CameraSubject = game.Players[targetplr].Character.Humanoid
                        end
                    end

                    if aiming.targetaim.ben == true then
                        local benlocked = Instance.new("Sound")
                        benlocked.Name = "e"
                        benlocked.Volume = aiming.targetaim.benvolume
                        benlocked.SoundId = "rbxassetid://6518811702"
                        benlocked.Parent = game:GetService("SoundService")
                        benlocked.Playing = true
                    end
                    if aiming.targetaim.airshotfun == true then
                        if
                            game.Players[targetplr].Character.Humanoid.FloorMaterial ==
                                Enum.Material.Air and
                                game.Players[targetplr].Character.Humanoid.Jump == true
                         then
                            aiming.targetaim.hitpart = aiming.targetaim.airshotfunpart
                        else
                            aiming.targetaim.hitpart = aiming.targetaim.hitpart2
                        end
                    end
                    if niggacum2 == true and targetplr then
                        LocalHL2.Parent = game.Players[targetplr].Character
                        LocalHL2.FillColor = niggaculor2
                        LocalHL2.OutlineColor = niggacumcolorxe2
                    else
                        LocalHL2.Parent = game.CoreGui
                    end
                    if aiming.targetaim.teleportontarget == true then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(
                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.X,
                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.Y,
                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.Z
                        )
                    end
                    if aiming.visualization.forcefield == true then
                        local humanoid = game:GetService("Players")[targetplr].Character.Humanoid

                        if humanoid.RigType == Enum.HumanoidRigType.R15 then
                            game.Players[targetplr].Character.LeftHand.Material = "ForceField"
                            game.Players[targetplr].Character.RightHand.Material = "ForceField"
                            game.Players[targetplr].Character.LeftLowerArm.Material = "ForceField"
                            game.Players[targetplr].Character.RightLowerArm.Material = "ForceField"
                            game.Players[targetplr].Character.LeftUpperArm.Material = "ForceField"
                            game.Players[targetplr].Character.RightUpperArm.Material = "ForceField"
                            game.Players[targetplr].Character.LeftFoot.Material = "ForceField"
                            game.Players[targetplr].Character.RightFoot.Material = "ForceField"
                            game.Players[targetplr].Character.LeftLowerLeg.Material = "ForceField"
                            game.Players[targetplr].Character.RightLowerLeg.Material = "ForceField"
                            game.Players[targetplr].Character.UpperTorso.Material = "ForceField"
                            game.Players[targetplr].Character.LowerTorso.Material = "ForceField"
                            game.Players[targetplr].Character.LeftUpperLeg.Material = "ForceField"
                            game.Players[targetplr].Character.RightUpperLeg.Material = "ForceField"
                            game.Players[targetplr].Character.Head.Material = "ForceField"
                        end
                    end
                    if aiming.visualization.forcefield == true then
                        local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

                        if humanoid.RigType == Enum.HumanoidRigType.R15 then
                            _G.colorbody1111 = game.Players[targetplr].Character.LeftHand.Color
                            _G.colorbody1121 = game.Players[targetplr].Character.RightHand.Color
                            _G.colorbody211 = game.Players[targetplr].Character.LeftLowerArm.Color
                            _G.colorbody311 = game.Players[targetplr].Character.RightLowerArm.Color
                            _G.colorbody411 = game.Players[targetplr].Character.LeftUpperArm.Color
                            _G.colorbody511 = game.Players[targetplr].Character.RightUpperArm.Color
                            _G.colorbody611 = game.Players[targetplr].Character.LeftFoot.Color
                            _G.colorbody711 = game.Players[targetplr].Character.RightFoot.Color
                            _G.colorbody811 = game.Players[targetplr].Character.LeftLowerLeg.Color
                            _G.colorbody911 = game.Players[targetplr].Character.RightLowerLeg.Color
                            _G.colorbody1011 = game.Players[targetplr].Character.UpperTorso.Color
                            _G.colorbody1111 = game.Players[targetplr].Character.LowerTorso.Color
                            _G.colorbody1211 = game.Players[targetplr].Character.LeftUpperLeg.Color
                            _G.colorbody1311 = game.Players[targetplr].Character.RightUpperLeg.Color
                            _G.colorbody1411 = game.Players[targetplr].Character.Head.Color
                            game.Players[targetplr].Character.LeftHand.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.RightHand.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.LeftLowerArm.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.RightLowerArm.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.LeftUpperArm.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.RightUpperArm.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.LeftFoot.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.RightFoot.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.LeftLowerLeg.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.RightLowerLeg.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.UpperTorso.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.LowerTorso.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.LeftUpperLeg.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.RightUpperLeg.Color =
                                aiming.visualization.forcefieldcol
                            game.Players[targetplr].Character.Head.Color =
                                aiming.visualization.forcefieldcol
                        end
                    end
                    if targetplr ~= nil and aiming.visualization.mode == "Ball" then
                        local ipar = Instance.new("Part", game.Workspace)
                        ipar.Name = "uwu"
                        ipar.Anchored = true
                        ipar.CanCollide = false
                        ipar.Transparency = aiming.visualization.transparency
                        ipar.Parent = game.Workspace
                        ipar.Shape = Enum.PartType.Ball
                        ipar.Size = Vector3.new(1, 0.7, 2)
                        ipar.Color = legitcolor
                        ipar.Material = aiming.visualization.material
                        spawn(
                            function()
                                game:GetService("RunService").Stepped:Connect(
                                    function()
                                        ipar.Position =
                                            game.Players[targetplr].Character.HumanoidRootPart.Position +
                                            (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                aiming.targetaim.prediction)
                                    end
                                )
                            end
                        )
                    end

                    if targetplr ~= nil and aiming.visualization.mode == "Ball2" then
                        local ipar2 = Instance.new("Part", game.Workspace)
                        ipar2.Name = "uwu2"
                        ipar2.Anchored = true
                        ipar2.CanCollide = false
                        ipar2.Transparency = aiming.visualization.transparency
                        ipar2.Parent = game.Workspace
                        ipar2.Shape = Enum.PartType.Ball
                        ipar2.Size = Vector3.new(10, 7, 20)
                        ipar2.Color = legitcolor
                        ipar2.Material = aiming.visualization.material
                        spawn(
                            function()
                                game:GetService("RunService").Stepped:Connect(
                                    function()
                                        ipar2.Position =
                                            game.Players[targetplr].Character.HumanoidRootPart.Position +
                                            (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                aiming.targetaim.prediction)
                                    end
                                )
                            end
                        )
                    end

                    if targetplr ~= nil and aiming.visualization.mode == "Block" then
                        local ipar3 = Instance.new("Part", game.Workspace)
                        ipar3.Name = "uwu3"
                        ipar3.Anchored = true
                        ipar3.CanCollide = false
                        ipar3.Transparency = aiming.visualization.transparency
                        ipar3.Parent = game.Workspace
                        ipar3.Shape = Enum.PartType.Block
                        ipar3.Size = Vector3.new(6, 6, 6)
                        ipar3.Color = legitcolor
                        ipar3.Material = aiming.visualization.material
                        spawn(
                            function()
                                game:GetService("RunService").Stepped:Connect(
                                    function()
                                        ipar3.Position =
                                            game.Players[targetplr].Character.HumanoidRootPart.Position +
                                            (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                aiming.targetaim.prediction)
                                    end
                                )
                            end
                        )
                    end
                     --Memelouse#3150
                    if targetplr ~= nil and aiming.visualization.mode == "Cylinder" then
                        local ipar7 = Instance.new("Part", game.Workspace)
                        ipar7.Name = "uwu4"
                        ipar7.Anchored = true
                        ipar7.CanCollide = false
                        ipar7.Transparency = aiming.visualization.transparency
                        ipar7.Parent = game.Workspace
                        ipar7.Shape = Enum.PartType.Cylinder
                        ipar7.Size = Vector3.new(3, 6, 3)
                        ipar7.Color = legitcolor
                        ipar7.Material = aiming.visualization.material
                        spawn(
                            function()
                                game:GetService("RunService").Stepped:Connect(
                                    function()
                                        ipar7.Position =
                                            game.Players[targetplr].Character.HumanoidRootPart.Position +
                                            (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                aiming.targetaim.prediction)
                                    end
                                )
                            end
                        )
                    end
                    if aiming.tracers.rainbow == true then
                        spawn(
                            function()
                                for i = 0, 1, 0.001 do
                                    line.Color = Color3.fromHSV(i, 1, 1)
                                    task.wait()
                                end
                            end
                        )
                    end

                    if aiming.orbit.enabled == true and aiming.targetaim.targeting then
                        spawn(
                            function()
                                repeat
                                    task.wait()

                                    for i = 0, 360, aiming.orbit.speed do
                                        if aiming.targetaim.targeting then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                CFrame.new(
                                                game.Players[targetplr].Character.HumanoidRootPart.Position
                                            ) *
                                                CFrame.Angles(0, math.rad(i), 0) *
                                                CFrame.new(aiming.orbit.distance, 0, 0)
                                            task.wait()
                                        end
                                    end
                                until game.Players[targetplr].Character.Humanoid.health < 1 or
                                    aiming.orbit.enabled == false or
                                    aiming.targetaim.targeting == false
                            end
                        )
                    end
                elseif not aiming.targetaim.targeting then
                    if aiming.targetaim.chat == true then
                        local args = {
                            [1] = "Untargeting " .. tostring(targetplr),
                            [2] = "All"
                        }

                        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                            unpack(args)
                        )
                    end
                    if
                        aiming.targetaim.Notificationmode == true and
                            aiming.targetaim.Notificationmodepart == "Roblox"
                     then
                        game.StarterGui:SetCore(
                            "SendNotification",
                            {
                                Title = "NoShot.Tm",
                                Text = "Unlocked",
                                Icon = "",
                                Duration = 1
                            }
                        )
                    end
                    if
                        aiming.targetaim.Notificationmode == true and
                            aiming.targetaim.Notificationmodepart == "Meff"
                     then
                        NotifyLib.prompt("♠", "Unlocked", 0)
                    end
                    if aiming.targetaim.toggablexd == true then
                        aiming.targetaim.toggablexd = false
                    end
                    if aiming.targetaim.view == true then
                        CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                    end

                    if aiming.visualization.mode == "Cylinder" then
                        local vvv = game:GetService("Workspace").uwu4
                        vvv:Destroy()
                    end

                    if aiming.visualization.mode == "Ball" then
                        local vvv = game:GetService("Workspace").uwu
                        vvv:Destroy()
                    end

                    if aiming.visualization.mode == "Ball2" then
                        local vvv = game:GetService("Workspace").uwu2
                        vvv:Destroy()
                    end
                    if aiming.visualization.mode == "Block" then
                        local vvv = game:GetService("Workspace").uwu3
                        vvv:Destroy()
                    end
                    if
                        aiming.orbit.flymode == true and aiming.targetaim.toggablexd == false and
                            aiming.targetaim.enabled == true
                     then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            CFrame.new(
                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.X,
                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.Y,
                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.Z
                        )
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity =
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector *
                            0
                        game:GetService("RunService").Stepped:wait()
                    end
                    if
                        niggacum2 and aiming.targetaim.targeting == false and
                            aiming.targetaim.toggablexd == false
                     then
                        LocalHL2.Parent = game.CoreGui
                    end
                    if aiming.visualization.forcefield == true then
                        local humanoid = game:GetService("Players")[targetplr].Character.Humanoid

                        if humanoid.RigType == Enum.HumanoidRigType.R15 then
                            game.Players[targetplr].Character.LeftHand.Material = "Plastic"
                            game.Players[targetplr].Character.RightHand.Material = "Plastic"
                            game.Players[targetplr].Character.LeftLowerArm.Material = "Plastic"
                            game.Players[targetplr].Character.RightLowerArm.Material = "Plastic"
                            game.Players[targetplr].Character.LeftUpperArm.Material = "Plastic"
                            game.Players[targetplr].Character.RightUpperArm.Material = "Plastic"
                            game.Players[targetplr].Character.LeftFoot.Material = "Plastic"
                            game.Players[targetplr].Character.RightFoot.Material = "Plastic"
                            game.Players[targetplr].Character.LeftLowerLeg.Material = "Plastic"
                            game.Players[targetplr].Character.RightLowerLeg.Material = "Plastic"
                            game.Players[targetplr].Character.UpperTorso.Material = "Plastic"
                            game.Players[targetplr].Character.LowerTorso.Material = "Plastic"
                            game.Players[targetplr].Character.LeftUpperLeg.Material = "Plastic"
                            game.Players[targetplr].Character.RightUpperLeg.Material = "Plastic"
                            game.Players[targetplr].Character.Head.Material = "Plastic"
                        end
                    end
                    if aiming.visualization.forcefield == true then
                        local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid

                        if humanoid.RigType == Enum.HumanoidRigType.R15 then
                            game.Players[targetplr].Character.LeftHand.Color = _G.colorbody1111
                            game.Players[targetplr].Character.RightHand.Color = _G.colorbody1121
                            game.Players[targetplr].Character.LeftLowerArm.Color = _G.colorbody211
                            game.Players[targetplr].Character.RightLowerArm.Color = _G.colorbody311
                            game.Players[targetplr].Character.LeftUpperArm.Color = _G.colorbody411
                            game.Players[targetplr].Character.RightUpperArm.Color = _G.colorbody511
                            game.Players[targetplr].Character.LeftFoot.Color = _G.colorbody611
                            game.Players[targetplr].Character.RightFoot.Color = _G.colorbody711
                            game.Players[targetplr].Character.LeftLowerLeg.Color = _G.colorbody811
                            game.Players[targetplr].Character.RightLowerLeg.Color = _G.colorbody911
                            game.Players[targetplr].Character.UpperTorso.Color = _G.colorbody1011
                            game.Players[targetplr].Character.LowerTorso.Color = _G.colorbody1111
                            game.Players[targetplr].Character.LeftUpperLeg.Color = _G.colorbody1211
                            game.Players[targetplr].Character.RightUpperLeg.Color = _G.colorbody1311
                            game.Players[targetplr].Character.Head.Color = _G.colorbody1411
                        end
                    end
                    if aiming.targetaim.ben == true then
                        local benunlocked = Instance.new("Sound")
                        benunlocked.Name = "Penis"
                        benunlocked.Volume = aiming.targetaim.benvolume
                        benunlocked.SoundId = "rbxassetid://6518811702"
                        benunlocked.Parent = game:GetService("SoundService")
                        benunlocked.Playing = true
                    end
                end
            end
        end
    end
)













local mt = getrawmetatable(game)
                local old = mt.__namecall
                setreadonly(mt, false)
                mt.__namecall =
                    newcclosure(
                    function(...)
                        local args = {...}
                        if
                            targetplr ~= nil and aiming.targetaim.enabled and targetplr and
                                aiming.targetaim.targeting == true and
                                aiming.targetaim.enabled == true and
                                getnamecallmethod() == "FireServer" and
                                args[2] == "UpdateMousePos"
                         then
                            args[3] =
                                game.Players[targetplr].Character[aiming.targetaim.hitpart].Position +
                                (game.Players[targetplr].Character.LowerTorso.Velocity * aiming.targetaim.prediction)
                            return old(unpack(args))
                        end
                        return old(...)
                    end
                )

                --// main Code

                spawn(
                    function()
                        game:GetService("RunService").Stepped:Connect(
                            function()
                                --- fov
                                spawn(
                                    function()
                                        circle.Position = Vector2.new(LocalMouse.X, LocalMouse.Y + 35)
                                    end
                                )

                                spawn(
                                    function()
                                        if aiming.fov.option == "Circle" then
                                            aiming.fov.side = 350
                                            circle.NumSides = 350
                                            aiming.fov.side = 350
                                        elseif aiming.fov.option == "Hexagon" then
                                            aiming.fov.side = 6
                                            circle.NumSides = 6
                                            aiming.fov.side = 6
                                        elseif aiming.fov.option == "Square" then
                                            aiming.fov.side = 4
                                            circle.NumSides = 4
                                            aiming.fov.side = 4
                                        else
                                        end
                                    end
                                )

                                spawn(
                                    function()
                                        if aiming.fov.enabled == true then
                                            circle.Visible = true
                                        else
                                            circle.Visible = false
                                        end
                                    end
                                )

                                spawn(
                                    function()
                                        circle.Color = aiming.fov.colour
                                    end
                                )

                                spawn(
                                    function()
                                        circle.Filled = aiming.fov.filled
                                    end
                                )

                                spawn(
                                    function()
                                        circle.Radius = aiming.fov.radius
                                    end
                                )

                                spawn(
                                    function()
                                        circle.Thickness = aiming.fov.thickness
                                    end
                                )

                                spawn(
                                    function()
                                        line.Thickness = aiming.tracers.thickness
                                    end
                                )

                                --- targetaim

                                spawn(
                                    function()
                                        if aiming.targetaim.autoprediction == true then
                                            local pingvalue =
                                                game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(

                                            )
                                            local split = string.split(pingvalue, "(")
                                            local ping = tonumber(split[1])
                                            -- u can change these (i stole them from .gg/sets)
                                            if ping > 150 then
                                                aiming.targetaim.prediction = 0
                                            elseif ping > 140 then
                                                aiming.targetaim.prediction = 0.165773
                                            elseif ping > 130 then
                                                aiming.targetaim.prediction = 0.1223333
                                            elseif ping > 120 then
                                                aiming.targetaim.prediction = 0.143765
                                            elseif ping > 110 then
                                                aiming.targetaim.prediction = 0.1455
                                            elseif ping > 100 then
                                                aiming.targetaim.prediction = 0.130340
                                            elseif ping > 90 then
                                                aiming.targetaim.prediction = 0.136
                                            elseif ping > 80 then
                                                aiming.targetaim.prediction = 0.1347
                                            elseif ping > 70 then
                                                aiming.targetaim.prediction = 0.119
                                            elseif ping > 60 then
                                                aiming.targetaim.prediction = 0.12731
                                            elseif ping > 50 then
                                                aiming.targetaim.prediction = 0.127668
                                            elseif ping > 40 then
                                                aiming.targetaim.prediction = 0.125
                                            end
                                        end
                                    end
                                )
                                spawn(
                                    function()
                                        if aiming.tracers.rainbow == true then
                                        else
                                            line.Color = aiming.tracers.colour
                                        end
                                    end
                                )

                                spawn(
                                    function()
                                        if
                                            aiming.targetaim.enabled and aiming.targetaim.targeting and
                                                aiming.tracers.enabled == true
                                         then
                                            if aiming.tracers.showprediction == false then
                                                local plrp =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players[targetplr].Character[aiming.targetaim.hitpart].Position
                                                )
                                                local headt =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.Head.Position
                                                )
                                                local torsot =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.UpperTorso.Position
                                                )
                                                local penist =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.LowerTorso.Position
                                                )
                                                local Gunt =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.RightHand.Position
                                                )
                                                local mouset =
                                                    CurrentCamera:WorldToViewportPoint(LocalMouse.Hit.Position)

                                                line.Visible = true

                                                if aiming.tracers.from == "Penis" then
                                                    line.From = Vector2.new(penist.X, penist.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Gun" then
                                                    line.From = Vector2.new(Gunt.X, Gunt.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Head" then
                                                    line.From = Vector2.new(headt.X, headt.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Torso" then
                                                    line.From = Vector2.new(torsot.X, torsot.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Cursor" then
                                                    line.From = Vector2.new(mouset.X, mouset.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end
                                            else
                                                local plrp =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players[targetplr].Character[aiming.targetaim.hitpart].Position +
                                                        (game.Players[targetplr].Character[aiming.targetaim.hitpart].Velocity *
                                                            aiming.targetaim.prediction)
                                                )
                                                local headt =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.Head.Position
                                                ) +
                                                    (game.Players[targetplr].Character.Head.Velocity *
                                                        aiming.targetaim.prediction)
                                                local torsot =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.UpperTorso.Position +
                                                        (game.Players[targetplr].Character.UpperTorso.Velocity *
                                                            aiming.targetaim.prediction)
                                                )
                                                local penist =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.LowerTorso.Position +
                                                        (game.Players[targetplr].Character.LowerTorso.Velocity *
                                                            aiming.targetaim.prediction)
                                                )
                                                local Gunt =
                                                    CurrentCamera:WorldToViewportPoint(
                                                    game.Players.LocalPlayer.Character.RightHand.Position +
                                                        (game.Players[targetplr].Character.RightHand.Velocity *
                                                            aiming.targetaim.prediction)
                                                )
                                                local mouset =
                                                    CurrentCamera:WorldToViewportPoint(LocalMouse.Hit.Position)

                                                line.Visible = true

                                                if aiming.tracers.from == "Penis" then
                                                    line.From = Vector2.new(penist.X, penist.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Gun" then
                                                    line.From = Vector2.new(Gunt.X, Gunt.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Head" then
                                                    line.From = Vector2.new(headt.X, headt.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Torso" then
                                                    line.From = Vector2.new(torsot.X, torsot.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end

                                                if aiming.tracers.from == "Cursor" then
                                                    line.From = Vector2.new(mouset.X, mouset.Y)
                                                    line.To = Vector2.new(plrp.X, plrp.Y)
                                                end
                                            end
                                        else
                                            line.Visible = false
                                        end
                                    end
                                )
                                if
                                    aiming.od.realodko and aiming.targetaim.targeting and
                                        aiming.targetaim.enabled == true
                                 then
                                    if game.Players[targetplr].Character.Humanoid.health < 1 then
                                        game:GetService("ReplicatedStorage").MainEvent:FireServer(
                                            "Reload",
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA(
                                                "Tool"
                                            )
                                        )
                                    end
                                end
                                if
                                    aiming.od.unlockko and aiming.targetaim.targeting and
                                        aiming.targetaim.enabled == true
                                 then
                                    if game.Players[targetplr].Character.Humanoid.health < 1 then
                                        aiming.targetaim.targeting = false
                                        line.Visible = false
                                        aiming.targetaim.toggablexd = false
                                        CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                                        if aiming.visualization.mode == "Cylinder" then
                                            local vvv = game:GetService("Workspace").uwu4
                                            vvv:Destroy()
                                        end

                                        if aiming.visualization.mode == "Ball" then
                                            local vvv = game:GetService("Workspace").uwu
                                            vvv:Destroy()
                                        end

                                        if aiming.visualization.mode == "Ball2" then
                                            local vvv = game:GetService("Workspace").uwu2
                                            vvv:Destroy()
                                        end
                                        if aiming.visualization.mode == "Block" then
                                            local vvv = game:GetService("Workspace").uwu3
                                            vvv:Destroy()
                                        end
                                        if niggacum2 then
                                            LocalHL2.Parent = game.CoreGui
                                        end
                                    end
                                end
                                if aiming.od.tpko == true then
                                    if game.Players[targetplr].Character.Humanoid.health < 0.99 then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            game.Players[targetplr].Character.LowerTorso.CFrame
                                    end
                                end

                                if
                                    aiming.targetaim.targeting == true and aiming.targetaim.enabled == true and
                                        aiming.orbit.enabled == true and
                                        aiming.orbit.visualization == true
                                 then
                                    Circle2222.Color = aiming.orbit.vc
                                    Circle2222.Visible = true
                                    Circle2222.Radius = aiming.orbit.distance
                                    Circle2222.Position = game.Players[targetplr].Character.HumanoidRootPart.Position
                                else
                                    Circle2222.Visible = false
                                end

                                if aiming.visualization.mode == "Circle" then
                                    if aiming.targetaim.targeting and aiming.targetaim.enabled == true then
                                        local narcan =
                                            CurrentCamera:WorldToViewportPoint(
                                            game.Players[targetplr].Character.HumanoidRootPart.Position
                                        )
                                        circlev.Position = Vector2.new(narcan.X, narcan.Y)
                                        circlev.Transparency = aiming.visualization.transparency
                                        circlev.Visible = true
                                    else
                                        circlev.Visible = false
                                    end
                                end
                                if aiming.visualization.mode == "Triangle" then
                                    if aiming.targetaim.targeting and aiming.targetaim.enabled == true then
                                        local narcan =
                                            CurrentCamera:WorldToViewportPoint(
                                            game.Players[targetplr].Character.HumanoidRootPart.Position
                                        )
                                        circlev2.Position = Vector2.new(narcan.X, narcan.Y)
                                        circlev2.Transparency = aiming.visualization.transparency
                                        circlev2.Visible = true
                                    else
                                        circlev2.Visible = false
                                    end
                                end
                                if
                                    aiming.targetaim.autoshoot and aiming.targetaim.targeting and
                                        aiming.targetaim.enabled == true
                                 then
                                    mouse1click()
                                end
                            end
                        )
                    end
                )

                -- shit auto stomp srry
                spawn(
                    function()
                        while task.wait() do
                            if aiming.targetaim.targeting and aiming.targetaim.enabled and aiming.od.stompko == true then
                                if game.Players[targetplr].Character.Humanoid.health < 7 then
                                    if aiming.od.stompko == true then
                                        spawn(
                                            function()
                                                wait(aiming.od.stomptime)
                                                local args = {
                                                    [1] = "Stomp"
                                                }

                                                game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
                                            end
                                        )
                                    end
                                end
                            end
                        end
                    end
                )
            














            




                local peace = { 
                    Part = "HumanoidRootPart",
                    Prediction = 0.165, 
                    FOVHolder = true,
                    ShowFOV = false,
                    Radius = 76,
                    Enabled = false,
                    Locking,
                    Wallcheck = false,
                    Airshot = false,
                    AirshotPart = "RightFoot",
                    RandomHP = false
                }
                
                
                --[[local bitchboy = Drawing.new("Circle")
                local Inset = game:GetService("GuiService"):GetGuiInset().Y
                local Camera = workspace.CurrentCamera
                local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
                local Storage = { Instance = {} }
                local GuiService = game:GetService("GuiService")
                local xplr
                ]]
                
                local bitchboy = Drawing.new("Circle")
                local CurrentCamera = game:GetService("Workspace").CurrentCamera
                local GuiService = game:GetService("GuiService")
                local Inset = GuiService:GetGuiInset().Y
                local LocalPlayer = game.Players.LocalPlayer
                local xplr
                local RunService = game:GetService("RunService")
                local Mouse = LocalPlayer:GetMouse()
                local Camera = workspace.CurrentCamera
                local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
                local Storage = { Instance = {} }
                
                
                local GetService =
                setmetatable(
                    {},
                    {
                    __index = function(self, key)
                        return game:GetService(key)
                    end
                }
                )
                
                
                
                bitchboy.Filled = false
                bitchboy.Transparency = 1
                bitchboy.Thickness = 2
                bitchboy.Color = Color3.fromRGB(255, 255, 255)
                
                
                function updatehoe()
                    if bitchboy then
                        if (peace.FOVHolder) then
                            bitchboy.Radius = peace.Radius
                            bitchboy.Visible = peace.ShowFOV
                            bitchboy.Position = Vector2.new(LocalMouse.X, LocalMouse.Y + Inset) -- 0,36
                            return bitchboy
                        elseif not peace.FOVHolder then
                            bitchboy.Visible = false
                        end
                    end
                end
                
                
                
                
                RunService.RenderStepped:Connect(function()
                    updatehoe()
                    xplr = FindClosestUser()
                end)
                
                
                function IsNetwork(GetPlayer)
                    return GetPlayer and GetPlayer.Character and GetPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil and
                        GetPlayer.Character:FindFirstChild("Humanoid") ~= nil and
                        GetPlayer.Character:FindFirstChild("Head") ~= nil and
                        true or
                        false
                end
                
                local CharacterAdded = LocalPlayer.CharacterAdded
                local CharacterAddedWait = CharacterAdded.Wait
                
                function WallCheck(OriginPart, Part)
                    if IsNetwork(LocalPlayer) then
                        local IgnoreList = { CurrentCamera, LocalPlayer.Character, OriginPart.Parent }
                        local Parts =
                        CurrentCamera:GetPartsObscuringTarget(
                            {
                                OriginPart.Position,
                                Part.Position
                            },
                            IgnoreList
                        )
                
                        for i, v in pairs(Parts) do
                            if v.Transparency >= 0.3 then
                                Storage.Instance[#Storage.Instance + 1] = v
                            end
                
                            if v.Material == Enum.Material.Glass then
                                Storage.Instance[#Storage.Instance + 1] = v
                            end
                        end
                
                        return #Parts == 0
                    end
                    return true
                end
                
                
                
                
                
                --[[local function CheckTargetPart(TargetPartName)
                    local TargetPart = FindFirstChild(Character, TargetPartName)
                
                    if (TargetPart) then
                        local PartPos, onScreen = WorldToViewportPoint(CurrentCamera, TargetPart.Position)
                        local Magnitude = (Vector2new(PartPos.X, PartPos.Y) - Vector2new(Mouse.X, Mouse.Y)).Magnitude
                
                        if (Magnitude < ShortestDistance) then
                            ClosestPart = TargetPart
                            ClosestPartPosition = PartPos
                            ClosestPartOnScreen = onScreen
                            ClosestPartMagnitudeFromMouse = Magnitude
                            ShortestDistance = Magnitude
                        end
                    end
                end]]
                
                local ClosestPart = nil
                local ClosestPartPosition = nil
                local ClosestPartOnScreen = false
                local ClosestPartMagnitudeFromMouse = nil
                local ShortestDistance = 1/0
                
                
                
                function FindClosestUser()
                    local closestPlayer
                    local shortestDistance = math.huge
                
                    for i, v in pairs(game.Players:GetPlayers()) do
                
                        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart")  then
                            local pos, IsVisibleOnViewPort = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                            if IsVisibleOnViewPort then
                            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
                
                
                
                
                
                            if peace.FOVHolder == true then
                                if peace.Radius > magnitude and magnitude < shortestDistance then
                                    if (not peace.Wallcheck or WallCheck(v.Character.HumanoidRootPart, LocalPlayer.Character.HumanoidRootPart)) then
                
                
                                    closestPlayer = v
                                    shortestDistance = magnitude
                
                                    end
                                end
                            else
                                if magnitude < shortestDistance then
                                    closestPlayer = v
                                    shortestDistance = magnitude
                                end
                            end
                        end
                    end
                
                end
                
                return closestPlayer, shortestDistance
                end
                
                --IsVisibleOnViewPort
                
                
                
                RunService.Heartbeat:Connect(function()
                    if peace.RandomHP and peace.Enabled then
                        myTable = { 
                            "Head",
                            "UpperTorso",
                            "HumanoidRootPart",
                            "LowerTorso",
                            "RightFoot",
                            "LeftFoot"
                        }
                        
                
                
                        
                        peace.Part = myTable[ math.random( 0, #myTable - 1 ) ]
                    else
                        peace.Part = "HumanoidRootPart"
                    end
                end)
                
                
                local gmt = getrawmetatable(game)
                setreadonly(gmt, false)
                local old = gmt.__namecall
                
                gmt.__namecall = newcclosure(function(...)
                    local args = { ... }
                    local method = getnamecallmethod()
                
                    if peace.Enabled and method == "FireServer" and args[2] == 'UpdateMousePos' and xplr ~= nil then
                        args[3] = xplr.Character[peace.Part].Position + (xplr.Character[peace.Part].Velocity * peace.Prediction)
                        return old(unpack(args))
                    end
                    return old(...)
                end)
                
                
                
                if peace.Airshot then
                    if xplr.Character.Humanoid.Jump == true and xplr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                        peace.Part = peace.AirshotPart
                    else
                        xplr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                            if new == Enum.HumanoidStateType.Freefall then
                                peace.Part = peace.AirshotPart
                            else
                                peace.Part = "HumanoidRootPart"
                            end
                        end)
                    end
                end



         
























local library = loadstring(game:HttpGet("https://pastebin.com/raw/dWdpNxP7"))()

local window = library:new({textsize = 15,font = Enum.Font.RobotoMono,name = "CuteWare.xyz",color = Color3.fromRGB(255,48,165)})

local tab1 = window:page({name = "Aiming"})
local tab2 = window:page({name = "Visual"})
local tab3 = window:page({name = "Misc"})
local MiscTab = window:page({name = "Settings"})


local section1 = tab1:section({name = "Bullet Redirection",side = "left",size = 396})
local section3 = tab1:section({name = "silent aim",side = "Right",size = 396})
local section2 = tab1:section({name = "FOV Drawing",side = "left",size = 255})
local section4 = tab1:section({name = "Drawing Tracer",side = "Right",size = "187"})
local section5 = tab1:section({name = "Sounds",side = "Right",size = "78"})
local section7 = tab1:section({name = "autoshoot",side = "left",size = "43"})
local section9 = tab2:section({name = "Bullet Redirection visualizations",side = "left",size = 288})
local section10 = tab2:section({name = "Esp",side = "right",size = 140})
local section11 = tab2:section({name = "World",side = "left",size = 245})
local section14 = tab2:section({name = "Players",side = "right",size = 112})
local section15 = tab2:section({name = "Player",side = "right",size = 112})
local section20 = tab3:section({name = "Desync",side = "Left",size = 317})
local section21 = tab3:section({name = "Resolver",side = "right",size = 317})


local ConfigSection = MiscTab:section({name = "Config",side = "right", size = 250})
local ConfigLoader = ConfigSection:configloader({folder = "CONFIG"})



section1:toggle({name = "Enabled", callback = function(arg)
    aiming.targetaim.enabled = arg
end})

section1:keybind({name = "Bind",def = Enum.KeyCode.Q,callback = function(key)
    aiming.targetaim.key  = key
 end})





section1:textbox({name = "Prediction",def = "0.11",placeholder = "",callback = function(bool)
    aiming.targetaim.prediction = bool
    aiming.targetaim.predictionv2 = bool
 end})
 local hitpartpart = section1:dropdown({name = "Target Part",def = "HumanoidRootPart",max = 10,options = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot", "RightFoot"},callback = function(part)
    aiming.targetaim.hitpart = part
    aiming.targetaim.hitpart2 = part
end})


section1:toggle({name = "AirShot", callback = function(arg)
    aiming.targetaim.airshotfun = arg
end})


section1:dropdown({name = "Airshot Part",def = "RightFoot",max = 10,options = {"Head", "HumanoidRootPart", "LowerTorso", "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot", "RightFoot"},callback = function(part)
    aiming.targetaim.airshotfun = part
end})


section1:toggle({name = "AutoSetUp", callback = function(arg)
    aiming.targetaim.autoprediction = arg
end})

section1:toggle({name = "Teleport To Target When Locked", callback = function(arg)
    aiming.targetaim.teleportontarget = arg
end})
section1:toggle({name = "Target Stats", callback = function(arg)
    TargetUI = arg
end})




local ScreenGui = Instance.new('ScreenGui')
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new('ImageLabel')
Frame.Visible = false
Frame.Name = 'Frame'
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.37903139, 0, 0.641899168, 0)
Frame.Size = UDim2.new(0, 347, 0, 158)
Frame.Image = 'rbxassetid://3570695787'
Frame.ImageColor3 = Color3.fromRGB(44, 44, 44)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.150

local KurumiImage = Instance.new('ImageLabel')
KurumiImage.Name = 'KurumiImage'
KurumiImage.Parent = Frame
KurumiImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KurumiImage.BackgroundTransparency = 1.000
KurumiImage.Position = UDim2.new(0.853139758, 0, 0.643318295, 0)
KurumiImage.Size = UDim2.new(0, 50, 0, 50)
KurumiImage.Image = 'rbxassetid://9604499156'

local PlayerImage = Instance.new('ImageLabel')
PlayerImage.Name = 'PlayerImage'
PlayerImage.Parent = Frame
PlayerImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerImage.BackgroundTransparency = 1.000
PlayerImage.Position = UDim2.new(0.0518731996, 0, 0.0949367061, 0)
PlayerImage.Size = UDim2.new(0, 138, 0, 128)

local PlayerHealth = Instance.new('TextLabel')
PlayerHealth.Name = 'PlayerHealth'
PlayerHealth.Parent = Frame
PlayerHealth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerHealth.BackgroundTransparency = 1.000
PlayerHealth.Position = UDim2.new(0.475504309, 0, 0.0949367061, 0)
PlayerHealth.Size = UDim2.new(0, 168, 0, 41)
PlayerHealth.Font = Enum.Font.Highway
PlayerHealth.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerHealth.TextSize = 14.000

local PlayerArmor = Instance.new('TextLabel')
PlayerArmor.Name = 'PlayerArmor'
PlayerArmor.Parent = Frame
PlayerArmor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerArmor.BackgroundTransparency = 1.000
PlayerArmor.Position = UDim2.new(0.475504309, 0, 0.373417705, 0)
PlayerArmor.Size = UDim2.new(0, 168, 0, 41)
PlayerArmor.Font = Enum.Font.Highway
PlayerArmor.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerArmor.TextSize = 14.000
PlayerArmor.TextWrapped = true

local PlayerKO = Instance.new('TextLabel')
PlayerKO.Name = 'PlayerKO'
PlayerKO.Parent = Frame
PlayerKO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerKO.BackgroundTransparency = 1.000
PlayerKO.Position = UDim2.new(0.475504309, 0, 0.645569563, 0)
PlayerKO.Size = UDim2.new(0, 168, 0, 41)
PlayerKO.Font = Enum.Font.Highway
PlayerKO.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerKO.TextSize = 14.000
PlayerKO.TextWrapped = true

local HealthImage = Instance.new('ImageLabel')
HealthImage.Name = 'HealthImage'
HealthImage.Parent = Frame
HealthImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthImage.BackgroundTransparency = 1
HealthImage.Position = UDim2.new(0.475504309, 0, 0.107594959, 0)
HealthImage.Size = UDim2.new(0, 34, 0, 36)
HealthImage.Image = 'rbxassetid://219330652'

local ArmorImage = Instance.new('ImageLabel')
ArmorImage.Name = 'ArmorImage'
ArmorImage.Parent = Frame
ArmorImage.ImageColor3 = Color3.fromRGB(104, 157, 236)
ArmorImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ArmorImage.BackgroundTransparency = 1
ArmorImage.Position = UDim2.new(0.475504309, 0, 0.386075974, 0)
ArmorImage.Size = UDim2.new(0, 34, 0, 36)
ArmorImage.Image = 'rbxassetid://3376128953'

local KOImage = Instance.new('ImageLabel')
KOImage.Name = 'KOImage'
KOImage.Parent = Frame
KOImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KOImage.BackgroundTransparency = 1
KOImage.Position = UDim2.new(0.475504309, 0, 0.677215219, 0)
KOImage.Size = UDim2.new(0, 34, 0, 36)
KOImage.Image = 'rbxassetid://7383316325'



local TargetUI = true




game:GetService("RunService").heartbeat:Connect(
    function()
        if Target ~= nil and TargetUI ~= false and aiming.targetaim.toggablexd == true and targetplr and
        game.Players[targetplr].Character ~= nil and
        game.Players[targetplr].Character:FindFirstChild("HumanoidRootPart")then
            Frame.Visible = true
        PlayerImage.Image = Players:GetUserThumbnailAsync(Players[Target].UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
        PlayerHealth.Text = 'Health: '..math.floor(Players[Target].Character.Humanoid.Health)..'/100'
        if game.PlaceId == 2788229376 then
            PlayerArmor.Text = 'Armor: '..math.floor(workspace.Players[Target].BodyEffects.Armor.Value)..'/100'
            if workspace.Players[Target].BodyEffects['K.O'].Value == true then
                PlayerKO.Text = 'K.O: True'
            elseif workspace.Players[Target].BodyEffects['K.O'].Value == false then
                PlayerKO.Text = 'K.O: False'
            end
        else  
            PlayerArmor.Text = 'Armor: '..math.floor(Players[Target].Information.Armor.Value)..'/100'
            if Players[Target].Information.KO.Value == true then
                PlayerKO.Text = 'K.O: True'
            elseif Players[Target].Information.KO.Value == false then
                PlayerKO.Text = 'K.O: False'
            end
        end
    end
end)



section1:toggle({name = "Veiw Target", callback = function(arg)
    aiming.targetaim.view = arg
end})

section1:toggle({name = "Chating Target", callback = function(arg)
    aiming.targetaim.chat = arg
end})

section1:toggle({name = "Face Taget", callback = function(arg)
    aiming.targetaim.lookat = arg
end})
section1:toggle({name = "AirStrafe Target", callback = function(arg)
    aiming.orbit.flymode = arg
    end})
    section1:slider({name = "AirStrafe Height",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
        aiming.orbit.flymodeh = (value)
    end})

    RunService.Stepped:Connect(
        function()
            if
                aiming.orbit.flymode == true and aiming.targetaim.toggablexd == true and
                    aiming.targetaim.enabled == true
             then
                for i, v in pairs(LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") and v.CanCollide == true then
                        v.CanCollide = false
                    end
                end
            end
            if
                aiming.orbit.flymode == true and aiming.targetaim.toggablexd == true and
                    aiming.targetaim.enabled == true
             then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    game.Players[targetplr].Character.HumanoidRootPart.CFrame.X,
                    aiming.orbit.flymodeh,
                    game.Players[targetplr].Character.HumanoidRootPart.CFrame.Z
                )
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity =
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 0
                game:GetService("RunService").Stepped:wait()
            end
        end
    )

    RunService.RenderStepped:Connect(
        function()
            if
                aiming.targetaim.enabled == true and aiming.targetaim.toggablexd == true and
                    aiming.targetaim.lookat == true and
                    game.Players[targetplr].Character:FindFirstChild("HumanoidRootPart")
             then
                if aiming.targetaim.lookat == true and aiming.targetaim.toggablexd == true then
                    lplr.Character.HumanoidRootPart.CFrame =
                        CFrame.new(
                        LocalPlayer.Character.HumanoidRootPart.CFrame.Position,
                        Vector3.new(
                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.X,
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position.Y,
                            game.Players[targetplr].Character.HumanoidRootPart.CFrame.Z
                        )
                    )
                    lplr.Character.Humanoid.AutoRotate = false
                    spawn(
                        function()
                            if aiming.targetaim.lookat == false then
                                lplr.Character.Humanoid.AutoRotate = true
                            end
                        end
                    )
                end
            end
        end
    )

    section1:toggle({name = "Notification Mode", callback = function(arg)
        aiming.targetaim.Notificationmode = arg
    end})

    local gay = section2:toggle({name = "Draw Circle", callback = function(arg)
        aiming.fov.enabled = arg
    end})
    section2:colorpicker({name = "Circle Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
        aiming.fov.colour = color
    end})
  section2:toggle({name = "Filled Circle", callback = function(arg)
    aiming.fov.filled = arg
    end})
    section2:toggle({name = "Circle Outlines", callback = function(arg)
     
        end})

        section2:slider({name = "Circle Thickness",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
           
            aiming.fov.thickness = value
        end})
        
        section2:slider({name = "Circle radius",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
           
            aiming.fov.radius = value
        end})

        section2:slider({name = "Circle sides",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
           
            circle.NumSides = value
        end})

        section2:dropdown({name = "Circle Looks",def = "Circle",max = 10,options = {"Circle", "Hexagon", "Square", "Custom"},callback = function(part)
            aiming.fov.option = part
        end})
-------------------------------------------------------------------------------------------------------
        section3:toggle({name = "Enabled", callback = function(arg)
            peace.Enabled = arg
        end})

        
section3:textbox({name = "Prediction",def = "0.11",placeholder = "",callback = function(bool)
    peace.Prediction = bool
 end})
 section3:toggle({name = "Drawing Circle", callback = function(arg)
    peace.ShowFOV  = arg
end})


section3:colorpicker({name = "Circle Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    bitchboy.Color = color
end})


section3:slider({name = "Cicle Size",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
           
    peace.Radius  = value
end})

section3:toggle({name = "Random hitpart", callback = function(arg)
    peace.RandomHP = arg
end})
section3:toggle({name = "AirShot", callback = function(arg)
    peace.Airshot  = arg
end})
section3:toggle({name = "WallCheck", callback = function(arg)
    peace.Wallcheck = arg
end})
section3:toggle({name = "GetNearestTarget", callback = function(arg)
    
end})
section3:toggle({name = "ClosestDistance", callback = function(arg)
   
end})
section3:toggle({name = "ClosestPlayer", callback = function(arg)
   
end})
section3:toggle({name = "ClosestPart", callback = function(arg)
   
end})

section3:toggle({name = "ClostestMouse", callback = function(arg)
   
end})
section3:dropdown({name = "hitpart",def = "HumanoidRootPart",max = 10,options = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot", "RightFoot"},callback = function(part)
    peace.Part = part
end})




section3:dropdown({name = "Airshotpart",def = "HumanoidRootPart",max = 10,options = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftFoot", "RightFoot"},callback = function(part)
    
    peace.Airshot  = part
end})



section4:toggle({name = "Drawing Tracer", callback = function(arg)
    aiming.tracers.enabled = arg
end})

section4:colorpicker({name = "Tracer Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(color)
    aiming.tracers.colour = color
end})

section4:slider({name = "Line Thickness",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
           
    aiming.tracers.thickness = value
end})

section4:dropdown({name = "Tracer From:",def = "Cicle",max = 10,options = {"Head", "Torso", "Gun", "Penis", "Cursor"},callback = function(part)
    aiming.tracers.from = part
end})

section4:toggle({name = "Tracer/W Prediction", callback = function(arg)
    aiming.tracers.showprediction = arg
end})


-----------------------------------------------------
section5:toggle({name = "Sound Mode", callback = function(arg)
    aiming.targetaim.ben = arg
end})


section5:slider({name = "Sound Volume",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
           
    aiming.targetaim.benvolume = value
end}) 





section7:toggle({name = "Enabled", callback = function(arg)
    aiming.targetaim.autoshoot = arg
end})



section9:dropdown({name = " Visualization Type",def = "Cicle",max = 10,options =   {"Nothing", "Ball", "Ball2", "Cylinder", "Block", "Circle", "Triangle"},callback = function(part)
    aiming.visualization.mode = part
end})

section9:slider({name = "Transparency",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
           
    aiming.visualization.transparency = value
end}) 

section9:dropdown({name = "ForceField",def = "Cicle",max = 10,options =   {
    "Plastic",
    "Concrete",
    "Grass",
    "Metal",
    "WoodPlanks",
    "ForceField",
    "Glass",
    "Neon",
    "SmoothPlastic",
    "Fabric",
    "Brick"
},callback = function(part)
    aiming.visualization.material = part
end})

section9:colorpicker({name = "Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(Color)
    legitcolor = Color
                        circlev.Color = Color
                        circlev2.Color = Color
end})

section9:toggle({name = "Rainbow", callback = function(callback)
    if callback then
        if humanoid.RigType == Enum.HumanoidRigType.R15 then
            niggerheartbeat =
                game:GetService("RunService").Heartbeat:Connect(
                function()
                    legitcolor = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                    circlev.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                    circlev2.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                end
            )
        end
    else
        if niggerheartbeat then
            niggerheartbeat:Disconnect()
        end
    end
end})




section9:toggle({name = "ForceField Target", callback = function(callback)
    aiming.visualization.forcefield  =callback
end})
section9:toggle({name = "Fortnie Target", callback = function(callback)

end})
section9:toggle({name = "Amgous Target", callback = function(callback)
   
end})


section9:colorpicker({name = "ForceField Target Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(Color)
    aiming.visualization.forcefieldcol = Color
end})



section9:toggle({name = " HightLights Target", callback = function(Boolean)
    niggacum2 = Boolean

    niggacumcolorxe2 = Boolean
    if niggacum2 == false then
        LocalHL2.Parent = game.CoreGui
    end
end})



section9:colorpicker({name = "Visualization Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(Color)
    niggaculor2 = Color
end})


local library = loadstring(game:HttpGet("https://pastebin.com/raw/nQZYatXy"))()
local library = loadstring(game:HttpGet("https://pastebin.com/raw/U2HwmEyF"))()

section10:toggle({name = "Toggle Boxes",def = false,callback = function(e)
    PikaESPSettings.Box = e
end})

section10:toggle({name = "Toggle Names",def = false,callback = function(e)
  PikaESPSettings.Name = e
end})

section10:toggle({name = "Toggle Tracers",def = false,callback = function(e)
  PikaESPSettings.Tracers = e
end})
section10:toggle({name = "Unlock Tracers",def = false,callback = function(e)
    PikaESPSettings.UnlockTracers = e
end})



----------------------------------------------------------------------------------------------------






section11:toggle({name = "Enabled", callback = function(Boolean)
    

end})








local section18 = tab2:section({name = "Crosshair",side = "right",size = 64})



section18:toggle({name = "Draw Crosshair",def = true,callback = function(e)
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Visible = e
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.Visible = e
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.Visible = e
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.Visible = e
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.Visible = e
end})

section18:colorpicker({name = "Crosshair Colour",cpname = nil,def = Color3.fromRGB(0,255,255),callback = function(e)
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.BackgroundColor3 = e
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Top.BackgroundColor3 = e
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Bottom.BackgroundColor3 = e
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Right.BackgroundColor3 = e
game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Aim.Left.BackgroundColor3 = e
end})





section11:toggle({name = "RainbowAmbient", callback = function(Boolean)
    getgenv().onScreen = Boolean

end})
section11:toggle({name = "Shadows", callback = function(Boolean)
   

end})
section11:colorpicker({name = "World Ambient",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(Color)
    game.Lighting.Ambient = Color
end})

section11:colorpicker({name = "World Tint",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(Color)
    game:GetService("Lighting").ColorCorrection.TintColor = Color
end})

section11:slider({name = "Saturation",def = 3, max = 10,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)

    Light.ColorCorrection.Saturation = value
end})

section11:slider({name = "Contrast",def = 3, max = 10,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)

    game:GetService("Lighting").ColorCorrection.Contrast = value
end})

section11:slider({name = "Brightness",def = 0, max = 10,min = 0,rounding = false,ticking = false,measuring = "",callback = function(value)

    Light.Brightness = value
end})



















section14:toggle({name = "Gun Cham",def = false,callback = function(e)
    if e then
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.ForceField
    else
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.Plastic
    end
end})



local picker = section14:colorpicker({name = "Gun Cham Colour",cpname = nil,def = Color3.fromRGB(0,255,255),callback = function(color)
  LocalPlayer.Character:FindFirstChildOfClass("Tool").Default.BrickColor = BrickColor.new(color)
end})


section14:toggle({name = "Body Cham",def = false,callback = function(e)
if e then
    game.Players.LocalPlayer.Character.LeftHand.Material = "ForceField"
    game.Players.LocalPlayer.Character.RightHand.Material = "ForceField"
    game.Players.LocalPlayer.Character.LeftLowerArm.Material = "ForceField"
    game.Players.LocalPlayer.Character.RightLowerArm.Material = "ForceField"
    game.Players.LocalPlayer.Character.LeftUpperArm.Material = "ForceField"
    game.Players.LocalPlayer.Character.RightUpperArm.Material = "ForceField"
    game.Players.LocalPlayer.Character.LeftFoot.Material = "ForceField"
    game.Players.LocalPlayer.Character.RightFoot.Material = "ForceField"
    game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "ForceField"
    game.Players.LocalPlayer.Character.RightLowerLeg.Material = "ForceField"
    game.Players.LocalPlayer.Character.UpperTorso.Material = "ForceField"
    game.Players.LocalPlayer.Character.LowerTorso.Material = "ForceField"
    game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "ForceField"
    game.Players.LocalPlayer.Character.RightUpperLeg.Material = "ForceField"
    game.Players.LocalPlayer.Character.Head.Material = "ForceField"
else
    game.Players.LocalPlayer.Character.LeftHand.Material = "Plastic"
    game.Players.LocalPlayer.Character.RightHand.Material = "Plastic"
    game.Players.LocalPlayer.Character.LeftLowerArm.Material = "Plastic"
    game.Players.LocalPlayer.Character.RightLowerArm.Material = "Plastic"
    game.Players.LocalPlayer.Character.LeftUpperArm.Material = "Plastic"
    game.Players.LocalPlayer.Character.RightUpperArm.Material = "Plastic"
    game.Players.LocalPlayer.Character.LeftFoot.Material = "Plastic"
    game.Players.LocalPlayer.Character.RightFoot.Material = "Plastic"
    game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "Plastic"
    game.Players.LocalPlayer.Character.RightLowerLeg.Material = "Plastic"
    game.Players.LocalPlayer.Character.UpperTorso.Material = "Plastic"
    game.Players.LocalPlayer.Character.LowerTorso.Material = "Plastic"
    game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "Plastic"
    game.Players.LocalPlayer.Character.RightUpperLeg.Material = "Plastic"
    game.Players.LocalPlayer.Character.Head.Material = "Plastic"
end
end})

local picker = section14:colorpicker({name = "Body Cham Colour",cpname = nil,def = Color3.fromRGB(0,255,255),callback = function(color)
  LocalPlayer.Character.LeftHand.Color = color
LocalPlayer.Character.RightHand.Color = color
LocalPlayer.Character.LeftLowerArm.Color = color
LocalPlayer.Character.RightLowerArm.Color = color
LocalPlayer.Character.LeftUpperArm.Color = color
LocalPlayer.Character.RightUpperArm.Color = color
LocalPlayer.Character.LeftFoot.Color = color
LocalPlayer.Character.RightFoot.Color = color
LocalPlayer.Character.LeftLowerLeg.Color = color
LocalPlayer.Character.RightLowerLeg.Color = color
LocalPlayer.Character.UpperTorso.Color = color
LocalPlayer.Character.LowerTorso.Color = color
LocalPlayer.Character.LeftUpperLeg.Color = color
LocalPlayer.Character.RightUpperLeg.Color = color
LocalPlayer.Character.Head.Color = color
end})



_G.Save0 = game.Players.LocalPlayer.Character.Head.face.Texture


section15:toggle({name = "Super Super Happy Face",def = false,callback = function(e)
    if e then
        game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://494290547"
    else
        game.Players.LocalPlayer.Character.Head.face.Texture = _G.Save0
    end
end})

section15:toggle({name = "Blizzard Beast Mode",def = false,callback = function(e)
    if e then
        game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://209712379"
    else
        game.Players.LocalPlayer.Character.Head.face.Texture = _G.Save0
    end
end})

section15:toggle({name = "Beast Mode",def = false,callback = function(e)
    if e then
        game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://127959433"
    else
        game.Players.LocalPlayer.Character.Head.face.Texture = _G.Save0
    end
end})
section15:toggle({name = "Playful Vampire",def = false,callback = function(e)
    if e then
        game.Players.LocalPlayer.Character.Head.face.Texture = "rbxassetid://2409281591"
    else
        game.Players.LocalPlayer.Character.Head.face.Texture = _G.Save0
    end
end})

local cframetpdesync = false

local cframetpdesynctype = "Random"

local randomtpxdistance = 10

local visualizemodellol = false

local customcframetpx = 0
local customcframetpy = 0
local customcframetpz = 0

local swiperange = 5
local Msqqrange = 5

local canglelol = "Manual"
local canglelolx = 0
local cangleloly = 0
local canglelolz = 0

local lplr = game.Players.LocalPlayer -- i stole this from beanbot.

local posistiontype2 = lplr.Character.HumanoidRootPart.CFrame

local desync_stuff = {}
 -- i stole this
local r6_dummy = game:GetObjects("rbxassetid://9474737816")[1]
r6_dummy.Head.Face:Destroy()
--Memelouse#3150
for i, v in pairs(r6_dummy:GetChildren()) do
    v.Transparency = v.Name == "HumanoidRootPart" and 1 or 0.70
    v.Material = "Neon"
    v.Color = Color3.fromRGB(190, 139, 255)
    v.CanCollide = false
    v.Anchored = false
    local decal = Instance.new("Decal", r6_dummy.Torso)
    decal.Face = Enum.NormalId.Back
    decal.Transparency = 0.5
    decal.Texture = "http://www.roblox.com/asset/?id=10949683360"
    local decal2 = Instance.new("Decal", r6_dummy.Torso)
    decal2.Face = Enum.NormalId.Front
    decal2.Transparency = 0.5
    decal2.Texture = "http://www.roblox.com/asset/?id=10949683360"
end

function RandomNumberRange(a)
    return math.random(-a * 100, a * 100) / 100
end

function RandomVectorRange(a, b, c)
    return Vector3.new(RandomNumberRange(a), RandomNumberRange(b), RandomNumberRange(c))
end

game:GetService("RunService").heartbeat:Connect(
    function()
        if cframetpdesync == true then
            desync_stuff[1] = lplr.Character.HumanoidRootPart.CFrame

            local fakeCFrame = lplr.Character.HumanoidRootPart.CFrame

            if cframetpdesynctype == "Random" then
                fakeCFrame =
                    fakeCFrame *
                    CFrame.new(
                        math.random(-randomtpxdistance, randomtpxdistance),
                        math.random(-randomtpxdistance, randomtpxdistance),
                        math.random(-randomtpxdistance, randomtpxdistance)
                    )
                fakeCFrame =
                    fakeCFrame *
                    CFrame.Angles(
                        math.rad(RandomNumberRange(180)),
                        math.rad(RandomNumberRange(180)),
                        math.rad(RandomNumberRange(180))
                    )
            elseif cframetpdesynctype == "Nothing" then
                fakeCFrame = fakeCFrame * CFrame.new()
            elseif cframetpdesynctype == "Custom" then
                fakeCFrame = fakeCFrame * CFrame.new(customcframetpx, customcframetpy, customcframetpz)
            elseif cframetpdesynctype == "MsQQ" then
                fakeCFrame =
                    fakeCFrame *
                    CFrame.new(math.random(-Msqqrange, Msqqrange), 0, math.random(-Msqqrange, Msqqrange))
            elseif cframetpdesynctype == "lGfversion" then
                fakeCFrame = fakeCFrame * CFrame.new(0, -4, 0)
                fakeCFrame = fakeCFrame * CFrame.Angles(3.15, (tick() / 0.02) % (math.pi * 2), 0)
            elseif cframetpdesynctype == "LatestPos" then
                fakeCFrame = posistiontype2
            elseif cframetpdesynctype == "Layvis" then
                fakeCFrame = fakeCFrame * CFrame.new(0, -5, 0)
                fakeCFrame = fakeCFrame * CFrame.Angles(1.55, 0, (tick() / 0.02) % (math.pi * 2))
            elseif cframetpdesynctype == "SwipeX" then
                fakeCFrame = fakeCFrame * CFrame.new(math.random(-swiperange, swiperange), 0, 0)
                fakeCFrame = fakeCFrame * CFrame.Angles((tick() / 0.02) % (math.pi * 2), 0, 0)
            elseif
                cframetpdesynctype == "UndergroundTarget" and aiming.targetaim.toggablexd == true and
                    aiming.targetaim.targeting
             then
                fakeCFrame = game.Players[targetplr].Character.HumanoidRootPart.CFrame
                fakeCFrame = fakeCFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, -7, 0)
            elseif
                cframetpdesynctype == "Randomtarget" and aiming.targetaim.toggablexd == true and
                    aiming.targetaim.targeting
             then
                fakeCFrame = game.Players[targetplr].Character.HumanoidRootPart.CFrame
                fakeCFrame =
                    fakeCFrame *
                    CFrame.Angles(
                        math.rad(RandomNumberRange(180)),
                        math.rad(RandomNumberRange(180)),
                        math.rad(RandomNumberRange(180))
                    ) *
                    CFrame.new(
                        math.random(-randomtpxdistance, randomtpxdistance),
                        math.random(-randomtpxdistance, randomtpxdistance),
                        math.random(-randomtpxdistance, randomtpxdistance)
                    )
            elseif
                cframetpdesynctype == "CustomTarget" and aiming.targetaim.toggablexd == true and
                    aiming.targetaim.targeting
             then
                fakeCFrame = game.Players[targetplr].Character.HumanoidRootPart.CFrame
                fakeCFrame =
                    fakeCFrame * CFrame.Angles(0, 0, 0) *
                    CFrame.new(customcframetpx, customcframetpy, customcframetpz)
            end

            if canglelol == "Manual" then
                fakeCFrame = fakeCFrame * CFrame.Angles(canglelolx, cangleloly, canglelolz)
            elseif canglelol == "Random" then
                fakeCFrame =
                    fakeCFrame *
                    CFrame.Angles(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
            end

            if visualizemodellol == true then
                r6_dummy.Parent = workspace
                r6_dummy.HumanoidRootPart.Velocity = Vector3.new()
                r6_dummy:SetPrimaryPartCFrame(fakeCFrame)
            else
                r6_dummy.Parent = nil
            end
             --Memelouse#3150

            lplr.Character.HumanoidRootPart.CFrame = fakeCFrame

            game:GetService("RunService").RenderStepped:Wait()

            lplr.Character.HumanoidRootPart.CFrame = desync_stuff[1]
        else
            if r6_dummy.Parent ~= nil then
                r6_dummy.Parent = nil
            end
        end
    end
)

local oldIndex
oldIndex =
    hookmetamethod(
    game,
    "__index",
    newcclosure(
        function(self, key)
            if not velocitywalk == true or enablehitpartdesync == true then
                if not checkcaller() then
                    if
                        key == "CFrame" and cframetpdesync and lplr.Character and
                            lplr.Character:FindFirstChild("HumanoidRootPart") and
                            lplr.Character:FindFirstChild("Humanoid") and
                            lplr.Character:FindFirstChild("Humanoid").Health > 0
                     then
                        if self == lplr.Character.HumanoidRootPart then
                            return desync_stuff[1] or CFrame.new()
                        elseif self == lplr.Character.Head then
                            return desync_stuff[1] and
                                desync_stuff[1] +
                                    Vector3.new(0, lplr.Character.HumanoidRootPart.Size / 2 + 0.5, 0) or
                                CFrame.new()
                        end
                    end
                end
            end
            return oldIndex(self, key)
        end
    )
)






















































section20:toggle({name = "Desync", callback = function(Boolean)
    cframetpdesync = Boolean
    if cframetpdesynctype == "Random" then
        posistiontype2 = lplr.Character.HumanoidRootPart.CFrame
    end
end})





section20:toggle({name = "Custme", callback = function(Boolean)
    cframetpdesync = Boolean
     cframetpdesynctype "Custom"
       
   
end})













section20:slider({name = "Desync Cframe_X",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    customcframetpx = value
end})

section20:slider({name = "Desync Cframe_Y",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    customcframetpy = value
end})

section20:slider({name = "Desync Cframe_Z",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(value)
    customcframetpz = value
end})
local developermode = "True"
if developermode == "True" then
section20:dropdown({name = "Angle Type",def = "Random",max = 10,options = {"Random", "Manual", "Nothing"},
"Nothing",callback = function(part)
    canglelol = part
end})
end


section20:slider({name = "Angle X",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(Value)
    canglelolx = Value
end})
section20:slider({name = "Angle Y",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(Value)
    canglelolx = Value
end})
section20:slider({name = "Angle Z",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(Value)
    canglelolz = Value
end})

section20:slider({name = "Random Distance",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(Value)
    randomtpxdistance = Value
end})











game:GetService("RunService").Heartbeat:Connect(
    function()
        if getgenv().Velocityres2 then
            if
                AimlockTarget and resolvertypev22 == "Underground" and AimlockTarget.Character ~= nil and
                    AimlockTarget.Character:FindFirstChild("HumanoidRootPart")
             then
                pcall(
                    function()
                        local hrp = AimlockTarget.Character.HumanoidRootPart
                        hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
                        hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
                    end
                )
            end
        end
    end
)



RunService.RenderStepped:Connect(
    function()
        if getgenv().Velocityres2 then
            if resolvertypev22 == "Reverse" then
                getgenv().PredictionVelocity = -12.29 -- nigga its that easy faggots
                cameraparttype:Set("HumanoidRootPart")
            elseif resolvertypev22 == "Desync" then
                getgenv().PredictionVelocity = 0
            elseif resolvertypev22 == "Slingshot" then
                getgenv().PredictionVelocity = 24
                cameraparttype:Set("Head")
            elseif resolvertypev22 == "Swing" then
                getgenv().PredictionVelocity = 3
                cameraparttype:Set("HumanoidRootPart")
            end
        end
    end
)

















local resolvertypev2 = "Nothing"
local Resolverdetections = 70

local saveprediction = 0.14
local savehitbbox = "LowerTorso"










section21:toggle({name = "Resolver", callback = function(Boolean)
    Chingbing33 = Boolean
    if Chingbing33 == true then
        saveprediction = aiming.targetaim.prediction
        savehitbbox = aiming.targetaim.hitpart
        hitpartpart:Set("HumanoidRootPart")
    end
    if Chingbing33 == false then
        wait(0.1)
        aiming.targetaim.prediction = saveprediction
        hitpartpart:Set(savehitbbox)
    end
       
   
end})


section21:dropdown({name = "Resolver Type",def = "Desync",max = 10,options =    {"Nothing", "Reverse", "DetectDesync", "Desync", "Underground", "Slingshot", "Swing"},callback = function(part)
    resolvertypev2 = part
end})

section21:slider({name = " Desync Detection",def = 3, max = 200,min = 1,rounding = false,ticking = false,measuring = "",callback = function(Value)
    Resolverdetections = Value
end})

game:GetService("RunService").Heartbeat:Connect(
    function()
        if Chingbing33 then
            if
                game.Players[targetplr] and resolvertypev2 == "Underground" and
                    game.Players[targetplr].Character ~= nil and
                    game.Players[targetplr].Character:FindFirstChild("HumanoidRootPart")
             then
                pcall(
                    function()
                        local hrpb6 = game.Players[targetplr].Character.HumanoidRootPart
                        hrpb6.Velocity = Vector3.new(hrpb6.Velocity.X, 0, hrpb6.Velocity.Z)
                        hrpb6.AssemblyLinearVelocity =
                            Vector3.new(hrpb6.Velocity.X, 0, hrpb6.Velocity.Z)
                    end
                )
            end
        end
    end
)

RunService.RenderStepped:Connect(
    function()
        if Chingbing33 then
            if resolvertypev2 == "Reverse" then
                aiming.targetaim.prediction = -0.1437 -- nigga its that easy faggots
                hitboxtargetaim:Set("HumanoidRootPart")
            elseif resolvertypev2 == "Desync" then
                aiming.targetaim.prediction = 0
            elseif resolvertypev2 == "Slingshot" then
                aiming.targetaim.prediction = 0.33
                hitboxtargetaim:Set("LowerTorso")
            elseif resolvertypev2 == "Swing" then
                aiming.targetaim.prediction = 0.06
                hitboxtargetaim:Set("HumanoidRootPart")
            end
        end
    end
)

