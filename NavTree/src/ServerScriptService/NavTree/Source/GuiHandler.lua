


local StudioWidgets = script.Parent:WaitForChild("StudioWidgets");

local VerticallyScalingListFrame = require(StudioWidgets.VerticallyScalingListFrame);
local CollapsibleTitledSection = require(StudioWidgets.CollapsibleTitledSection);


local GuiHandler = {};

GuiHandler.__index = GuiHandler;

function GuiHandler:Build()
	local MainFrame = VerticallyScalingListFrame.new("MainFrame");
	
	
	--- TOP DOWN VIEW 
		local TopView = CollapsibleTitledSection.new(
			"TopDownView",
			"Preview",
			true,
			false,
			false
		);
		local Viewport do
			Viewport = Instance.new("ViewportFrame");
			Viewport.BackgroundTransparency = .5;
			Viewport.Size = UDim2.new(1,0,1,0);
			
			local AspectRatio = Instance.new("UIAspectRatioConstraint");
			AspectRatio.AspectRatio = .5;
			AspectRatio.DominantAxis = Enum.DominantAxis.Width
		end
		Viewport.Parent = TopView:GetContentsFrame();
	MainFrame:AddChild(Viewport);
	---
	
	
	MainFrame:AddBottomPadding();
	return MainFrame:GetFrame();
end;

return GuiHandler;