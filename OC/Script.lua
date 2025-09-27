-- Object's Functions --
-- Add
function Add(Shape, Cframe)
local args = {
	Shape,
	Cframe
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AddObject"):InvokeServer(unpack(args))
end
-- Remove
function Remove(Path)
	print("Removing " .. Path.Name .. " On " .. Path)
	local args = {
	{
		Path
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DeleteObject"):InvokeServer(unpack(args))
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
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MoveObject"):InvokeServer(unpack(args))
end
-- Get Object --
-- Variables
local Storage = game.Workspace.Obbies[Player.Name].

-- Find Object With No Attributes
function FOWNA()
    for _, obj in ipairs(Storage:GetChildren()) do
        if next(obj:GetAttributes()) == nil then
            return obj
        end
    end
    return nil
end
-- Find Object With A Attribute
function FOWAA(Attribute, Value)
    for _, obj in ipairs(Storage:GetChildren()) do
        if obj:GetAttribute(Attribute) == Value then
            return obj
        end
    end
    return nil
end
