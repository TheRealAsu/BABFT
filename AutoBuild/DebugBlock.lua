-- this script will parent all the blocks in the game in the workspace
-- usable for debugging

local replicatedStorage = game:GetService("ReplicatedStorage")
local BP = replicatedStorage:FindFirstChild("BuildingParts")

if BP then
    local Copied = BP:Clone()
    Copied.Name = "BuildingParts"
    Copied.Parent = workspace

    for _, part in ipairs(Copied:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Anchored = true --
        end
    end

    for _, descendant in ipairs(Copied:GetDescendants()) do
        if descendant:IsA("Model") or descendant:IsA("BasePart") then
            local name = descendant.Name
            if name:find("BlockX") or name:find("BlockXY") or name:find("BlockXZ") or -- useless block
               name:find("BlockY") or name:find("BlockYZ") or name:find("BlockZ") then
                descendant:Destroy()
            end
            if descendant:IsA("Tool") then
                descendant:Destroy()
            end
        end
    end
end
