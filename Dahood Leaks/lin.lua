

local repo = 'https://raw.githubusercontent.com/Twixks/LinoriaStuff/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Linoria Library',
    Center = true, 
    AutoShow = true,
})

local Tabs = {Main = Window:AddTab('Main'), ["UI Settings"] = Window:AddTab("Ui Settings")}


local MainTab = Tabs.Main:AddLeftTabbox()

local AimbotSection = MainTab:AddTab("Aimbot")
local SilentAimSection = MainTab:AddTab("Silent Aim")

AimbotSection:AddToggle('AimbotEnabled', {Text = "Enable", Default = false})
Toggles.AimbotEnabled:AddKeyPicker('Aimbot', {Default = 'None', SyncToggleState = false, Mode = 'Toggle', Text = 'Aimbot', NoUI = false})

AimbotSection:AddToggle("FOV", {Text = "Show FOV", Default = false}):AddColorPicker("FOVColor", {Default = Color3.fromRGB(255, 255, 255)})

AimbotSection:AddSlider('AimbotFOVSize', {Text = 'Aimbot FOV', Default = 5, Min = 1, Max = 5, Rounding = 2, Compact = false})
AimbotSection:AddDivider()

AimbotSection:AddToggle('Smoothings', {Text = "Smoothings", Default = false, ToolTip = "Makes aimbot Smoother"})
AimbotSection:AddSlider("Smoothness", {Text = "Smoothness", Default = 0.30, Min = 0.30, Max = 10, Rounding = 2, Compact = false})
AimbotSection:AddDivider()

AimbotSection:AddDropdown('AimbotHitboxDropdown', {Values = { 'Head', 'HumanoidRootPart', 'UpperTorso', 'LowerTorso' }, Default = 2 ,Multi = true, Text = 'Hitboxes', Tooltip = 'Hitbox'})
AimbotSection:AddDropdown('AimbotAirHitboxes', {Values = {"RightFoot", "LeftFoot", "Head", "HumanoidRootPart", "LowerTorso", "UpperTorso"}, Text = "Air Hitboxes", ToolTip = "Air Hitbox"})

SilentAimSection:AddToggle("SilentAimEnabled", {Text = "Enable", Default = false, ToolTip = "Enables with FOV"})
SilentAimSection:AddToggle("SilentFOV", {Text = "Show FOV", Default = false}):AddColorPicker("FOVColor", {Default = Color3.fromRGB(255, 255, 255)})
SilentAimSection:AddSlider("SilentFOVSize", {Text = "Silent Aim FOV" ,Default = 5, Min = 1, Max = 5, Rounding = 2, Compact = false})
SilentAimSection:AddDivider()

SilentAimSection:AddToggle("MissChance", {Text = "Miss Chance", Default = false,})
SilentAimSection:AddSlider("MissChanceSlider",{Text = "Miss Chances", Default = 1, Min = 1, Max = 100, Rounding = 1, Compact = true})
SilentAimSection:AddDivider()

SilentAimSection:AddToggle("TargetPriority", {Text = "Priority Mode", Default = false, ToolTip = "Targetting a player"})
Toggles.TargetPriority:AddKeyPicker('PriorTarget', {Mode = "Always" , SyncToggleState = false, Default = 'Q', NoUI = false, Text = "Priority Target"})
Toggles.TargetPriority:AddKeyPicker('RemoveTarget', {Mode = "Always" ,SyncToggleState = false, Default = 'E', NoUI = false, Text = "Remove Target"})

--SilentAimSection:AddDropdown("TargetPriorizer", {Value = {"Multi-Select", "Single-Select"}, Text = "Target Priortizing type"})
local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu")
local df1group = Tabs["UI Settings"]:AddRightGroupbox("Menu")

Library:SetWatermark("Linoria Library")

Library.KeybindFrame.Visible = false
-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton(
    "Unload",
    function()
        Library:Unload()
    end
)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker(
    "MenuKeybind",
    {Default = "RightShift", NoUI = true, Text = "Menu keybind"}
)
df1group:AddToggle("Rainbow", {Text = "Rainbow Accent Color"})
df1group:AddToggle("Keybinds", {Text = "Show Keybinds Menu", Default = true}):OnChanged(
    function()
        Library.KeybindFrame.Visible = Toggles.Keybinds.Value
    end
)

df1group:AddToggle("Watermark", {Text = "Show Watermark", Default = true}):OnChanged(
    function()
        Library:SetWatermarkVisibility(Toggles.Watermark.Value)
    end
)

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({"MenuKeybind"})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder("Private-Remake")
SaveManager:SetFolder("Private-Remake/specific-game")

SaveManager:BuildConfigSection(Tabs["UI Settings"])

ThemeManager:ApplyToTab(Tabs["UI Settings"])


