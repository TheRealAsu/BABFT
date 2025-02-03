local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
G2L["1"]["Name"] = [[MSGISSUE]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Size"] = UDim2.new(1, 0, 1, 58);
G2L["2"]["Position"] = UDim2.new(0, 0, 0, -58);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[allscreen]];
G2L["2"]["BackgroundTransparency"] = 1;

G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(33, 34, 46);
G2L["3"]["Size"] = UDim2.new(0.497, 0, 0, 43);
G2L["3"]["Position"] = UDim2.new(0.25, 0, 0, -20);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["4"] = Instance.new("UICorner", G2L["3"]);

G2L["5"] = Instance.new("TextLabel", G2L["3"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["TextSize"] = 17;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Size"] = UDim2.new(1, 0, 0, 21);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[hello world!]];
G2L["5"]["Position"] = UDim2.new(0, 0, 0.51163, -1);

G2L["6"] = Instance.new("LocalScript", G2L["5"]);

local function C_6()
local script = G2L["6"];
	local textLabel = script.Parent
	local fullText = "This script is outdated, join the discord server to get the new one."
	textLabel.Text = ""
	local delayTime = 0.05 
	for i = 1, #fullText do
		textLabel.Text = string.sub(fullText, 1, i)
		task.wait(delayTime)
	end

end;
task.spawn(C_6);

return G2L["1"], require;
