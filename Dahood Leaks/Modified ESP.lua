--Settings--
local ESP = {
    TextColor = Color3.fromRGB(255,255,255),
    EquippedColor = Color3.fromRGB(255,255,255),
    DistanceColor = Color3.fromRGB(255,255,255),
    TracerColor = Color3.fromRGB(255,255,255),
    LowerHealthColor = Color3.fromRGB(0,0,0),
    HigherHealthColor = Color3.fromRGB(0, 255, 0),
    Color = Color3.fromRGB(255,255,255),
    Enabled = false,
    Boxes = false,
    Names = false,
    Distance = false,
    HealthBar = false,
    Equipped = false,
    Font = 2,
    FontSize = 13,
    BoxShift = CFrame.new(0,-.3,0),
	BoxSize = Vector3.new(4,6,0),
    FaceCamera = false,
    TeamColor = true,
    Thickness = 0.8,
    AttachShift = 1,
    TeamMates = true,
    MaxShownDistance = 200,
    Players = true,
    Tracers = false,
    Objects = setmetatable({}, {__mode="kv"}),
    Overrides = {},

}

--Declarations--
local cam = workspace.CurrentCamera
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()

local V3new = Vector3.new
local WorldToViewportPoint = cam.WorldToViewportPoint

--Functions--
local function Draw(obj, props)
	local new = Drawing.new(obj)
	
	props = props or {}
	for i,v in pairs(props) do
		new[i] = v
	end
	return new
end

function ESP:GetTeam(p)
	local ov = self.Overrides.GetTeam
	if ov then
		return ov(p)
	end
	
	return p and p.Team
end

function ESP:IsTeamMate(p)
    local ov = self.Overrides.IsTeamMate
	if ov then
		return ov(p)
    end
    
    return self:GetTeam(p) == self:GetTeam(plr)
end

function ESP:GetColor(obj)
	local ov = self.Overrides.GetColor
	if ov then
		return ov(obj)
    end
    local p = self:GetPlrFromChar(obj)
	return p and self.TeamColor and p.Team and p.Team.TeamColor.Color or self.Color
end

function ESP:GetPlrFromChar(char)
	local ov = self.Overrides.GetPlrFromChar
	if ov then
		return ov(char)
	end
	
	return plrs:GetPlayerFromCharacter(char)
end

function ESP:Toggle(bool)
    self.Enabled = bool
    if not bool then
        for i,v in pairs(self.Objects) do
            if v.Type == "Box" then --fov circle etc
                if v.Temporary then
                    v:Remove()
                else
                    for i,v in pairs(v.Components) do
                        v.Visible = false
                    end
                end
            end
        end
    end
end

function ESP:GetBox(obj)
    return self.Objects[obj]
end

function ESP:AddObjectListener(parent, options)
    local function NewListener(c)
        if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
            if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
                if not options.Validator or options.Validator(c) then
                    local box = ESP:Add(c, {
                        PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
                        Color = type(options.Color) == "function" and options.Color(c) or options.Color,
                        ColorDynamic = options.ColorDynamic,
                        Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
                        IsEnabled = options.IsEnabled,
                        RenderInNil = options.RenderInNil
                    })
                    --TODO: add a better way of passing options
                    if options.OnAdded then
                        coroutine.wrap(options.OnAdded)(box)
                    end
                end
            end
        end
    end

    if options.Recursive then
        parent.DescendantAdded:Connect(NewListener)
        for i,v in pairs(parent:GetDescendants()) do
            coroutine.wrap(NewListener)(v)
        end
    else
        parent.ChildAdded:Connect(NewListener)
        for i,v in pairs(parent:GetChildren()) do
            coroutine.wrap(NewListener)(v)
        end
    end
end

local boxBase = {}
boxBase.__index = boxBase

function boxBase:Remove()
    ESP.Objects[self.Object] = nil
    for i,v in pairs(self.Components) do
        v.Visible = false
        v:Remove()
        self.Components[i] = nil
    end
end

