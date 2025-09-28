-- Variables
local Events = game:GetService("ReplicatedStorage"):WaitForChild("Events")
local Player = game:GetService("Players").LocalPlayer
local Storage = game.Workspace.Obbies[Player.Name].Items.Parts
-- Object's Functions --
-- Add
function Add(Shape, Cframe)
local args = {
	Shape,
	Cframe
}
Events:WaitForChild("AddObject"):InvokeServer(unpack(args))
end
-- Remove
function Remove(Path)
	local args = {
	{
		Path
	}
}
Events:WaitForChild("DeleteObject"):InvokeServer(unpack(args))
end
-- Move
function Move(Path, Cframe, Size)
local args = {
	{
		{
			Path,
			Cframe or Path.CFrame,
			Size or Path.Size
		}
	}
}
Events:WaitForChild("MoveObject"):InvokeServer(unpack(args))
end
-- Get Object --
-- Variables --
-- Find Object With No Attribute
function FOWNA()
    for _, obj in ipairs(Storage:GetChildren()) do
        if obj:GetAttribute("Object") == nil then
            return obj
        end
    end
end
function AddTag(Path,Tag)
	Path:SetAttribute("Object", Tag)
end
-- Find Object With A Attribute
function FOWAA(Value)
    for _, obj in ipairs(Storage:GetChildren()) do
        if obj:GetAttribute("Object") == Value then
            return obj
        end
    end
    return nil
end
