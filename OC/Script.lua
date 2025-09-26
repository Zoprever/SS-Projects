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
	local args = {
	{
		Path
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DeleteObject"):InvokeServer(unpack(args))
end
-- Set
function Set(Path, CFrame, Size)
local args = {
	{
		{
			Path,
			CFrame or Path.CFrame,
			Size or Path.Size
		}
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MoveObject"):InvokeServer(unpack(args))
end
