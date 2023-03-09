getgenv().Desync_Settings = {
    Modes = {
   Up = {
       enabled = false,
       strengh = 150
   }
          Down = {
       enabled = false,
       strengh = 150
   }
      Right = {
       enabled = false,
       strengh = 150
   }
      Left = {
       enabled = true,
       strengh = 150
   }
         All = {
       enabled = false,
       strengh = 150
   }
     }
    }
    
    
    
    
    
    
    
    
    
local runService = game:GetService("RunService")
local character = script.Parent
--Up
runService.Heartbeat:Connect(function()
if getgenv().Desync_Settings.Modes.Up.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.Up.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.Up.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.Up.strengh, old_vel.Z) 
end  
end)


runService.RenderStepped:Connect(function()
if getgenv().Desync_Settings.Modes.Up.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
end
end)
--Down
runService.Heartbeat:Connect(function()
if getgenv().Desync_Settings.Modes.Down.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.Down.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.Down.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.Down.strengh, old_vel.Z) 
end  
end)


runService.RenderStepped:Connect(function()
if getgenv().Desync_Settings.Modes.Down.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
end
end)
--Right
runService.Heartbeat:Connect(function()
if getgenv().Desync_Settings.Modes.Right.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.Right.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.Right.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.Right.strengh, old_vel.Z) 
end  
end)


runService.RenderStepped:Connect(function()
if getgenv().Desync_Settings.Modes.Right.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
end
end)
--Left
--Down
runService.Heartbeat:Connect(function()
if getgenv().Desync_Settings.Modes.Left.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.Left.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.Left.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.Left.strengh, old_vel.Z) 
end  
end)


runService.RenderStepped:Connect(function()
if getgenv().Desync_Settings.Modes.Left.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
end
end)
--All
--Up
runService.Heartbeat:Connect(function()
if getgenv().Desync_Settings.Modes.All.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.Up.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.Up.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.Up.strengh, old_vel.Z) 
end  
end)


runService.RenderStepped:Connect(function()
if getgenv().Desync_Settings.Modes.All.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
end
end)
--Down
runService.Heartbeat:Connect(function()
if getgenv().Desync_Settings.Modes.All.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.All.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.All.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.All.strengh, old_vel.Z) 
end  
end)


runService.RenderStepped:Connect(function()
if getgenv().Desync_Settings.Modes.All.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
end
end)
--Right
runService.Heartbeat:Connect(function()
if getgenv().Desync_Settings.Modes.All.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.All.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.All.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, Desync_Settings.Modes.All.strengh, old_vel.Z) 
end  
end)


runService.RenderStepped:Connect(function()
if getgenv().Desync_Settings.Modes.All.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
end
end)
--Left
--Down
runService.Heartbeat:Connect(function()
if getgenv().Desync_Settings.Modes.All.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.All.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.All.strengh, old_vel.Z)   
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, -Desync_Settings.Modes.All.strengh, old_vel.Z) 
end  
end)


runService.RenderStepped:Connect(function()
if getgenv().Desync_Settings.Modes.All.enabled then
    old_vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(old_vel.X, 0, old_vel.Z)    
end
end)