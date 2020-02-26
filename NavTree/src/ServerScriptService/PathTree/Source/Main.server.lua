
-- VineyardVine
-- Feb 06, 2020


local WidgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Left,  -- Widget will be initialized in floating panel
	false,   -- Widget will be initially enabled
	false,  -- Don't override the previous enabled state
	200,    -- Default width of the floating window
	300,    -- Default height of the floating window
	150,    -- Minimum width of the floating window
	150     -- Minimum height of the floating window
);


local testWidget = plugin:CreateDockWidgetPluginGui("TestWidget", WidgetInfo)
testWidget.Title = "Test Widget"  -- Optional widget title
 
local testButton = Instance.new("TextButton")
testButton.BorderSizePixel = 0
testButton.TextSize = 20
testButton.TextColor3 = Color3.new(1,0.2,0.4)
testButton.AnchorPoint = Vector2.new(0.5,0.5)
testButton.Size = UDim2.new(1,0,1,0)
testButton.Position = UDim2.new(0.5,0,0.5,0)
testButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
testButton.Text = "Click Me"
testButton.Parent = testWidget