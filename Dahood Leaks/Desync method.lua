utility:Connect(rs.Heartbeat, function()
    if isAlive(lplr) then
        if library.flags["hdesync_enabled"] then
            if desync_stuff["cfr"] == nil then
                desync_stuff["cfr"] = lplr.Character.HumanoidRootPart.CFrame
            end
            desync_stuff["vel"] = lplr.Character.HumanoidRootPart.Velocity

            lplr.Character.HumanoidRootPart.CFrame = desync_stuff["cfr"] * CFrame.Angles(0, (tick()/5)%(math.pi*2), 0)

            lplr.Character.HumanoidRootPart.Velocity = Vector3.new(1, 1, 1) * -(2^16)

            rs.RenderStepped:Wait()

            lplr.Character.HumanoidRootPart.Velocity = desync_stuff["vel"]
        else
            desync_stuff["cfr"] = nil
        end
    else
        desync_stuff["cfr"] = nil
    end
end)