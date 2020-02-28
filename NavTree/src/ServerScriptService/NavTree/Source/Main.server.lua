
-- VineyardVine
-- Feb 06, 2020

local GuiHandler = require(script.Parent:WaitForChild("GuiHandler"));

wait(1)

local ToolBar = plugin:CreateToolbar("NavMesh")
local PluginButton = ToolBar:CreateButton("NavMesh", "Toggle NavMesh Plugin", "rbxassetid://4738562174")



local WidgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Left,  -- Widget will be initialized in floating panel
	true,   -- Widget will be initially enabled
	false,  -- Don't override the previous enabled state
	200,    -- Default width of the floating window
	300,    -- Default height of the floating window
	150,    -- Minimum width of the floating window
	150     -- Minimum height of the floating window
);


local Widget = plugin:CreateDockWidgetPluginGui("NavMesh", WidgetInfo)
Widget.Title = "NavMesh"  
 
PluginButton.Click:Connect(function()
	Widget.Enabled = not Widget.Enabled
end)

GuiHandler.Build().Parent = Widget;