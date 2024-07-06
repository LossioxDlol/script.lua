local script = [[
local player = game.Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")
local canClimb = false
local climbSpeed = 50
local debounce = false

humanoid.Touched:Connect(function(hit)
    if debounce or not canClimb then
        return
    end

    debounce = true

    local wall = hit.Parent
    if wall:IsA("BasePart") then
        local part = wall
        while wall and wall:IsA("BasePart") do
            part = wall
            wall = wall.Parent
        end
        -- Código adicional aquí
    end

    debounce = false
end)
]]

local f = loadstring(script)
f()