function boxBase:Update()
    if not self.PrimaryPart then
        --warn("not supposed to print", self.Object)
        return self:Remove()
    end

    local color
    if ESP.Highlighted == self.Object then
       color = ESP.HighlightColor
    else
        color = self.Color or self.ColorDynamic and self:ColorDynamic() or ESP:GetColor(self.Object) or ESP.Color
    end

    local allow = true
    if ESP.Overrides.UpdateAllow and not ESP.Overrides.UpdateAllow(self) then
        allow = false
    end
    if self.Player and not ESP.TeamMates and ESP:IsTeamMate(self.Player) then
        allow = false
    end
    if self.Player and not ESP.Players then
        allow = false
    end
    if self.IsEnabled and (type(self.IsEnabled) == "string" and not ESP[self.IsEnabled] or type(self.IsEnabled) == "function" and not self:IsEnabled()) then
        allow = false
    end
    if not workspace:IsAncestorOf(self.PrimaryPart) and not self.RenderInNil then
        allow = false
    end

    if not allow then
        for i,v in pairs(self.Components) do
            v.Visible = false
        end
        return
    end

    if ESP.Highlighted == self.Object then
        color = ESP.HighlightColor
    end

    --calculations--
    local cf = self.PrimaryPart.CFrame
    if ESP.FaceCamera then
        cf = CFrame.new(cf.p, cam.CFrame.p)
    end
    local size = self.Size
    local locs = {
        TopLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,size.Y/2,0),
        TopRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,size.Y/2,0),
        BottomLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,-size.Y/2,0),
        BottomRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,-size.Y/2,0),
        LegPos = cf* ESP.BoxShift * CFrame.new(size.X/75,-size.Y/2,0),
        TagPos = cf * ESP.BoxShift * CFrame.new(0,size.Y/2,0),
        Torso = cf * ESP.BoxShift
    }
    
    local Offset = 20
    local BottomOffset = 0 
    local TopLeft, Vis1 = cam:WorldToViewportPoint(locs.TopLeft.p)
    local TopRight, Vis2 = WorldToViewportPoint(cam, locs.TopRight.p)
    local BottomLeft, Vis3 = WorldToViewportPoint(cam, locs.BottomLeft.p)
    local BottomRight, Vis4 = WorldToViewportPoint(cam, locs.BottomRight.p)
    local LegPos = cam:WorldToViewportPoint(locs.LegPos.p)
    local Distance = (self.PrimaryPart.Position - plrs.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

    if ESP.Boxes and game.Players:FindFirstChild(self.PrimaryPart.Parent.Name) ~= nil and Distance <= ESP.MaxShownDistance then
        if self.Components.Quad then
            if Vis1 or Vis2 or Vis3 or Vis4 then
                self.Components.Quad.Visible = true
                self.Components.Quad.PointA = Vector2.new(TopRight.X, TopRight.Y)
                self.Components.Quad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                self.Components.Quad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                self.Components.Quad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
                self.Components.Quad.Color = color
                
                self.Components.OutlineQuad.Visible = true
                self.Components.OutlineQuad.PointA = Vector2.new(TopRight.X, TopRight.Y)
                self.Components.OutlineQuad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                self.Components.OutlineQuad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                self.Components.OutlineQuad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
            else
                self.Components.Quad.Visible = false
                self.Components.OutlineQuad.Visible = false
            end
        end
    else
        self.Components.Quad.Visible = false
        self.Components.OutlineQuad.Visible = false
    end

    if ESP.HealthBar and Distance <= ESP.MaxShownDistance and plrs:FindFirstChild(tostring(self.PrimaryPart.Parent)) then
        local pos, onscreen = cam:WorldToViewportPoint(self.PrimaryPart.Parent.HumanoidRootPart.Position)

        if onscreen then
            local Humanoid = self.PrimaryPart.Parent.Humanoid
            
            self.Components.HealthbarOutline.Visible = true 
            self.Components.HealthbarOutline.From = Vector2.new(BottomLeft.X-3.5,BottomLeft.Y+1)
            self.Components.HealthbarOutline.To = Vector2.new(TopLeft.X-3.5,TopLeft.Y-2)
            
            self.Components.Healthbar.Visible = true 
            self.Components.Healthbar.From = Vector2.new(BottomLeft.X-3.5 ,BottomLeft.Y)
            self.Components.Healthbar.Color = ESP.LowerHealthColor:lerp(ESP.HigherHealthColor, Humanoid.Health/Humanoid.MaxHealth)
            self.Components.Healthbar.To = Vector2.new(TopLeft.X-3.5,TopLeft.Y-1)
            
            else
                self.Components.Healthbar.Visible = false 
                self.Components.HealthbarOutline.Visible = false 
                
        end
        else
            self.Components.Healthbar.Visible = false 
            self.Components.HealthbarOutline.Visible = false 
    end

	if ESP.Equipped  and Distance <= ESP.MaxShownDistance and plrs:FindFirstChild(self.PrimaryPart.Parent.Name) ~= nil then 
        local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
        local Char = self.PrimaryPart.Parent
        
        if Vis5 then
            self.Components.EquippedTool.Color = ESP.EquippedColor
            self.Components.EquippedTool.Visible = true
            self.Components.EquippedTool.Position = Vector2.new(LegPos.X,LegPos.Y + BottomOffset)
            if Char:FindFirstChildOfClass("Tool") then 
                self.Components.EquippedTool.Text = tostring(Char:FindFirstChildOfClass("Tool"))
                 BottomOffset = BottomOffset + 14
                else
                    self.Components.EquippedTool.Text = ""
            end
        else
            self.Components.EquippedTool.Visible = false
        end
    else
        self.Components.EquippedTool.Visible = false
    end
    
    if ESP.Distance  and Distance <= ESP.MaxShownDistance then 
            local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
            
            if Vis5 then
                self.Components.Distance.Visible = true
                if plrs:FindFirstChild(tostring(self.PrimaryPart.Parent)) ~= nil  then 
                    self.Components.Distance.Position = Vector2.new(LegPos.X, LegPos.Y + BottomOffset)
                    BottomOffset = BottomOffset + 14
                elseif  plrs:FindFirstChild(tostring(self.PrimaryPart.Parent)) == nil then 
                    self.Components.Distance.Position = Vector2.new(TagPos.X, TagPos.Y - Offset)
                    Offset = Offset + 14
                end
                self.Components.Distance.Text = math.floor((cam.CFrame.p - cf.p).magnitude) .." studs"
                self.Components.Distance.Color = ESP.DistanceColor
            else
                self.Components.Distance.Visible = false
            end
        else
            self.Components.Distance.Visible = false
    end
	
    if ESP.Names  and Distance <= ESP.MaxShownDistance then
        local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
        
        if Vis5 then
            self.Components.Name.Visible = true
            self.Components.Name.Position = Vector2.new(TagPos.X,TagPos.Y - Offset)
            self.Components.Name.Text = self.Name
            self.Components.Name.Color = ESP.TextColor
            Offset = Offset+10
        else
            self.Components.Name.Visible = false
        end
    else
        self.Components.Name.Visible = false
    end
    
    if ESP.Tracers and Distance <= ESP.MaxShownDistance and plrs:FindFirstChild(tostring(self.PrimaryPart.Parent))  then
        local TorsoPos, Vis6 = WorldToViewportPoint(cam, locs.Torso.p)

        if Vis6 then
            self.Components.Tracer.Visible = true
            self.Components.Tracer.From = Vector2.new(TorsoPos.X,TorsoPos.Y)
            self.Components.Tracer.To = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/ESP.AttachShift)
            self.Components.Tracer.Color = ESP.TracerColor
        else
            self.Components.Tracer.Visible = false
        end
    else
        self.Components.Tracer.Visible = false
    end
