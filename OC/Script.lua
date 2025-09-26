-- Object's Functions --
-- Add

-- Remove

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