end

function ESP:Add(obj, options)
    if not obj.Parent and not options.RenderInNil then
        return warn(obj, "has no parent")
    end

    local box = setmetatable({
        Name = options.Name or obj.Name,
        Type = "Box",
        Color = options.Color,--[[or self:GetColor(obj)]]
        Size = options.Size or self.BoxSize,
        Object = obj,
        Player = options.Player or plrs:GetPlayerFromCharacter(obj),
        PrimaryPart = options.PrimaryPart or obj.ClassName == "Model" and (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")) or obj:IsA("BasePart") and obj,
        Components = {},
        IsEnabled = options.IsEnabled,
        Temporary = options.Temporary,
        ColorDynamic = options.ColorDynamic,
        RenderInNil = options.RenderInNil
    }, boxBase)

    if self:GetBox(obj) then
        self:GetBox(obj):Remove()
    end
    
    
    box.Components["OutlineQuad"] = Draw("Quad", {
        Thickness = self.Thickness + 2,
        Color = Color3.fromRGB(0,0,0),
        Transparency = 1,
        Filled = false,
        Visible = self.Enabled and self.Boxes
    })

    box.Components["Quad"] = Draw("Quad", {
        Thickness = self.Thickness,
        Color = color,
        Transparency = 1,
        Filled = false,
        Visible = self.Enabled and self.Boxes
    })
    box.Components["Name"] = Draw("Text", {
		Text = box.Name,
		Color = ESP.TextColor,
		Center = true,
		Outline = true,
        Size = ESP.FontSize,
        Font = ESP.Font,
        Visible = self.Enabled and self.Names
	})
	box.Components["Distance"] = Draw("Text", {
		Color = ESP.DistanceColor,
		Center = true,
		Outline = true,
        Size = ESP.FontSize,
        Font = ESP.Font,
        Visible = self.Enabled and self.Distance
	})
	
	box.Components["EquippedTool"] = Draw("Text", {
		Color = ESP.EquippedColor,
		Center = true,
		Outline = true,
        Size = ESP.FontSize,
        Font = ESP.Font,
        Visible = self.Enabled and self.Equipped
	})
	
	
	box.Components["Tracer"] = Draw("Line", {
		Thickness = ESP.Thickness,
		Color = box.Color,
        Transparency = 1,
        Visible = self.Enabled and self.Tracers
    })

    box.Components["HealthbarOutline"] = Draw('Line',{
        Thickness = 3 ,
        Color = Color3.new(0,0,0),
        Transparency = 1,
        Visible = self.Enabled and self.HealthBar,
    })

    box.Components["Healthbar"] = Draw('Line',{
        Thickness = 1,
        Color = Color3.new(0,1,0),
        Transparency = 1,
        Visible = self.Enabled and self.HealthBar,
    })
    self.Objects[obj] = box
    
    obj.AncestryChanged:Connect(function(_, parent)
        if parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)
    obj:GetPropertyChangedSignal("Parent"):Connect(function()
        if obj.Parent == nil and ESP.AutoRemove ~= false then
            box:Remove()
        end
    end)

    local hum = obj:FindFirstChildOfClass("Humanoid")
	if hum then
        hum.Died:Connect(function()
            if ESP.AutoRemove ~= false then
                box:Remove()
            end
		end)
    end

    return box
end

local function CharAdded(char)
    local p = plrs:GetPlayerFromCharacter(char)
    if not char:FindFirstChild("HumanoidRootPart") then
        local ev
        ev = char.ChildAdded:Connect(function(c)
            if c.Name == "HumanoidRootPart" then
                ev:Disconnect()
                ESP:Add(char, {
                    Name = p.Name,
                    Player = p,
                    PrimaryPart = c
                })
            end
        end)
    else
        ESP:Add(char, {
            Name = p.Name,
            Player = p,
            PrimaryPart = char.HumanoidRootPart
        })
    end
end
local function PlayerAdded(p)
    p.CharacterAdded:Connect(CharAdded)
    if p.Character then
        coroutine.wrap(CharAdded)(p.Character)
    end
end
plrs.PlayerAdded:Connect(PlayerAdded)
for i,v in pairs(plrs:GetPlayers()) do
    if v ~= plr then
        PlayerAdded(v)
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    cam = workspace.CurrentCamera
    for i,v in (ESP.Enabled and pairs or ipairs)(ESP.Objects) do
        if v.Update then
            local s,e = pcall(v.Update, v)
            if not s then warn("[ERROR]", e, v.Object:GetFullName()) end
        end
    end
end)