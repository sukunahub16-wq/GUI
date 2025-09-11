--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local MarketplaceService = game:GetService("MarketplaceService");
local UserInputService = game:GetService("UserInputService");
local TweenService = game:GetService("TweenService");
local HttpService = game:GetService("HttpService");
local RunService = game:GetService("RunService");
local PlayerGui = gethui() or game:GetService("CoreGui");
local Players = game:GetService("Players");
local Player = Players.LocalPlayer;
local PlayerMouse = Player:GetMouse();
shared.RedzLibary = {};
local redzlib = {Themes={Darker={["Color Hub 1"]=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 150)),ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 180)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 150))}),["Color Hub 2"]=Color3.fromRGB(255, 255, 180),["Color Stroke"]=Color3.fromRGB(200, 200, 0),["Color Theme"]=Color3.fromRGB(88, 101, 242),["Color Text"]=Color3.fromRGB(30, 30, 30),["Color Dark Text"]=Color3.fromRGB(20, 20, 20)},Dark={["Color Hub 1"]=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 150)),ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 180)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 150))}),["Color Hub 2"]=Color3.fromRGB(255, 255, 180),["Color Stroke"]=Color3.fromRGB(200, 200, 0),["Color Theme"]=Color3.fromRGB(65, 150, 255),["Color Text"]=Color3.fromRGB(30, 30, 30),["Color Dark Text"]=Color3.fromRGB(20, 20, 20)},Purple={["Color Hub 1"]=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 150)),ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 180)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 150))}),["Color Hub 2"]=Color3.fromRGB(255, 255, 180),["Color Stroke"]=Color3.fromRGB(200, 200, 0),["Color Theme"]=Color3.fromRGB(150, 0, 255),["Color Text"]=Color3.fromRGB(30, 30, 30),["Color Dark Text"]=Color3.fromRGB(20, 20, 20)},Green={["Color Hub 1"]=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 150)),ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 180)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 150))}),["Color Hub 2"]=Color3.fromRGB(255, 255, 180),["Color Stroke"]=Color3.fromRGB(200, 200, 0),["Color Theme"]=Color3.fromRGB(50, 229, 148),["Color Text"]=Color3.fromRGB(30, 30, 30),["Color Dark Text"]=Color3.fromRGB(20, 20, 20)},Troll={["Color Hub 1"]=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 150)),ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 180)),ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 150))}),["Color Hub 2"]=Color3.fromRGB(255, 255, 180),["Color Stroke"]=Color3.fromRGB(200, 200, 0),["Color Theme"]=Color3.fromRGB(138, 36, 36),["Color Text"]=Color3.fromRGB(30, 30, 30),["Color Dark Text"]=Color3.fromRGB(20, 20, 20)}},Info={Version="1.1.0"},Save={UISize={434,247},TabSize=160,Theme="Green"},Settings={},Connection={},Instances={},Elements={},Options={},Flags={},Tabs={},Icons=loadstring(game:HttpGet("https://raw.githubusercontent.com/raelhubfunctions/Rael-hub-libary/refs/heads/main/Icons.lua"))()};
local ViewportSize = workspace.CurrentCamera.ViewportSize;
local UIScale = ViewportSize.Y / 450;
local Settings = redzlib.Settings;
local Flags = redzlib.Flags;
local SetProps, SetChildren, InsertTheme, Create;
do
	local FlatIdent_95CAC = 0;
	local Save;
	while true do
		if (FlatIdent_95CAC == 2) then
			Save = nil;
			function Save(file)
				if (readfile and isfile and isfile(file)) then
					local FlatIdent_5062 = 0;
					local decode;
					while true do
						if (0 == FlatIdent_5062) then
							decode = HttpService:JSONDecode(readfile(file));
							if (type(decode) == "table") then
								local FlatIdent_51F42 = 0;
								while true do
									if (FlatIdent_51F42 == 0) then
										if rawget(decode, "UISize") then
											redzlib.Save['UISize'] = decode['UISize'];
										end
										if rawget(decode, "TabSize") then
											redzlib.Save['TabSize'] = decode['TabSize'];
										end
										FlatIdent_51F42 = 1;
									end
									if (FlatIdent_51F42 == 1) then
										if (rawget(decode, "Theme") and VerifyTheme(decode['Theme'])) then
											redzlib.Save['Theme'] = decode['Theme'];
										end
										break;
									end
								end
							end
							break;
						end
					end
				end
			end
			FlatIdent_95CAC = 3;
		end
		if (FlatIdent_95CAC == 0) then
			function InsertTheme(Instance, Type)
				local FlatIdent_2953F = 0;
				while true do
					if (FlatIdent_2953F == 0) then
						table.insert(redzlib.Instances, {Instance=Instance,Type=Type});
						return Instance;
					end
				end
			end
			function SetChildren(Instance, Children)
				local FlatIdent_2FBEB = 0;
				while true do
					if (FlatIdent_2FBEB == 0) then
						if Children then
							table.foreach(Children, function(_, Child)
								Child.Parent = Instance;
							end);
						end
						return Instance;
					end
				end
			end
			FlatIdent_95CAC = 1;
		end
		if (FlatIdent_95CAC == 3) then
			pcall(Save, "rael hub with redz library.json");
			break;
		end
		if (FlatIdent_95CAC == 1) then
			function SetProps(Instance, Props)
				local FlatIdent_643B6 = 0;
				while true do
					if (FlatIdent_643B6 == 0) then
						if Props then
							table.foreach(Props, function(prop, value)
								Instance[prop] = value;
							end);
						end
						return Instance;
					end
				end
			end
			function Create(...)
				local FlatIdent_8D83D = 0;
				local args;
				local new;
				local Children;
				while true do
					if (FlatIdent_8D83D == 0) then
						args = {...};
						if (type(args) ~= "table") then
							return;
						end
						FlatIdent_8D83D = 1;
					end
					if (FlatIdent_8D83D == 2) then
						if (type(args[2]) == "table") then
							local FlatIdent_8199B = 0;
							while true do
								if (FlatIdent_8199B == 0) then
									SetProps(new, args[2]);
									SetChildren(new, args[3]);
									FlatIdent_8199B = 1;
								end
								if (1 == FlatIdent_8199B) then
									Children = args[3] or {};
									break;
								end
							end
						elseif (typeof(args[2]) == "Instance") then
							local FlatIdent_5ED46 = 0;
							while true do
								if (FlatIdent_5ED46 == 1) then
									SetChildren(new, args[4]);
									Children = args[4] or {};
									break;
								end
								if (FlatIdent_5ED46 == 0) then
									new.Parent = args[2];
									SetProps(new, args[3]);
									FlatIdent_5ED46 = 1;
								end
							end
						end
						return new;
					end
					if (FlatIdent_8D83D == 1) then
						new = Instance.new(args[1]);
						Children = {};
						FlatIdent_8D83D = 2;
					end
				end
			end
			FlatIdent_95CAC = 2;
		end
	end
end
local Funcs = {};
do
	local FlatIdent_E652 = 0;
	while true do
		if (0 == FlatIdent_E652) then
			Funcs.InsertCallback = function(self, tab, func)
				local FlatIdent_49AED = 0;
				while true do
					if (FlatIdent_49AED == 0) then
						if (type(func) == "function") then
							table.insert(tab, func);
						end
						return func;
					end
				end
			end;
			Funcs.FireCallback = function(self, tab, ...)
				for _, v in ipairs(tab) do
					if (type(v) == "function") then
						task.spawn(v, ...);
					end
				end
			end;
			FlatIdent_E652 = 1;
		end
		if (2 == FlatIdent_E652) then
			Funcs.GetConnectionFunctions = function(self, ConnectedFuncs, func)
				local FlatIdent_9917B = 0;
				local Connected;
				while true do
					if (FlatIdent_9917B == 0) then
						Connected = {Function=func,Connected=true};
						Connected.Disconnect = function(self)
							if self.Connected then
								local FlatIdent_99389 = 0;
								while true do
									if (FlatIdent_99389 == 0) then
										table.remove(ConnectedFuncs, table.find(ConnectedFuncs, self.Function));
										self.Connected = false;
										break;
									end
								end
							end
						end;
						FlatIdent_9917B = 1;
					end
					if (1 == FlatIdent_9917B) then
						Connected.Fire = function(self, ...)
							if self.Connected then
								task.spawn(self.Function, ...);
							end
						end;
						return Connected;
					end
				end
			end;
			Funcs.GetCallback = function(self, Configs, index)
				local FlatIdent_8CEDF = 0;
				local func;
				while true do
					if (FlatIdent_8CEDF == 1) then
						return {func};
					end
					if (FlatIdent_8CEDF == 0) then
						func = Configs[index] or Configs.Callback or function()
						end;
						if (type(func) == "table") then
							return {function(Value)
								func[1][func[2]] = Value;
							end};
						end
						FlatIdent_8CEDF = 1;
					end
				end
			end;
			break;
		end
		if (FlatIdent_E652 == 1) then
			Funcs.ToggleVisible = function(self, Obj, Bool)
				Obj.Visible = ((Bool ~= nil) and Bool) or Obj.Visible;
			end;
			Funcs.ToggleParent = function(self, Obj, Parent)
				if (Bool ~= nil) then
					Obj.Parent = Bool;
				else
					Obj.Parent = not Obj.Parent and Parent;
				end
			end;
			FlatIdent_E652 = 2;
		end
	end
end
local Connections, Connection = {}, redzlib.Connection;
do
	local FlatIdent_89940 = 0;
	local NewConnectionList;
	while true do
		if (FlatIdent_89940 == 1) then
			Connection.FireConnection = function(self, CoName, ...)
				local Connection = ((type(CoName) == "string") and Connections[CoName]) or Connections[CoName.Name];
				for _, Func in pairs(Connection) do
					task.spawn(Func, ...);
				end
			end;
			NewConnectionList({"FlagsChanged","ThemeChanged","FileSaved","ThemeChanging","OptionAdded"});
			break;
		end
		if (FlatIdent_89940 == 0) then
			NewConnectionList = nil;
			function NewConnectionList(List)
				local FlatIdent_1B1BA = 0;
				while true do
					if (FlatIdent_1B1BA == 0) then
						if (type(List) ~= "table") then
							return;
						end
						for _, CoName in ipairs(List) do
							local FlatIdent_380E8 = 0;
							local ConnectedFuncs;
							local Connect;
							while true do
								if (FlatIdent_380E8 == 2) then
									Connect.Connect = function(self, func)
										if (type(func) == "function") then
											local FlatIdent_7F9F4 = 0;
											while true do
												if (FlatIdent_7F9F4 == 0) then
													table.insert(ConnectedFuncs, func);
													return Funcs:GetConnectionFunctions(ConnectedFuncs, func);
												end
											end
										end
									end;
									Connect.Once = function(self, func)
										if (type(func) == "function") then
											local FlatIdent_39764 = 0;
											local Connected;
											local _NFunc;
											while true do
												if (FlatIdent_39764 == 2) then
													return Connected;
												end
												if (FlatIdent_39764 == 0) then
													Connected = nil;
													_NFunc = nil;
													FlatIdent_39764 = 1;
												end
												if (FlatIdent_39764 == 1) then
													function _NFunc(...)
														local FlatIdent_7909D = 0;
														while true do
															if (FlatIdent_7909D == 0) then
																task.spawn(func, ...);
																Connected:Disconnect();
																break;
															end
														end
													end
													Connected = Funcs:GetConnectionFunctions(ConnectedFuncs, _NFunc);
													FlatIdent_39764 = 2;
												end
											end
										end
									end;
									break;
								end
								if (FlatIdent_380E8 == 0) then
									ConnectedFuncs, Connect = {}, {};
									Connection[CoName] = Connect;
									FlatIdent_380E8 = 1;
								end
								if (FlatIdent_380E8 == 1) then
									Connections[CoName] = ConnectedFuncs;
									Connect.Name = CoName;
									FlatIdent_380E8 = 2;
								end
							end
						end
						break;
					end
				end
			end
			FlatIdent_89940 = 1;
		end
	end
end
local GetFlag, SetFlag, CheckFlag;
do
	local FlatIdent_64E40 = 0;
	local db;
	while true do
		if (2 == FlatIdent_64E40) then
			Connection.FlagsChanged:Connect(function(Flag, Value)
				local FlatIdent_40B41 = 0;
				local ScriptFile;
				while true do
					if (FlatIdent_40B41 == 0) then
						ScriptFile = Settings.ScriptFile;
						if (not db and ScriptFile and writefile) then
							local FlatIdent_AC2F = 0;
							local Success;
							local Encoded;
							while true do
								if (FlatIdent_AC2F == 2) then
									if Success then
										local FlatIdent_8435E = 0;
										local Success;
										while true do
											if (FlatIdent_8435E == 0) then
												Success = pcall(writefile, ScriptFile, Encoded);
												if Success then
													Connection:FireConnection("FileSaved", "Script-Flags", ScriptFile, Encoded);
												end
												break;
											end
										end
									end
									break;
								end
								if (FlatIdent_AC2F == 1) then
									db = false;
									Success, Encoded = pcall(function()
										return HttpService:JSONEncode(Flags);
									end);
									FlatIdent_AC2F = 2;
								end
								if (FlatIdent_AC2F == 0) then
									db = true;
									task.wait(0.1);
									FlatIdent_AC2F = 1;
								end
							end
						end
						break;
					end
				end
			end);
			break;
		end
		if (FlatIdent_64E40 == 1) then
			function SetFlag(Flag, Value)
				if (Flag and ((Value ~= Flags[Flag]) or (type(Value) == "table"))) then
					local FlatIdent_4B897 = 0;
					while true do
						if (0 == FlatIdent_4B897) then
							Flags[Flag] = Value;
							Connection:FireConnection("FlagsChanged", Flag, Value);
							break;
						end
					end
				end
			end
			db = nil;
			FlatIdent_64E40 = 2;
		end
		if (FlatIdent_64E40 == 0) then
			function CheckFlag(Name)
				return (type(Name) == "string") and (Flags[Name] ~= nil);
			end
			function GetFlag(Name)
				return (type(Name) == "string") and Flags[Name];
			end
			FlatIdent_64E40 = 1;
		end
	end
end
local ScreenGui = Create("ScreenGui", PlayerGui, {Name=(redzLibName or "rael hub with redz library")}, {Create("UIScale", {Scale=UIScale,Name="Scale"})});
local ScreenFind = PlayerGui:FindFirstChild(ScreenGui.Name);
if (ScreenFind and (ScreenFind ~= ScreenGui)) then
	ScreenFind:Destroy();
end
local function GetStr(val)
	local FlatIdent_98388 = 0;
	while true do
		if (FlatIdent_98388 == 0) then
			if (type(val) == "function") then
				return val();
			end
			return val;
		end
	end
end
local function ConnectSave(Instance, func)
	Instance.InputBegan:Connect(function(Input)
		local FlatIdent_5F1CB = 0;
		while true do
			if (FlatIdent_5F1CB == 0) then
				if ((Input.UserInputType == Enum.UserInputType.MouseButton1) or (Input.UserInputType == Enum.UserInputType.Touch)) then
					while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						task.wait();
					end
				end
				func();
				break;
			end
		end
	end);
end
local function CreateTween(Configs)
	local FlatIdent_47ABB = 0;
	local Instance;
	local Prop;
	local NewVal;
	local Time;
	local TweenWait;
	local TweenInfo;
	local Tween;
	while true do
		if (2 == FlatIdent_47ABB) then
			TweenWait = Configs[5] or Configs.wait or false;
			TweenInfo = TweenInfo.new(Time, Enum.EasingStyle.Quint);
			FlatIdent_47ABB = 3;
		end
		if (FlatIdent_47ABB == 4) then
			if TweenWait then
				Tween.Completed:Wait();
			end
			return Tween;
		end
		if (FlatIdent_47ABB == 0) then
			Instance = Configs[1] or Configs.Instance;
			Prop = Configs[2] or Configs.Prop;
			FlatIdent_47ABB = 1;
		end
		if (FlatIdent_47ABB == 1) then
			NewVal = Configs[3] or Configs.NewVal;
			Time = Configs[4] or Configs.Time or 0.5;
			FlatIdent_47ABB = 2;
		end
		if (3 == FlatIdent_47ABB) then
			Tween = TweenService:Create(Instance, TweenInfo, {[Prop]=NewVal});
			Tween:Play();
			FlatIdent_47ABB = 4;
		end
	end
end
local function MakeDrag(Instance)
	local FlatIdent_772BD = 0;
	while true do
		if (FlatIdent_772BD == 0) then
			task.spawn(function()
				local FlatIdent_494F6 = 0;
				local DragStart;
				local StartPos;
				local InputOn;
				local Update;
				while true do
					if (FlatIdent_494F6 == 2) then
						Instance.MouseButton1Down:Connect(function()
							InputOn = true;
						end);
						Instance.InputBegan:Connect(function(Input)
							if ((Input.UserInputType == Enum.UserInputType.MouseButton1) or (Input.UserInputType == Enum.UserInputType.Touch)) then
								local FlatIdent_67691 = 0;
								while true do
									if (FlatIdent_67691 == 1) then
										while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
											local FlatIdent_943B1 = 0;
											while true do
												if (FlatIdent_943B1 == 0) then
													RunService.Heartbeat:Wait();
													if InputOn then
														Update(Input);
													end
													break;
												end
											end
										end
										InputOn = false;
										break;
									end
									if (FlatIdent_67691 == 0) then
										StartPos = Instance.Position;
										DragStart = Input.Position;
										FlatIdent_67691 = 1;
									end
								end
							end
						end);
						break;
					end
					if (FlatIdent_494F6 == 0) then
						SetProps(Instance, {Active=true,AutoButtonColor=false});
						DragStart, StartPos, InputOn = nil;
						FlatIdent_494F6 = 1;
					end
					if (FlatIdent_494F6 == 1) then
						Update = nil;
						function Update(Input)
							local FlatIdent_21DDC = 0;
							local delta;
							local Position;
							while true do
								if (FlatIdent_21DDC == 1) then
									CreateTween({Instance,"Position",Position,0.35});
									break;
								end
								if (FlatIdent_21DDC == 0) then
									delta = Input.Position - DragStart;
									Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + (delta.X / UIScale), StartPos.Y.Scale, StartPos.Y.Offset + (delta.Y / UIScale));
									FlatIdent_21DDC = 1;
								end
							end
						end
						FlatIdent_494F6 = 2;
					end
				end
			end);
			return Instance;
		end
	end
end
local function VerifyTheme(Theme)
	for name, _ in pairs(redzlib.Themes) do
		if (name == Theme) then
			return true;
		end
	end
end
local function SaveJson(FileName, save)
	if writefile then
		local FlatIdent_284EA = 0;
		local json;
		while true do
			if (FlatIdent_284EA == 0) then
				json = HttpService:JSONEncode(save);
				writefile(FileName, json);
				break;
			end
		end
	end
end
local Theme = redzlib.Themes[redzlib.Save.Theme];
local function AddEle(Name, Func)
	redzlib.Elements[Name] = Func;
end
local function Make(Ele, Instance, props, ...)
	local FlatIdent_67517 = 0;
	local Element;
	while true do
		if (FlatIdent_67517 == 0) then
			Element = redzlib.Elements[Ele](Instance, props, ...);
			return Element;
		end
	end
end
AddEle("Corner", function(parent, CornerRadius)
	local FlatIdent_628E3 = 0;
	local New;
	while true do
		if (FlatIdent_628E3 == 0) then
			New = SetProps(Create("UICorner", parent, {CornerRadius=(CornerRadius or UDim.new(0, 7))}), props);
			return New;
		end
	end
end);
AddEle("Stroke", function(parent, props, ...)
	local FlatIdent_2E34E = 0;
	local args;
	local New;
	while true do
		if (FlatIdent_2E34E == 0) then
			args = {...};
			New = InsertTheme(SetProps(Create("UIStroke", parent, {Color=(args[1] or Theme["Color Stroke"]),Thickness=(args[2] or 1),ApplyStrokeMode="Border"}), props), "Stroke");
			FlatIdent_2E34E = 1;
		end
		if (FlatIdent_2E34E == 1) then
			return New;
		end
	end
end);
AddEle("Button", function(parent, props, ...)
	local FlatIdent_4223E = 0;
	local args;
	local New;
	while true do
		if (FlatIdent_4223E == 0) then
			args = {...};
			New = InsertTheme(SetProps(Create("TextButton", parent, {Text="",Size=UDim2.fromScale(1, 1),BackgroundColor3=Theme["Color Hub 2"],AutoButtonColor=false}), props), "Frame");
			FlatIdent_4223E = 1;
		end
		if (FlatIdent_4223E == 1) then
			New.MouseEnter:Connect(function()
				New.BackgroundTransparency = 0.4;
			end);
			New.MouseLeave:Connect(function()
				New.BackgroundTransparency = 0;
			end);
			FlatIdent_4223E = 2;
		end
		if (FlatIdent_4223E == 2) then
			if args[1] then
				New.Activated:Connect(args[1]);
			end
			return New;
		end
	end
end);
AddEle("Gradient", function(parent, props, ...)
	local args = {...};
	local New = InsertTheme(SetProps(Create("UIGradient", parent, {Color=Theme["Color Hub 1"]}), props), "Gradient");
	return New;
end);
local function ButtonFrame(Instance, Title, Description, HolderSize)
	local FlatIdent_28855 = 0;
	local TitleL;
	local DescL;
	local Frame;
	local Label;
	while true do
		if (FlatIdent_28855 == 3) then
			Label:SetDesc(Description);
			return Frame, Label;
		end
		if (0 == FlatIdent_28855) then
			TitleL = InsertTheme(Create("TextLabel", {Font=Enum.Font.GothamMedium,TextColor3=Theme["Color Text"],Size=UDim2.new(1, -20),AutomaticSize="Y",Position=UDim2.new(0, 0, 0.5),AnchorPoint=Vector2.new(0, 0.5),BackgroundTransparency=1,TextTruncate="AtEnd",TextSize=10,TextXAlignment="Left",Text="",RichText=true}), "Text");
			DescL = InsertTheme(Create("TextLabel", {Font=Enum.Font.Gotham,TextColor3=Theme["Color Dark Text"],Size=UDim2.new(1, -20),AutomaticSize="Y",Position=UDim2.new(0, 12, 0, 15),BackgroundTransparency=1,TextWrapped=true,TextSize=8,TextXAlignment="Left",Text="",RichText=true}), "DarkText");
			Frame = Make("Button", Instance, {Size=UDim2.new(1, 0, 0, 25),AutomaticSize="Y",Name="Option"});
			FlatIdent_28855 = 1;
		end
		if (FlatIdent_28855 == 2) then
			Label.SetTitle = function(self, NewTitle)
				if ((type(NewTitle) == "string") and (NewTitle:gsub(" ", ""):len() > 0)) then
					TitleL.Text = NewTitle;
				end
			end;
			Label.SetDesc = function(self, NewDesc)
				if ((type(NewDesc) == "string") and (NewDesc:gsub(" ", ""):len() > 0)) then
					local FlatIdent_39FCB = 0;
					while true do
						if (FlatIdent_39FCB == 0) then
							DescL.Visible = true;
							DescL.Text = NewDesc;
							FlatIdent_39FCB = 1;
						end
						if (FlatIdent_39FCB == 1) then
							LabelHolder.Position = UDim2.new(0, 10, 0);
							LabelHolder.AnchorPoint = Vector2.new(0, 0);
							break;
						end
					end
				else
					local FlatIdent_7F3C8 = 0;
					while true do
						if (FlatIdent_7F3C8 == 0) then
							DescL.Visible = false;
							DescL.Text = "";
							FlatIdent_7F3C8 = 1;
						end
						if (1 == FlatIdent_7F3C8) then
							LabelHolder.Position = UDim2.new(0, 10, 0.5);
							LabelHolder.AnchorPoint = Vector2.new(0, 0.5);
							break;
						end
					end
				end
			end;
			Label:SetTitle(Title);
			FlatIdent_28855 = 3;
		end
		if (FlatIdent_28855 == 1) then
			Make("Corner", Frame, UDim.new(0, 6));
			LabelHolder = Create("Frame", Frame, {AutomaticSize="Y",BackgroundTransparency=1,Size=HolderSize,Position=UDim2.new(0, 10, 0),AnchorPoint=Vector2.new(0, 0)}, {Create("UIListLayout", {SortOrder="LayoutOrder",VerticalAlignment="Center",Padding=UDim.new(0, 2)}),Create("UIPadding", {PaddingBottom=UDim.new(0, 5),PaddingTop=UDim.new(0, 5)}),TitleL,DescL});
			Label = {};
			FlatIdent_28855 = 2;
		end
	end
end
local function GetColor(Instance)
	local FlatIdent_3F7F4 = 0;
	while true do
		if (0 == FlatIdent_3F7F4) then
			if Instance:IsA("Frame") then
				return "BackgroundColor3";
			elseif Instance:IsA("ImageLabel") then
				return "ImageColor3";
			elseif Instance:IsA("TextLabel") then
				return "TextColor3";
			elseif Instance:IsA("ScrollingFrame") then
				return "ScrollBarImageColor3";
			elseif Instance:IsA("UIStroke") then
				return "Color";
			end
			return "";
		end
	end
end
redzlib.GetIcon = function(self, IconName)
	local FlatIdent_43626 = 0;
	while true do
		if (FlatIdent_43626 == 1) then
			for Name, Icon in pairs(redzlib.Icons) do
				local FlatIdent_3CB5D = 0;
				while true do
					if (0 == FlatIdent_3CB5D) then
						Name = Name:gsub("lucide", ""):gsub("-", "");
						if (Name == IconName) then
							return Icon;
						end
						break;
					end
				end
			end
			for Name, Icon in pairs(redzlib.Icons) do
				local FlatIdent_957A4 = 0;
				while true do
					if (FlatIdent_957A4 == 0) then
						Name = Name:gsub("lucide", ""):gsub("-", "");
						if Name:find(IconName) then
							return Icon;
						end
						break;
					end
				end
			end
			FlatIdent_43626 = 2;
		end
		if (0 == FlatIdent_43626) then
			if (IconName:find("rbxassetid://") or (IconName:len() < 1)) then
				return IconName;
			end
			IconName = IconName:lower():gsub("lucide", ""):gsub("-", "");
			FlatIdent_43626 = 1;
		end
		if (FlatIdent_43626 == 2) then
			return IconName;
		end
	end
end;
redzlib.SetTheme = function(self, NewTheme, saveTheme)
	local FlatIdent_71EE8 = 0;
	while true do
		if (FlatIdent_71EE8 == 0) then
			if not VerifyTheme(NewTheme) then
				return;
			end
			redzlib.Save.Theme = NewTheme;
			FlatIdent_71EE8 = 1;
		end
		if (FlatIdent_71EE8 == 2) then
			Connection:FireConnection("ThemeChanged", NewTheme);
			table.foreach(redzlib.Instances, function(_, Val)
				if (Val.Type == "Gradient") then
					Val.Instance.Color = Theme["Color Hub 1"];
				elseif (Val.Type == "Frame") then
					Val.Instance.BackgroundColor3 = Theme["Color Hub 2"];
				elseif (Val.Type == "Stroke") then
					Val.Instance[GetColor(Val.Instance)] = Theme["Color Stroke"];
				elseif (Val.Type == "Theme") then
					Val.Instance[GetColor(Val.Instance)] = Theme["Color Theme"];
				elseif (Val.Type == "Text") then
					Val.Instance[GetColor(Val.Instance)] = Theme["Color Text"];
				elseif (Val.Type == "DarkText") then
					Val.Instance[GetColor(Val.Instance)] = Theme["Color Dark Text"];
				elseif (Val.Type == "ScrollBar") then
					Val.Instance[GetColor(Val.Instance)] = Theme["Color Theme"];
				end
			end);
			break;
		end
		if (1 == FlatIdent_71EE8) then
			if (saveTheme == true) then
				SaveJson("rael hub with redz library.json", redzlib.Save);
			end
			Theme = redzlib.Themes[NewTheme];
			FlatIdent_71EE8 = 2;
		end
	end
end;
redzlib.SetScreenTitle = function(self)
end;
redzlib.SetScale = function(self, NewScale)
	local FlatIdent_21CA5 = 0;
	while true do
		if (FlatIdent_21CA5 == 0) then
			NewScale = ViewportSize.Y / math.clamp(NewScale, 300, 2000);
			UIScale, ScreenGui.Scale.Scale = NewScale, NewScale;
			break;
		end
	end
end;
redzlib.MakeWindow = function(self, Configs)
	local WTitle = Configs[1] or Configs.Name or Configs.Title or "rael hub with redz library";
	local WMiniText = Configs[2] or Configs.SubTitle or "by : Laelmano24";
	Settings.ScriptFile = Configs[3] or Configs.SaveFolder or false;
	local releasemouse = Configs[4] or Configs.ReleaseMouse or false;
	local function LoadFile()
		local FlatIdent_3ACCC = 0;
		local File;
		local s;
		local r;
		while true do
			if (FlatIdent_3ACCC == 1) then
				if (File == "") then
					return;
				end
				if (not readfile or not isfile) then
					return;
				end
				FlatIdent_3ACCC = 2;
			end
			if (FlatIdent_3ACCC == 0) then
				File = Settings.ScriptFile;
				if (type(File) ~= "string") then
					return;
				end
				FlatIdent_3ACCC = 1;
			end
			if (FlatIdent_3ACCC == 2) then
				s, r = pcall(isfile, File);
				if (s and r) then
					local FlatIdent_90113 = 0;
					local s;
					local _Flags;
					while true do
						if (FlatIdent_90113 == 0) then
							s, _Flags = pcall(readfile, File);
							if (s and (type(_Flags) == "string")) then
								local FlatIdent_1ADAD = 0;
								local s;
								local r;
								while true do
									if (FlatIdent_1ADAD == 0) then
										s, r = pcall(function()
											return HttpService:JSONDecode(_Flags);
										end);
										Flags = (s and r) or {};
										break;
									end
								end
							end
							break;
						end
					end
				end
				break;
			end
		end
	end
	LoadFile();
	local function MouseFree()
		local FlatIdent_67F21 = 0;
		while true do
			if (FlatIdent_67F21 == 0) then
				UserInputService.MouseIconEnabled = true;
				UserInputService.MouseBehavior = Enum.MouseBehavior.Default;
				break;
			end
		end
	end
	local UISizeX, UISizeY = unpack(redzlib.Save.UISize);
	local MainFrame = InsertTheme(Create("ImageButton", ScreenGui, {Size=UDim2.fromOffset(UISizeX, UISizeY),Position=UDim2.new(0.5, -UISizeX / 2, 0.5, -UISizeY / 2),BackgroundTransparency=0.03,Name="Hub"}), "Main");
	Make("Gradient", MainFrame, {Rotation=45});
	MakeDrag(MainFrame);
	local CloseInterface = UserInputService.InputBegan:Connect(function(input, gameProcessed)
		local FlatIdent_8EA6E = 0;
		while true do
			if (FlatIdent_8EA6E == 0) then
				if gameProcessed then
					return;
				end
				if (input.KeyCode == Enum.KeyCode.RightControl) then
					MainFrame.Visible = not MainFrame.Visible;
				end
				break;
			end
		end
	end);
	if shared.RedzLibary.ConnectMouse then
		shared.RedzLibary.ConnectMouse:Disconnect();
		shared.RedzLibary.ConnectMouse = nil;
		UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter;
	end
	if releasemouse then
		shared.RedzLibary.ConnectMouse = RunService.RenderStepped:Connect(function()
			if MainFrame.Visible then
				MouseFree();
			end
		end);
	end
	local MainCorner = Make("Corner", MainFrame);
	local Components = Create("Folder", MainFrame, {Name="Components"});
	local DropdownHolder = Create("Folder", ScreenGui, {Name="Dropdown"});
	local TopBar = Create("Frame", Components, {Size=UDim2.new(1, 0, 0, 28),BackgroundTransparency=1,Name="Top Bar"});
	local Title = InsertTheme(Create("TextLabel", TopBar, {Position=UDim2.new(0, 15, 0.5),AnchorPoint=Vector2.new(0, 0.5),AutomaticSize="XY",Text=WTitle,TextXAlignment="Left",TextSize=12,TextColor3=Theme["Color Text"],BackgroundTransparency=1,Font=Enum.Font.GothamMedium,Name="Title"}, {InsertTheme(Create("TextLabel", {Size=UDim2.fromScale(0, 1),AutomaticSize="X",AnchorPoint=Vector2.new(0, 1),Position=UDim2.new(1, 5, 0.9),Text=WMiniText,TextColor3=Theme["Color Dark Text"],BackgroundTransparency=1,TextXAlignment="Left",TextYAlignment="Bottom",TextSize=8,Font=Enum.Font.Gotham,Name="SubTitle"}), "DarkText")}), "Text");
	local MainScroll = InsertTheme(Create("ScrollingFrame", Components, {Size=UDim2.new(0, redzlib.Save.TabSize, 1, -TopBar.Size.Y.Offset),ScrollBarImageColor3=Theme["Color Theme"],Position=UDim2.new(0, 0, 1, 0),AnchorPoint=Vector2.new(0, 1),ScrollBarThickness=1.5,BackgroundTransparency=1,ScrollBarImageTransparency=0.2,CanvasSize=UDim2.new(),AutomaticCanvasSize="Y",ScrollingDirection="Y",BorderSizePixel=0,Name="Tab Scroll"}, {Create("UIPadding", {PaddingLeft=UDim.new(0, 10),PaddingRight=UDim.new(0, 10),PaddingTop=UDim.new(0, 10),PaddingBottom=UDim.new(0, 10)}),Create("UIListLayout", {Padding=UDim.new(0, 5)})}), "ScrollBar");
	local Containers = Create("Frame", Components, {Size=UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset),AnchorPoint=Vector2.new(1, 1),Position=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1,ClipsDescendants=true,Name="Containers"});
	local ControlSize1, ControlSize2 = MakeDrag(Create("ImageButton", MainFrame, {Size=UDim2.new(0, 35, 0, 35),Position=MainFrame.Size,Active=true,AnchorPoint=Vector2.new(0.8, 0.8),BackgroundTransparency=1,Name="Control Hub Size"})), MakeDrag(Create("ImageButton", MainFrame, {Size=UDim2.new(0, 20, 1, -30),Position=UDim2.new(0, MainScroll.Size.X.Offset, 1, 0),AnchorPoint=Vector2.new(0.5, 1),Active=true,BackgroundTransparency=1,Name="Control Tab Size"}));
	local function ControlSize()
		local FlatIdent_33DE6 = 0;
		local Pos1;
		local Pos2;
		while true do
			if (FlatIdent_33DE6 == 2) then
				Containers.Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset);
				MainFrame.Size = ControlSize1.Position;
				break;
			end
			if (FlatIdent_33DE6 == 1) then
				ControlSize2.Position = UDim2.new(0, math.clamp(Pos2.X.Offset, 135, 250), 1, 0);
				MainScroll.Size = UDim2.new(0, ControlSize2.Position.X.Offset, 1, -TopBar.Size.Y.Offset);
				FlatIdent_33DE6 = 2;
			end
			if (0 == FlatIdent_33DE6) then
				Pos1, Pos2 = ControlSize1.Position, ControlSize2.Position;
				ControlSize1.Position = UDim2.fromOffset(math.clamp(Pos1.X.Offset, 430, 1000), math.clamp(Pos1.Y.Offset, 200, 500));
				FlatIdent_33DE6 = 1;
			end
		end
	end
	ControlSize1:GetPropertyChangedSignal("Position"):Connect(ControlSize);
	ControlSize2:GetPropertyChangedSignal("Position"):Connect(ControlSize);
	ConnectSave(ControlSize1, function()
		if not Minimized then
			local FlatIdent_394C = 0;
			while true do
				if (0 == FlatIdent_394C) then
					redzlib.Save.UISize = {MainFrame.Size.X.Offset,MainFrame.Size.Y.Offset};
					SaveJson("rael hub with redz library.json", redzlib.Save);
					break;
				end
			end
		end
	end);
	ConnectSave(ControlSize2, function()
		local FlatIdent_1D164 = 0;
		while true do
			if (0 == FlatIdent_1D164) then
				redzlib.Save.TabSize = MainScroll.Size.X.Offset;
				SaveJson("rael hub with redz library.json", redzlib.Save);
				break;
			end
		end
	end);
	local ButtonsFolder = Create("Folder", TopBar, {Name="Buttons"});
	local CloseButton = Create("ImageButton", {Size=UDim2.new(0, 14, 0, 14),Position=UDim2.new(1, -10, 0.5),AnchorPoint=Vector2.new(1, 0.5),BackgroundTransparency=1,Image="rbxassetid://10747384394",AutoButtonColor=false,Name="Close"});
	local MinimizeButton = SetProps(CloseButton:Clone(), {Position=UDim2.new(1, -35, 0.5),Image="rbxassetid://10734896206",Name="Minimize"});
	SetChildren(ButtonsFolder, {CloseButton,MinimizeButton});
	local Minimized, SaveSize, WaitClick;
	local Window, FirstTab = {}, false;
	Window.CloseBtn = function(self)
		local Dialog = Window:Dialog({Title="Close",Text="Are you sure you want to close this script??",Options={{"Confirm",function()
			ScreenGui:Destroy();
		end},{"Cancel"}}});
	end;
	Window.MinimizeBtn = function(self)
		if WaitClick then
			return;
		end
		WaitClick = true;
		if Minimized then
			local FlatIdent_4DBE1 = 0;
			while true do
				if (FlatIdent_4DBE1 == 2) then
					Minimized = false;
					break;
				end
				if (1 == FlatIdent_4DBE1) then
					ControlSize1.Visible = true;
					ControlSize2.Visible = true;
					FlatIdent_4DBE1 = 2;
				end
				if (FlatIdent_4DBE1 == 0) then
					MinimizeButton.Image = "rbxassetid://10734896206";
					CreateTween({MainFrame,"Size",SaveSize,0.25,true});
					FlatIdent_4DBE1 = 1;
				end
			end
		else
			local FlatIdent_24439 = 0;
			while true do
				if (FlatIdent_24439 == 2) then
					CreateTween({MainFrame,"Size",UDim2.fromOffset(MainFrame.Size.X.Offset, 28),0.25,true});
					Minimized = true;
					break;
				end
				if (FlatIdent_24439 == 0) then
					MinimizeButton.Image = "rbxassetid://10734924532";
					SaveSize = MainFrame.Size;
					FlatIdent_24439 = 1;
				end
				if (FlatIdent_24439 == 1) then
					ControlSize1.Visible = false;
					ControlSize2.Visible = false;
					FlatIdent_24439 = 2;
				end
			end
		end
		WaitClick = false;
	end;
	Window.Minimize = function(self)
		MainFrame.Visible = not MainFrame.Visible;
	end;
	Window.AddMinimizeButton = function(self, Configs)
		local FlatIdent_1DFAF = 0;
		local Button;
		local Stroke;
		local Corner;
		while true do
			if (FlatIdent_1DFAF == 2) then
				SetProps(Button, Configs.Button);
				Button.Activated:Connect(Window.Minimize);
				FlatIdent_1DFAF = 3;
			end
			if (FlatIdent_1DFAF == 0) then
				Button = MakeDrag(Create("ImageButton", ScreenGui, {Size=UDim2.fromOffset(50, 50),Position=UDim2.fromScale(0.15, 0.15),BackgroundTransparency=1,BackgroundColor3=Theme["Color Hub 2"],AutoButtonColor=false}));
				Stroke, Corner = nil;
				FlatIdent_1DFAF = 1;
			end
			if (FlatIdent_1DFAF == 1) then
				if Configs.Corner then
					local FlatIdent_568D2 = 0;
					while true do
						if (FlatIdent_568D2 == 0) then
							Corner = Make("Corner", Button);
							SetProps(Corner, Configs.Corner);
							break;
						end
					end
				end
				if Configs.Stroke then
					local FlatIdent_13B77 = 0;
					while true do
						if (0 == FlatIdent_13B77) then
							Stroke = Make("Stroke", Button);
							SetProps(Stroke, Configs.Corner);
							break;
						end
					end
				end
				FlatIdent_1DFAF = 2;
			end
			if (FlatIdent_1DFAF == 3) then
				return {Stroke=Stroke,Corner=Corner,Button=Button};
			end
		end
	end;
	Window.Set = function(self, Val1, Val2)
		if ((type(Val1) == "string") and (type(Val2) == "string")) then
			local FlatIdent_94CF9 = 0;
			while true do
				if (FlatIdent_94CF9 == 0) then
					Title.Text = Val1;
					Title.SubTitle.Text = Val2;
					break;
				end
			end
		elseif (type(Val1) == "string") then
			Title.Text = Val1;
		end
	end;
	Window.Dialog = function(self, Configs)
		if MainFrame:FindFirstChild("Dialog") then
			return;
		end
		if Minimized then
			Window:MinimizeBtn();
		end
		local DTitle = Configs[1] or Configs.Title or "Dialog";
		local DText = Configs[2] or Configs.Text or "This is a Dialog";
		local DOptions = Configs[3] or Configs.Options or {};
		local Frame = Create("Frame", {Active=true,Size=UDim2.fromOffset(250 * 1.08, 150 * 1.08),Position=UDim2.fromScale(0.5, 0.5),AnchorPoint=Vector2.new(0.5, 0.5)}, {InsertTheme(Create("TextLabel", {Font=Enum.Font.GothamBold,Size=UDim2.new(1, 0, 0, 20),Text=DTitle,TextXAlignment="Left",TextColor3=Theme["Color Text"],TextSize=15,Position=UDim2.fromOffset(15, 5),BackgroundTransparency=1}), "Text"),InsertTheme(Create("TextLabel", {Font=Enum.Font.GothamMedium,Size=UDim2.new(1, -25),AutomaticSize="Y",Text=DText,TextXAlignment="Left",TextColor3=Theme["Color Dark Text"],TextSize=12,Position=UDim2.fromOffset(15, 25),BackgroundTransparency=1,TextWrapped=true}), "DarkText")});
		Make("Gradient", Frame, {Rotation=270});
		Make("Corner", Frame);
		local ButtonsHolder = Create("Frame", Frame, {Size=UDim2.fromScale(1, 0.35),Position=UDim2.fromScale(0, 1),AnchorPoint=Vector2.new(0, 1),BackgroundColor3=Theme["Color Hub 2"],BackgroundTransparency=1}, {Create("UIListLayout", {Padding=UDim.new(0, 10),VerticalAlignment="Center",FillDirection="Horizontal",HorizontalAlignment="Center"})});
		local Screen = InsertTheme(Create("Frame", MainFrame, {BackgroundTransparency=0.6,Active=true,BackgroundColor3=Theme["Color Hub 2"],Size=UDim2.new(1, 0, 1, 0),BackgroundColor3=Theme["Color Stroke"],Name="Dialog"}), "Stroke");
		MainCorner:Clone().Parent = Screen;
		Frame.Parent = Screen;
		CreateTween({Frame,"Size",UDim2.fromOffset(250, 150),0.2});
		CreateTween({Frame,"Transparency",0,0.15});
		CreateTween({Screen,"Transparency",0.3,0.15});
		local ButtonCount, Dialog = 1, {};
		Dialog.Button = function(self, Configs)
			local FlatIdent_98327 = 0;
			local Name;
			local Callback;
			local Button;
			while true do
				if (FlatIdent_98327 == 4) then
					Button.Activated:Connect(Callback);
					break;
				end
				if (3 == FlatIdent_98327) then
					for _, Button in pairs(ButtonsHolder:GetChildren()) do
						if Button:IsA("TextButton") then
							Button.Size = UDim2.new(1 / ButtonCount, -(((ButtonCount - 1) * 20) / ButtonCount), 0, 32);
						end
					end
					Button.Activated:Connect(Dialog.Close);
					FlatIdent_98327 = 4;
				end
				if (FlatIdent_98327 == 1) then
					ButtonCount = ButtonCount + 1;
					Button = Make("Button", ButtonsHolder);
					FlatIdent_98327 = 2;
				end
				if (FlatIdent_98327 == 0) then
					Name = Configs[1] or Configs.Name or Configs.Title or "";
					Callback = Configs[2] or Configs.Callback or function()
					end;
					FlatIdent_98327 = 1;
				end
				if (2 == FlatIdent_98327) then
					Make("Corner", Button);
					SetProps(Button, {Text=Name,Font=Enum.Font.GothamBold,TextColor3=Theme["Color Text"],TextSize=12});
					FlatIdent_98327 = 3;
				end
			end
		end;
		Dialog.Close = function(self)
			local FlatIdent_71493 = 0;
			while true do
				if (FlatIdent_71493 == 1) then
					CreateTween({Frame,"Transparency",1,0.15,true});
					Screen:Destroy();
					break;
				end
				if (FlatIdent_71493 == 0) then
					CreateTween({Frame,"Size",UDim2.fromOffset(250 * 1.08, 150 * 1.08),0.2});
					CreateTween({Screen,"Transparency",1,0.15});
					FlatIdent_71493 = 1;
				end
			end
		end;
		table.foreach(DOptions, function(_, Button)
			Dialog:Button(Button);
		end);
		return Dialog;
	end;
	Window.SelectTab = function(self, TabSelect)
		if (type(TabSelect) == "number") then
			redzlib.Tabs[TabSelect].func:Enable();
		else
			for _, Tab in pairs(redzlib.Tabs) do
				if (Tab.Cont == TabSelect.Cont) then
					Tab.func:Enable();
				end
			end
		end
	end;
	local ContainerList = {};
	Window.MakeTab = function(self, paste, Configs)
		if (type(paste) == "table") then
			Configs = paste;
		end
		local TName = Configs[1] or Configs.Title or "Tab!";
		local TIcon = Configs[2] or Configs.Icon or "";
		TIcon = redzlib:GetIcon(TIcon);
		if (not TIcon:find("rbxassetid://") or (TIcon:gsub("rbxassetid://", ""):len() < 6)) then
			TIcon = false;
		end
		local TabSelect = Make("Button", MainScroll, {Size=UDim2.new(1, 0, 0, 24)});
		Make("Corner", TabSelect);
		local LabelTitle = InsertTheme(Create("TextLabel", TabSelect, {Size=UDim2.new(1, (TIcon and -25) or -15, 1),Position=UDim2.fromOffset((TIcon and 25) or 15),BackgroundTransparency=1,Font=Enum.Font.GothamMedium,Text=TName,TextColor3=Theme["Color Text"],TextSize=10,TextXAlignment=Enum.TextXAlignment.Left,TextTransparency=((FirstTab and 0.3) or 0),TextTruncate="AtEnd"}), "Text");
		local LabelIcon = InsertTheme(Create("ImageLabel", TabSelect, {Position=UDim2.new(0, 8, 0.5),Size=UDim2.new(0, 13, 0, 13),AnchorPoint=Vector2.new(0, 0.5),Image=(TIcon or ""),BackgroundTransparency=1,ImageTransparency=((FirstTab and 0.3) or 0)}), "Text");
		local Selected = InsertTheme(Create("Frame", TabSelect, {Size=((FirstTab and UDim2.new(0, 4, 0, 4)) or UDim2.new(0, 4, 0, 13)),Position=UDim2.new(0, 1, 0.5),AnchorPoint=Vector2.new(0, 0.5),BackgroundColor3=Theme["Color Theme"],BackgroundTransparency=((FirstTab and 1) or 0)}), "Theme");
		Make("Corner", Selected, UDim.new(0.5, 0));
		local Container = InsertTheme(Create("ScrollingFrame", {Size=UDim2.new(1, 0, 1, 0),Position=UDim2.new(0, 0, 1),AnchorPoint=Vector2.new(0, 1),ScrollBarThickness=1.5,BackgroundTransparency=1,ScrollBarImageTransparency=0.2,ScrollBarImageColor3=Theme["Color Theme"],AutomaticCanvasSize="Y",ScrollingDirection="Y",BorderSizePixel=0,CanvasSize=UDim2.new(),Name=("Container %i [ %s ]"):format(#ContainerList + 1, TName)}, {Create("UIPadding", {PaddingLeft=UDim.new(0, 10),PaddingRight=UDim.new(0, 10),PaddingTop=UDim.new(0, 10),PaddingBottom=UDim.new(0, 10)}),Create("UIListLayout", {Padding=UDim.new(0, 5)})}), "ScrollBar");
		table.insert(ContainerList, Container);
		if not FirstTab then
			Container.Parent = Containers;
		end
		local function Tabs()
			local FlatIdent_75331 = 0;
			while true do
				if (FlatIdent_75331 == 2) then
					table.foreach(redzlib.Tabs, function(_, Tab)
						if (Tab.Cont ~= Container) then
							Tab.func:Disable();
						end
					end);
					CreateTween({Container,"Size",UDim2.new(1, 0, 1, 0),0.3});
					FlatIdent_75331 = 3;
				end
				if (4 == FlatIdent_75331) then
					CreateTween({Selected,"Size",UDim2.new(0, 4, 0, 13),0.35});
					CreateTween({Selected,"BackgroundTransparency",0,0.35});
					break;
				end
				if (FlatIdent_75331 == 3) then
					CreateTween({LabelTitle,"TextTransparency",0,0.35});
					CreateTween({LabelIcon,"ImageTransparency",0,0.35});
					FlatIdent_75331 = 4;
				end
				if (FlatIdent_75331 == 1) then
					Container.Parent = Containers;
					Container.Size = UDim2.new(1, 0, 1, 150);
					FlatIdent_75331 = 2;
				end
				if (FlatIdent_75331 == 0) then
					if Container.Parent then
						return;
					end
					for _, Frame in pairs(ContainerList) do
						if (Frame:IsA("ScrollingFrame") and (Frame ~= Container)) then
							Frame.Parent = nil;
						end
					end
					FlatIdent_75331 = 1;
				end
			end
		end
		TabSelect.Activated:Connect(Tabs);
		FirstTab = true;
		local Tab = {};
		table.insert(redzlib.Tabs, {TabInfo={Name=TName,Icon=TIcon},func=Tab,Cont=Container});
		Tab.Cont = Container;
		Tab.Disable = function(self)
			local FlatIdent_415E2 = 0;
			while true do
				if (0 == FlatIdent_415E2) then
					Container.Parent = nil;
					CreateTween({LabelTitle,"TextTransparency",0.3,0.35});
					FlatIdent_415E2 = 1;
				end
				if (FlatIdent_415E2 == 2) then
					CreateTween({Selected,"BackgroundTransparency",1,0.35});
					break;
				end
				if (1 == FlatIdent_415E2) then
					CreateTween({LabelIcon,"ImageTransparency",0.3,0.35});
					CreateTween({Selected,"Size",UDim2.new(0, 4, 0, 4),0.35});
					FlatIdent_415E2 = 2;
				end
			end
		end;
		Tab.Enable = function(self)
			Tabs();
		end;
		Tab.Visible = function(self, Bool)
			local FlatIdent_7D3C9 = 0;
			while true do
				if (0 == FlatIdent_7D3C9) then
					Funcs:ToggleVisible(TabSelect, Bool);
					Funcs:ToggleParent(Container, Bool, Containers);
					break;
				end
			end
		end;
		Tab.Destroy = function(self)
			local FlatIdent_270C = 0;
			while true do
				if (FlatIdent_270C == 0) then
					TabSelect:Destroy();
					Container:Destroy();
					break;
				end
			end
		end;
		Tab.AddSection = function(self, Configs)
			local SectionName = ((type(Configs) == "string") and Configs) or Configs[1] or Configs.Name or Configs.Title or Configs.Section;
			local SectionFrame = Create("Frame", Container, {Size=UDim2.new(1, 0, 0, 20),BackgroundTransparency=1,Name="Option"});
			local SectionLabel = InsertTheme(Create("TextLabel", SectionFrame, {Font=Enum.Font.GothamBold,Text=SectionName,TextColor3=Theme["Color Text"],Size=UDim2.new(1, -25, 1, 0),Position=UDim2.new(0, 5),BackgroundTransparency=1,TextTruncate="AtEnd",TextSize=14,TextXAlignment="Left"}), "Text");
			local Section = {};
			table.insert(redzlib.Options, {type="Section",Name=SectionName,func=Section});
			Section.Visible = function(self, Bool)
				local FlatIdent_5CC3B = 0;
				while true do
					if (0 == FlatIdent_5CC3B) then
						if (Bool == nil) then
							SectionFrame.Visible = not SectionFrame.Visible;
							return;
						end
						SectionFrame.Visible = Bool;
						break;
					end
				end
			end;
			Section.Destroy = function(self)
				SectionFrame:Destroy();
			end;
			Section.Set = function(self, New)
				if New then
					SectionLabel.Text = GetStr(New);
				end
			end;
			return Section;
		end;
		Tab.AddParagraph = function(self, Configs)
			local FlatIdent_1466E = 0;
			local PName;
			local PDesc;
			local Frame;
			local LabelFunc;
			local Paragraph;
			while true do
				if (2 == FlatIdent_1466E) then
					Paragraph.Visible = function(self, ...)
						Funcs:ToggleVisible(Frame, ...);
					end;
					Paragraph.Destroy = function(self)
						Frame:Destroy();
					end;
					FlatIdent_1466E = 3;
				end
				if (FlatIdent_1466E == 3) then
					Paragraph.SetTitle = function(self, Val)
						LabelFunc:SetTitle(GetStr(Val));
					end;
					Paragraph.SetDesc = function(self, Val)
						LabelFunc:SetDesc(GetStr(Val));
					end;
					FlatIdent_1466E = 4;
				end
				if (FlatIdent_1466E == 1) then
					Frame, LabelFunc = ButtonFrame(Container, PName, PDesc, UDim2.new(1, -20));
					Paragraph = {};
					FlatIdent_1466E = 2;
				end
				if (FlatIdent_1466E == 0) then
					PName = Configs[1] or Configs.Title or "Paragraph";
					PDesc = Configs[2] or Configs.Text or "";
					FlatIdent_1466E = 1;
				end
				if (FlatIdent_1466E == 4) then
					Paragraph.Set = function(self, Val1, Val2)
						if (Val1 and Val2) then
							local FlatIdent_B322 = 0;
							while true do
								if (FlatIdent_B322 == 0) then
									LabelFunc:SetTitle(GetStr(Val1));
									LabelFunc:SetDesc(GetStr(Val2));
									break;
								end
							end
						elseif Val1 then
							LabelFunc:SetDesc(GetStr(Val1));
						end
					end;
					return Paragraph;
				end
			end
		end;
		Tab.AddButton = function(self, Configs)
			local FlatIdent_84ED3 = 0;
			local BName;
			local BDescription;
			local Callback;
			local FButton;
			local LabelFunc;
			local ButtonIcon;
			local Button;
			while true do
				if (FlatIdent_84ED3 == 0) then
					BName = Configs[1] or Configs.Name or Configs.Title or "Button!";
					BDescription = Configs.Desc or Configs.Description or "";
					Callback = Funcs:GetCallback(Configs, 2);
					FButton, LabelFunc = ButtonFrame(Container, BName, BDescription, UDim2.new(1, -20));
					FlatIdent_84ED3 = 1;
				end
				if (FlatIdent_84ED3 == 1) then
					ButtonIcon = Create("ImageLabel", FButton, {Size=UDim2.new(0, 14, 0, 14),Position=UDim2.new(1, -10, 0.5),AnchorPoint=Vector2.new(1, 0.5),BackgroundTransparency=1,Image="rbxassetid://10709791437"});
					FButton.Activated:Connect(function()
						Funcs:FireCallback(Callback);
					end);
					Button = {};
					Button.Visible = function(self, ...)
						Funcs:ToggleVisible(FButton, ...);
					end;
					FlatIdent_84ED3 = 2;
				end
				if (FlatIdent_84ED3 == 2) then
					Button.Destroy = function(self)
						FButton:Destroy();
					end;
					Button.Callback = function(self, ...)
						Funcs:InsertCallback(Callback, ...);
					end;
					Button.Set = function(self, Val1, Val2)
						if ((type(Val1) == "string") and (type(Val2) == "string")) then
							LabelFunc:SetTitle(Val1);
							LabelFunc:SetDesc(Val2);
						elseif (type(Val1) == "string") then
							LabelFunc:SetTitle(Val1);
						elseif (type(Val1) == "function") then
							Callback = Val1;
						end
					end;
					return Button;
				end
			end
		end;
		Tab.AddToggle = function(self, Configs)
			local FlatIdent_23B66 = 0;
			local TName;
			local TDesc;
			local Callback;
			local Flag;
			local Default;
			local Button;
			local LabelFunc;
			local ToggleHolder;
			local Slider;
			local Toggle;
			local WaitClick;
			local SetToggle;
			while true do
				if (FlatIdent_23B66 == 3) then
					Slider = Create("Frame", ToggleHolder, {BackgroundTransparency=1,Size=UDim2.new(0.8, 0, 0.8, 0),Position=UDim2.new(0.5, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5)});
					Toggle = InsertTheme(Create("Frame", Slider, {Size=UDim2.new(0, 12, 0, 12),Position=UDim2.new(0, 0, 0.5),AnchorPoint=Vector2.new(0, 0.5),BackgroundColor3=Theme["Color Theme"]}), "Theme");
					Make("Corner", Toggle, UDim.new(0.5, 0));
					FlatIdent_23B66 = 4;
				end
				if (FlatIdent_23B66 == 2) then
					Button, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -38));
					ToggleHolder = InsertTheme(Create("Frame", Button, {Size=UDim2.new(0, 35, 0, 18),Position=UDim2.new(1, -10, 0.5),AnchorPoint=Vector2.new(1, 0.5),BackgroundColor3=Theme["Color Stroke"]}), "Stroke");
					Make("Corner", ToggleHolder, UDim.new(0.5, 0));
					FlatIdent_23B66 = 3;
				end
				if (FlatIdent_23B66 == 6) then
					Toggle.Visible = function(self, ...)
						Funcs:ToggleVisible(Button, ...);
					end;
					Toggle.Destroy = function(self)
						Button:Destroy();
					end;
					Toggle.Callback = function(self, ...)
						Funcs:InsertCallback(Callback, ...)();
					end;
					FlatIdent_23B66 = 7;
				end
				if (4 == FlatIdent_23B66) then
					WaitClick = nil;
					SetToggle = nil;
					function SetToggle(Val)
						local FlatIdent_5C408 = 0;
						while true do
							if (1 == FlatIdent_5C408) then
								SetFlag(Flag, Default);
								Funcs:FireCallback(Callback, Default);
								FlatIdent_5C408 = 2;
							end
							if (FlatIdent_5C408 == 0) then
								if WaitClick then
									return;
								end
								WaitClick, Default = true, Val;
								FlatIdent_5C408 = 1;
							end
							if (FlatIdent_5C408 == 2) then
								if Default then
									local FlatIdent_2B986 = 0;
									while true do
										if (1 == FlatIdent_2B986) then
											CreateTween({Toggle,"AnchorPoint",Vector2.new(1, 0.5),0.25,(Wait or false)});
											break;
										end
										if (FlatIdent_2B986 == 0) then
											CreateTween({Toggle,"Position",UDim2.new(1, 0, 0.5),0.25});
											CreateTween({Toggle,"BackgroundTransparency",0,0.25});
											FlatIdent_2B986 = 1;
										end
									end
								else
									local FlatIdent_3416F = 0;
									while true do
										if (FlatIdent_3416F == 1) then
											CreateTween({Toggle,"AnchorPoint",Vector2.new(0, 0.5),0.25,(Wait or false)});
											break;
										end
										if (FlatIdent_3416F == 0) then
											CreateTween({Toggle,"Position",UDim2.new(0, 0, 0.5),0.25});
											CreateTween({Toggle,"BackgroundTransparency",0.8,0.25});
											FlatIdent_3416F = 1;
										end
									end
								end
								WaitClick = false;
								break;
							end
						end
					end
					FlatIdent_23B66 = 5;
				end
				if (FlatIdent_23B66 == 5) then
					task.spawn(SetToggle, Default);
					Button.Activated:Connect(function()
						SetToggle(not Default);
					end);
					Toggle = {};
					FlatIdent_23B66 = 6;
				end
				if (FlatIdent_23B66 == 0) then
					TName = Configs[1] or Configs.Name or Configs.Title or "Toggle";
					TDesc = Configs.Desc or Configs.Description or "";
					Callback = Funcs:GetCallback(Configs, 3);
					FlatIdent_23B66 = 1;
				end
				if (FlatIdent_23B66 == 1) then
					Flag = Configs[4] or Configs.Flag or false;
					Default = Configs[2] or Configs.Default or false;
					if CheckFlag(Flag) then
						Default = GetFlag(Flag);
					end
					FlatIdent_23B66 = 2;
				end
				if (FlatIdent_23B66 == 7) then
					Toggle.Set = function(self, Val1, Val2)
						if ((type(Val1) == "string") and (type(Val2) == "string")) then
							local FlatIdent_E2D0 = 0;
							while true do
								if (FlatIdent_E2D0 == 0) then
									LabelFunc:SetTitle(Val1);
									LabelFunc:SetDesc(Val2);
									break;
								end
							end
						elseif (type(Val1) == "string") then
							LabelFunc:SetTitle(Val1, false, true);
						elseif (type(Val1) == "boolean") then
							local FlatIdent_1A6D6 = 0;
							while true do
								if (FlatIdent_1A6D6 == 0) then
									if (WaitClick and Val2) then
										repeat
											task.wait();
										until not WaitClick 
									end
									task.spawn(SetToggle, Val1);
									break;
								end
							end
						elseif (type(Val1) == "function") then
							Callback = Val1;
						end
					end;
					return Toggle;
				end
			end
		end;
		Tab.AddDropdown = function(self, Configs)
			local DName = Configs[1] or Configs.Name or Configs.Title or "Dropdown";
			local DDesc = Configs.Desc or Configs.Description or "";
			local DOptions = Configs[2] or Configs.Options or {};
			local OpDefault = Configs[3] or Configs.Default or {};
			local Flag = Configs[5] or Configs.Flag or false;
			local DMultiSelect = Configs.MultiSelect or false;
			local Callback = Funcs:GetCallback(Configs, 4);
			local Button, LabelFunc = ButtonFrame(Container, DName, DDesc, UDim2.new(1, -180));
			local SelectedFrame = InsertTheme(Create("Frame", Button, {Size=UDim2.new(0, 150, 0, 18),Position=UDim2.new(1, -10, 0.5),AnchorPoint=Vector2.new(1, 0.5),BackgroundColor3=Theme["Color Stroke"]}), "Stroke");
			Make("Corner", SelectedFrame, UDim.new(0, 4));
			local ActiveLabel = InsertTheme(Create("TextLabel", SelectedFrame, {Size=UDim2.new(0.85, 0, 0.85, 0),AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),BackgroundTransparency=1,Font=Enum.Font.GothamBold,TextScaled=true,TextColor3=Theme["Color Text"],Text="..."}), "Text");
			local Arrow = Create("ImageLabel", SelectedFrame, {Size=UDim2.new(0, 15, 0, 15),Position=UDim2.new(0, -5, 0.5),AnchorPoint=Vector2.new(1, 0.5),Image="rbxassetid://10709791523",BackgroundTransparency=1});
			local NoClickFrame = Create("TextButton", DropdownHolder, {Name="AntiClick",Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1,Visible=false,Text=""});
			local DropFrame = Create("Frame", NoClickFrame, {Size=UDim2.new(SelectedFrame.Size.X, 0, 0),BackgroundTransparency=0.1,BackgroundColor3=Color3.fromRGB(255, 255, 255),AnchorPoint=Vector2.new(0, 1),Name="DropdownFrame",ClipsDescendants=true,Active=true});
			Make("Corner", DropFrame);
			Make("Stroke", DropFrame);
			Make("Gradient", DropFrame, {Rotation=60});
			local ScrollFrame = InsertTheme(Create("ScrollingFrame", DropFrame, {ScrollBarImageColor3=Theme["Color Theme"],Size=UDim2.new(1, 0, 1, 0),ScrollBarThickness=1.5,BackgroundTransparency=1,BorderSizePixel=0,CanvasSize=UDim2.new(),ScrollingDirection="Y",AutomaticCanvasSize="Y",Active=true}, {Create("UIPadding", {PaddingLeft=UDim.new(0, 8),PaddingRight=UDim.new(0, 8),PaddingTop=UDim.new(0, 5),PaddingBottom=UDim.new(0, 5)}),Create("UIListLayout", {Padding=UDim.new(0, 4)})}), "ScrollBar");
			local ScrollSize, WaitClick = 5;
			local function Disable()
				local FlatIdent_42B8B = 0;
				while true do
					if (FlatIdent_42B8B == 1) then
						CreateTween({DropFrame,"Size",UDim2.new(0, 152, 0, 0),0.2,true});
						CreateTween({Arrow,"ImageColor3",Color3.fromRGB(255, 255, 255),0.2});
						FlatIdent_42B8B = 2;
					end
					if (FlatIdent_42B8B == 3) then
						WaitClick = false;
						break;
					end
					if (FlatIdent_42B8B == 2) then
						Arrow.Image = "rbxassetid://10709791523";
						NoClickFrame.Visible = false;
						FlatIdent_42B8B = 3;
					end
					if (FlatIdent_42B8B == 0) then
						WaitClick = true;
						CreateTween({Arrow,"Rotation",0,0.2});
						FlatIdent_42B8B = 1;
					end
				end
			end
			local function GetFrameSize()
				return UDim2.fromOffset(152, ScrollSize);
			end
			local function CalculateSize()
				local FlatIdent_17A1A = 0;
				local Count;
				while true do
					if (FlatIdent_17A1A == 0) then
						Count = 0;
						for _, Frame in pairs(ScrollFrame:GetChildren()) do
							if (Frame:IsA("Frame") or (Frame.Name == "Option")) then
								Count = Count + 1;
							end
						end
						FlatIdent_17A1A = 1;
					end
					if (FlatIdent_17A1A == 1) then
						ScrollSize = (math.clamp(Count, 0, 10) * 25) + 10;
						if NoClickFrame.Visible then
							local FlatIdent_52E72 = 0;
							while true do
								if (FlatIdent_52E72 == 0) then
									NoClickFrame.Visible = true;
									CreateTween({DropFrame,"Size",GetFrameSize(),0.2,true});
									break;
								end
							end
						end
						break;
					end
				end
			end
			local function Minimize()
				local FlatIdent_85FF9 = 0;
				while true do
					if (FlatIdent_85FF9 == 0) then
						if WaitClick then
							return;
						end
						WaitClick = true;
						FlatIdent_85FF9 = 1;
					end
					if (FlatIdent_85FF9 == 1) then
						if NoClickFrame.Visible then
							local FlatIdent_57C9C = 0;
							while true do
								if (FlatIdent_57C9C == 1) then
									CreateTween({DropFrame,"Size",UDim2.new(0, 152, 0, 0),0.2,true});
									NoClickFrame.Visible = false;
									break;
								end
								if (FlatIdent_57C9C == 0) then
									Arrow.Image = "rbxassetid://10709791523";
									CreateTween({Arrow,"ImageColor3",Color3.fromRGB(255, 255, 255),0.2});
									FlatIdent_57C9C = 1;
								end
							end
						else
							local FlatIdent_8A0A6 = 0;
							while true do
								if (FlatIdent_8A0A6 == 1) then
									CreateTween({Arrow,"ImageColor3",Theme["Color Theme"],0.2});
									CreateTween({DropFrame,"Size",GetFrameSize(),0.2,true});
									break;
								end
								if (FlatIdent_8A0A6 == 0) then
									NoClickFrame.Visible = true;
									Arrow.Image = "rbxassetid://10709790948";
									FlatIdent_8A0A6 = 1;
								end
							end
						end
						WaitClick = false;
						break;
					end
				end
			end
			local function CalculatePos()
				local FramePos = SelectedFrame.AbsolutePosition;
				local ScreenSize = ScreenGui.AbsoluteSize;
				local ClampX = math.clamp(FramePos.X / UIScale, 0, (ScreenSize.X / UIScale) - DropFrame.Size.X.Offset);
				local ClampY = math.clamp(FramePos.Y / UIScale, 0, ScreenSize.Y / UIScale);
				local NewPos = UDim2.fromOffset(ClampX, ClampY);
				local AnchorPoint = ((FramePos.Y > (ScreenSize.Y / 1.4)) and 1) or ((ScrollSize > 80) and 0.5) or 0;
				DropFrame.AnchorPoint = Vector2.new(0, AnchorPoint);
				CreateTween({DropFrame,"Position",NewPos,0.1});
			end
			local AddNewOptions, GetOptions, AddOption, RemoveOption, Selected;
			do
				local Default = ((type(OpDefault) ~= "table") and {OpDefault}) or OpDefault;
				local MultiSelect = DMultiSelect;
				local Options = {};
				Selected = (MultiSelect and {}) or (CheckFlag(Flag) and GetFlag(Flag)) or Default[1];
				if MultiSelect then
					for index, Value in pairs((CheckFlag(Flag) and GetFlag(Flag)) or Default) do
						if ((type(index) == "string") and (DOptions[index] or table.find(DOptions, index))) then
							Selected[index] = Value;
						elseif DOptions[Value] then
							Selected[Value] = true;
						end
					end
				end
				local function CallbackSelected()
					local FlatIdent_429CF = 0;
					while true do
						if (FlatIdent_429CF == 0) then
							SetFlag(Flag, (MultiSelect and Selected) or tostring(Selected));
							Funcs:FireCallback(Callback, Selected);
							break;
						end
					end
				end
				local function UpdateLabel()
					if MultiSelect then
						local FlatIdent_8E3FD = 0;
						local list;
						while true do
							if (1 == FlatIdent_8E3FD) then
								ActiveLabel.Text = ((#list > 0) and table.concat(list, ", ")) or "...";
								break;
							end
							if (FlatIdent_8E3FD == 0) then
								list = {};
								for index, Value in pairs(Selected) do
									if Value then
										table.insert(list, index);
									end
								end
								FlatIdent_8E3FD = 1;
							end
						end
					else
						ActiveLabel.Text = tostring(Selected or "...");
					end
				end
				local function UpdateSelected()
					local FlatIdent_62CB4 = 0;
					while true do
						if (FlatIdent_62CB4 == 0) then
							if MultiSelect then
								for _, v in pairs(Options) do
									local FlatIdent_8C1D5 = 0;
									local nodes;
									local Stats;
									while true do
										if (FlatIdent_8C1D5 == 1) then
											CreateTween({nodes[2],"Size",((Stats and UDim2.fromOffset(4, 12)) or UDim2.fromOffset(4, 4)),0.35});
											CreateTween({nodes[3],"TextTransparency",((Stats and 0) or 0.4),0.35});
											break;
										end
										if (FlatIdent_8C1D5 == 0) then
											nodes, Stats = v.nodes, v.Stats;
											CreateTween({nodes[2],"BackgroundTransparency",((Stats and 0) or 0.8),0.35});
											FlatIdent_8C1D5 = 1;
										end
									end
								end
							else
								for _, v in pairs(Options) do
									local FlatIdent_12B6E = 0;
									local Slt;
									local nodes;
									while true do
										if (FlatIdent_12B6E == 2) then
											CreateTween({nodes[3],"TextTransparency",((Slt and 0) or 0.4),0.35});
											break;
										end
										if (FlatIdent_12B6E == 0) then
											Slt = v.Value == Selected;
											nodes = v.nodes;
											FlatIdent_12B6E = 1;
										end
										if (FlatIdent_12B6E == 1) then
											CreateTween({nodes[2],"BackgroundTransparency",((Slt and 0) or 1),0.35});
											CreateTween({nodes[2],"Size",((Slt and UDim2.fromOffset(4, 14)) or UDim2.fromOffset(4, 4)),0.35});
											FlatIdent_12B6E = 2;
										end
									end
								end
							end
							UpdateLabel();
							break;
						end
					end
				end
				local function Select(Option)
					local FlatIdent_3EC52 = 0;
					while true do
						if (FlatIdent_3EC52 == 0) then
							if MultiSelect then
								local FlatIdent_13951 = 0;
								while true do
									if (FlatIdent_13951 == 1) then
										Selected[Option.Name] = Option.Stats;
										CallbackSelected();
										break;
									end
									if (FlatIdent_13951 == 0) then
										Option.Stats = not Option.Stats;
										Option.LastCB = tick();
										FlatIdent_13951 = 1;
									end
								end
							else
								local FlatIdent_810FF = 0;
								while true do
									if (FlatIdent_810FF == 0) then
										Option.LastCB = tick();
										Selected = Option.Value;
										FlatIdent_810FF = 1;
									end
									if (FlatIdent_810FF == 1) then
										CallbackSelected();
										break;
									end
								end
							end
							UpdateSelected();
							break;
						end
					end
				end
				function AddOption(index, Value)
					local FlatIdent_21387 = 0;
					local Name;
					local Button;
					local IsSelected;
					local OptioneName;
					while true do
						if (FlatIdent_21387 == 0) then
							Name = tostring(((type(index) == "string") and index) or Value);
							if Options[Name] then
								return;
							end
							Options[Name] = {index=index,Value=Value,Name=Name,Stats=false,LastCB=0};
							FlatIdent_21387 = 1;
						end
						if (2 == FlatIdent_21387) then
							IsSelected = InsertTheme(Create("Frame", Button, {Position=UDim2.new(0, 1, 0.5),Size=UDim2.new(0, 4, 0, 4),BackgroundColor3=Theme["Color Theme"],BackgroundTransparency=1,AnchorPoint=Vector2.new(0, 0.5)}), "Theme");
							Make("Corner", IsSelected, UDim.new(0.5, 0));
							OptioneName = InsertTheme(Create("TextLabel", Button, {Size=UDim2.new(1, 0, 1),Position=UDim2.new(0, 10),Text=Name,TextColor3=Theme["Color Text"],Font=Enum.Font.GothamBold,TextXAlignment="Left",BackgroundTransparency=1,TextTransparency=0.4}), "Text");
							FlatIdent_21387 = 3;
						end
						if (FlatIdent_21387 == 3) then
							Button.Activated:Connect(function()
								Select(Options[Name]);
							end);
							Options[Name].nodes = {Button,IsSelected,OptioneName};
							break;
						end
						if (FlatIdent_21387 == 1) then
							if MultiSelect then
								local FlatIdent_6B92D = 0;
								local Stats;
								while true do
									if (FlatIdent_6B92D == 1) then
										Options[Name].Stats = Stats;
										break;
									end
									if (FlatIdent_6B92D == 0) then
										Stats = Selected[Name];
										Selected[Name] = Stats or false;
										FlatIdent_6B92D = 1;
									end
								end
							end
							Button = Make("Button", ScrollFrame, {Name="Option",Size=UDim2.new(1, 0, 0, 21),Position=UDim2.new(0, 0, 0.5),AnchorPoint=Vector2.new(0, 0.5)});
							Make("Corner", Button, UDim.new(0, 4));
							FlatIdent_21387 = 2;
						end
					end
				end
				function RemoveOption(index, Value)
					local FlatIdent_71818 = 0;
					local Name;
					while true do
						if (FlatIdent_71818 == 0) then
							Name = tostring(((type(index) == "string") and index) or Value);
							if Options[Name] then
								local FlatIdent_1A02A = 0;
								while true do
									if (FlatIdent_1A02A == 0) then
										if MultiSelect then
											Selected[Name] = nil;
										else
											Selected = nil;
										end
										Options[Name].nodes[1]:Destroy();
										FlatIdent_1A02A = 1;
									end
									if (1 == FlatIdent_1A02A) then
										table.clear(Options[Name]);
										Options[Name] = nil;
										break;
									end
								end
							end
							break;
						end
					end
				end
				function GetOptions()
					return Options;
				end
				function AddNewOptions(List, Clear)
					local FlatIdent_58F21 = 0;
					while true do
						if (FlatIdent_58F21 == 1) then
							CallbackSelected();
							UpdateSelected();
							break;
						end
						if (FlatIdent_58F21 == 0) then
							if Clear then
								table.foreach(Options, RemoveOption);
							end
							table.foreach(List, AddOption);
							FlatIdent_58F21 = 1;
						end
					end
				end
				table.foreach(DOptions, AddOption);
				CallbackSelected();
				UpdateSelected();
			end
			Button.Activated:Connect(Minimize);
			NoClickFrame.MouseButton1Down:Connect(Disable);
			NoClickFrame.MouseButton1Click:Connect(Disable);
			MainFrame:GetPropertyChangedSignal("Visible"):Connect(Disable);
			SelectedFrame:GetPropertyChangedSignal("AbsolutePosition"):Connect(CalculatePos);
			Button.Activated:Connect(CalculateSize);
			ScrollFrame.ChildAdded:Connect(CalculateSize);
			ScrollFrame.ChildRemoved:Connect(CalculateSize);
			CalculatePos();
			CalculateSize();
			local Dropdown = {};
			Dropdown.Visible = function(self, ...)
				Funcs:ToggleVisible(Button, ...);
			end;
			Dropdown.Destroy = function(self)
				Button:Destroy();
			end;
			Dropdown.Callback = function(self, ...)
				Funcs:InsertCallback(Callback, ...)(Selected);
			end;
			Dropdown.Add = function(self, ...)
				local FlatIdent_95359 = 0;
				local NewOptions;
				while true do
					if (0 == FlatIdent_95359) then
						NewOptions = {...};
						if (type(NewOptions[1]) == "table") then
							table.foreach(Option, function(_, Name)
								AddOption(Name);
							end);
						else
							table.foreach(NewOptions, function(_, Name)
								AddOption(Name);
							end);
						end
						break;
					end
				end
			end;
			Dropdown.Remove = function(self, Option)
				for index, Value in pairs(GetOptions()) do
					if (((type(Option) == "number") and (index == Option)) or (Value.Name == "Option")) then
						RemoveOption(index, Value.Value);
					end
				end
			end;
			Dropdown.Select = function(self, Option)
				if (type(Option) == "string") then
					for _, Val in pairs(Options) do
						if (Val.Name == Option) then
							Val.Active();
						end
					end
				elseif (type(Option) == "number") then
					for ind, Val in pairs(Options) do
						if (ind == Option) then
							Val.Active();
						end
					end
				end
			end;
			Dropdown.Set = function(self, Val1, Clear)
				if (type(Val1) == "table") then
					AddNewOptions(Val1, not Clear);
				elseif (type(Val1) == "function") then
					Callback = Val1;
				end
			end;
			return Dropdown;
		end;
		Tab.AddSlider = function(self, Configs)
			local SName = Configs[1] or Configs.Name or Configs.Title or "Slider!";
			local SDesc = Configs.Desc or Configs.Description or "";
			local Min = Configs[2] or Configs.MinValue or Configs.Min or 10;
			local Max = Configs[3] or Configs.MaxValue or Configs.Max or 100;
			local Increase = Configs[4] or Configs.Increase or 1;
			local Callback = Funcs:GetCallback(Configs, 6);
			local Flag = Configs[7] or Configs.Flag or false;
			local Default = Configs[5] or Configs.Default or 25;
			if CheckFlag(Flag) then
				Default = GetFlag(Flag);
			end
			Min, Max = Min / Increase, Max / Increase;
			local Button, LabelFunc = ButtonFrame(Container, SName, SDesc, UDim2.new(1, -180));
			local SliderHolder = Create("TextButton", Button, {Size=UDim2.new(0.45, 0, 1),Position=UDim2.new(1),AnchorPoint=Vector2.new(1, 0),AutoButtonColor=false,Text="",BackgroundTransparency=1});
			local SliderBar = InsertTheme(Create("Frame", SliderHolder, {BackgroundColor3=Theme["Color Stroke"],Size=UDim2.new(1, -20, 0, 6),Position=UDim2.new(0.5, 0, 0.5),AnchorPoint=Vector2.new(0.5, 0.5)}), "Stroke");
			Make("Corner", SliderBar);
			local Indicator = InsertTheme(Create("Frame", SliderBar, {BackgroundColor3=Theme["Color Theme"],Size=UDim2.fromScale(0.3, 1),BorderSizePixel=0}), "Theme");
			Make("Corner", Indicator);
			local SliderIcon = Create("Frame", SliderBar, {Size=UDim2.new(0, 6, 0, 12),BackgroundColor3=Color3.fromRGB(220, 220, 220),Position=UDim2.fromScale(0.3, 0.5),AnchorPoint=Vector2.new(0.5, 0.5),BackgroundTransparency=0.2});
			Make("Corner", SliderIcon);
			local LabelVal = InsertTheme(Create("TextLabel", SliderHolder, {Size=UDim2.new(0, 14, 0, 14),AnchorPoint=Vector2.new(1, 0.5),Position=UDim2.new(0, 0, 0.5),BackgroundTransparency=1,TextColor3=Theme["Color Text"],Font=Enum.Font.FredokaOne,TextSize=12}), "Text");
			local UIScale = Create("UIScale", LabelVal);
			local BaseMousePos = Create("Frame", SliderBar, {Position=UDim2.new(0, 0, 0.5, 0),Visible=false});
			local function UpdateLabel(NewValue)
				local FlatIdent_89142 = 0;
				local Number;
				while true do
					if (FlatIdent_89142 == 1) then
						Default, LabelVal.Text = Number, tostring(Number);
						Funcs:FireCallback(Callback, Default);
						break;
					end
					if (FlatIdent_89142 == 0) then
						Number = tonumber(NewValue * Increase);
						Number = math.floor(Number * 100) / 100;
						FlatIdent_89142 = 1;
					end
				end
			end
			local function ControlPos()
				local FlatIdent_16C12 = 0;
				local MousePos;
				local APos;
				local ConfigureDpiPos;
				while true do
					if (0 == FlatIdent_16C12) then
						MousePos = Player:GetMouse();
						APos = MousePos.X - BaseMousePos.AbsolutePosition.X;
						FlatIdent_16C12 = 1;
					end
					if (FlatIdent_16C12 == 1) then
						ConfigureDpiPos = APos / SliderBar.AbsoluteSize.X;
						SliderIcon.Position = UDim2.new(math.clamp(ConfigureDpiPos, 0, 1), 0, 0.5, 0);
						break;
					end
				end
			end
			local function UpdateValues()
				local FlatIdent_6719E = 0;
				local SliderPos;
				local NewValue;
				while true do
					if (FlatIdent_6719E == 1) then
						NewValue = math.floor((((SliderPos * Max) / Max) * (Max - Min)) + Min);
						UpdateLabel(NewValue);
						break;
					end
					if (FlatIdent_6719E == 0) then
						Indicator.Size = UDim2.new(SliderIcon.Position.X.Scale, 0, 1, 0);
						SliderPos = SliderIcon.Position.X.Scale;
						FlatIdent_6719E = 1;
					end
				end
			end
			SliderHolder.MouseButton1Down:Connect(function()
				local FlatIdent_386D1 = 0;
				while true do
					if (FlatIdent_386D1 == 1) then
						while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local FlatIdent_14A42 = 0;
							while true do
								if (FlatIdent_14A42 == 0) then
									task.wait();
									ControlPos();
									break;
								end
							end
						end
						CreateTween({SliderIcon,"Transparency",0.2,0.3});
						FlatIdent_386D1 = 2;
					end
					if (2 == FlatIdent_386D1) then
						Container.ScrollingEnabled = true;
						SetFlag(Flag, Default);
						break;
					end
					if (0 == FlatIdent_386D1) then
						CreateTween({SliderIcon,"Transparency",0,0.3});
						Container.ScrollingEnabled = false;
						FlatIdent_386D1 = 1;
					end
				end
			end);
			LabelVal:GetPropertyChangedSignal("Text"):Connect(function()
				local FlatIdent_2C1E9 = 0;
				while true do
					if (FlatIdent_2C1E9 == 1) then
						CreateTween({LabelVal,"Rotation",(math.random(-1, 1) * 5),0.15,true});
						CreateTween({UIScale,"Scale",1,0.2});
						FlatIdent_2C1E9 = 2;
					end
					if (FlatIdent_2C1E9 == 2) then
						CreateTween({LabelVal,"Rotation",0,0.1});
						break;
					end
					if (FlatIdent_2C1E9 == 0) then
						UIScale.Scale = 0.3;
						CreateTween({UIScale,"Scale",1.2,0.1});
						FlatIdent_2C1E9 = 1;
					end
				end
			end);
			function SetSlider(NewValue)
				if (type(NewValue) ~= "number") then
					return;
				end
				local Min, Max = Min * Increase, Max * Increase;
				local SliderPos = (NewValue - Min) / (Max - Min);
				SetFlag(Flag, NewValue);
				CreateTween({SliderIcon,"Position",UDim2.fromScale(math.clamp(SliderPos, 0, 1), 0.5),0.3,true});
			end
			SetSlider(Default);
			SliderIcon:GetPropertyChangedSignal("Position"):Connect(UpdateValues);
			UpdateValues();
			local Slider = {};
			Slider.Set = function(self, NewVal1, NewVal2)
				if (NewVal1 and NewVal2) then
					local FlatIdent_8A1DB = 0;
					while true do
						if (0 == FlatIdent_8A1DB) then
							LabelFunc:SetTitle(NewVal1);
							LabelFunc:SetDesc(NewVal2);
							break;
						end
					end
				elseif (type(NewVal1) == "string") then
					LabelFunc:SetTitle(NewVal1);
				elseif (type(NewVal1) == "function") then
					Callback = NewVal1;
				elseif (type(NewVal1) == "number") then
					SetSlider(NewVal1);
				end
			end;
			Slider.Callback = function(self, ...)
				Funcs:InsertCallback(Callback, ...)(tonumber(Default));
			end;
			Slider.Visible = function(self, ...)
				Funcs:ToggleVisible(Button, ...);
			end;
			Slider.Destroy = function(self)
				Button:Destroy();
			end;
			return Slider;
		end;
		Tab.AddTextBox = function(self, Configs)
			local FlatIdent_161F1 = 0;
			local TName;
			local TDesc;
			local TDefault;
			local TPlaceholderText;
			local TClearText;
			local Callback;
			local Button;
			local LabelFunc;
			local SelectedFrame;
			local TextBoxInput;
			local Pencil;
			local TextBox;
			local Input;
			while true do
				if (2 == FlatIdent_161F1) then
					SelectedFrame = InsertTheme(Create("Frame", Button, {Size=UDim2.new(0, 150, 0, 18),Position=UDim2.new(1, -10, 0.5),AnchorPoint=Vector2.new(1, 0.5),BackgroundColor3=Theme["Color Stroke"]}), "Stroke");
					Make("Corner", SelectedFrame, UDim.new(0, 4));
					TextBoxInput = InsertTheme(Create("TextBox", SelectedFrame, {Size=UDim2.new(0.85, 0, 0.85, 0),AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),BackgroundTransparency=1,Font=Enum.Font.GothamBold,TextScaled=true,TextColor3=Theme["Color Text"],ClearTextOnFocus=TClearText,PlaceholderText=TPlaceholderText,Text=""}), "Text");
					Pencil = Create("ImageLabel", SelectedFrame, {Size=UDim2.new(0, 12, 0, 12),Position=UDim2.new(0, -5, 0.5),AnchorPoint=Vector2.new(1, 0.5),Image="rbxassetid://15637081879",BackgroundTransparency=1});
					FlatIdent_161F1 = 3;
				end
				if (4 == FlatIdent_161F1) then
					Input();
					TextBoxInput.FocusLost:Connect(function()
						CreateTween({Pencil,"ImageColor3",Color3.fromRGB(255, 255, 255),0.2});
					end);
					TextBoxInput.Focused:Connect(function()
						CreateTween({Pencil,"ImageColor3",Theme["Color Theme"],0.2});
					end);
					TextBox.OnChanging = false;
					FlatIdent_161F1 = 5;
				end
				if (FlatIdent_161F1 == 1) then
					TClearText = Configs[3] or Configs.ClearText or false;
					Callback = Funcs:GetCallback(Configs, 4);
					if ((type(TDefault) ~= "string") or (TDefault:gsub(" ", ""):len() < 1)) then
						TDefault = false;
					end
					Button, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -38));
					FlatIdent_161F1 = 2;
				end
				if (FlatIdent_161F1 == 3) then
					TextBox = {};
					Input = nil;
					function Input()
						local Text = TextBoxInput.Text;
						if (Text:gsub(" ", ""):len() > 0) then
							local FlatIdent_2FB2F = 0;
							while true do
								if (FlatIdent_2FB2F == 1) then
									TextBoxInput.Text = Text;
									break;
								end
								if (FlatIdent_2FB2F == 0) then
									if (type(TextBox.OnChanging) == "function") then
										Text = TextBox.OnChanging(Text) or Text;
									end
									Funcs:FireCallback(Callback, Text);
									FlatIdent_2FB2F = 1;
								end
							end
						end
					end
					TextBoxInput.FocusLost:Connect(Input);
					FlatIdent_161F1 = 4;
				end
				if (FlatIdent_161F1 == 5) then
					TextBox.Visible = function(self, ...)
						Funcs:ToggleVisible(Button, ...);
					end;
					TextBox.Destroy = function(self)
						Button:Destroy();
					end;
					return TextBox;
				end
				if (0 == FlatIdent_161F1) then
					TName = Configs[1] or Configs.Name or Configs.Title or "Text Box";
					TDesc = Configs.Desc or Configs.Description or "";
					TDefault = Configs[2] or Configs.Default or "";
					TPlaceholderText = Configs[5] or Configs.PlaceholderText or "Input";
					FlatIdent_161F1 = 1;
				end
			end
		end;
		Tab.AddDiscordInvite = function(self, Configs)
			local FlatIdent_4EC26 = 0;
			local Title;
			local Desc;
			local Logo;
			local Invite;
			local InviteHolder;
			local InviteLabel;
			local FrameHolder;
			local ImageLabel;
			local LTitle;
			local LDesc;
			local JoinButton;
			local ClickDelay;
			local DiscordInvite;
			while true do
				if (FlatIdent_4EC26 == 2) then
					ImageLabel = Create("ImageLabel", FrameHolder, {Size=UDim2.new(0, 30, 0, 30),Position=UDim2.new(0, 7, 0, 7),Image=Logo,BackgroundTransparency=1});
					Make("Corner", ImageLabel, UDim.new(0, 4));
					Make("Stroke", ImageLabel);
					LTitle = InsertTheme(Create("TextLabel", FrameHolder, {Size=UDim2.new(1, -52, 0, 15),Position=UDim2.new(0, 44, 0, 7),Font=Enum.Font.GothamBold,TextColor3=Theme["Color Text"],TextXAlignment="Left",BackgroundTransparency=1,TextSize=10,Text=Title}), "Text");
					FlatIdent_4EC26 = 3;
				end
				if (FlatIdent_4EC26 == 5) then
					return DiscordInvite;
				end
				if (FlatIdent_4EC26 == 3) then
					LDesc = InsertTheme(Create("TextLabel", FrameHolder, {Size=UDim2.new(1, -52, 0, 0),Position=UDim2.new(0, 44, 0, 22),TextWrapped="Y",AutomaticSize="Y",Font=Enum.Font.Gotham,TextColor3=Theme["Color Dark Text"],TextXAlignment="Left",BackgroundTransparency=1,TextSize=8,Text=Desc}), "DarkText");
					JoinButton = Create("TextButton", FrameHolder, {Size=UDim2.new(1, -14, 0, 16),AnchorPoint=Vector2.new(0.5, 1),Position=UDim2.new(0.5, 0, 1, -7),Text="Join",Font=Enum.Font.GothamBold,TextSize=12,TextColor3=Color3.fromRGB(220, 220, 220),BackgroundColor3=Color3.fromRGB(50, 150, 50)});
					Make("Corner", JoinButton, UDim.new(0, 5));
					ClickDelay = nil;
					FlatIdent_4EC26 = 4;
				end
				if (FlatIdent_4EC26 == 4) then
					JoinButton.Activated:Connect(function()
						local FlatIdent_734D3 = 0;
						while true do
							if (FlatIdent_734D3 == 2) then
								task.wait(5);
								SetProps(JoinButton, {Text="Join",BackgroundColor3=Color3.fromRGB(50, 150, 50),TextColor3=Color3.fromRGB(220, 220, 220)});
								FlatIdent_734D3 = 3;
							end
							if (FlatIdent_734D3 == 1) then
								ClickDelay = true;
								SetProps(JoinButton, {Text="Copied to Clipboard",BackgroundColor3=Color3.fromRGB(100, 100, 100),TextColor3=Color3.fromRGB(150, 150, 150)});
								FlatIdent_734D3 = 2;
							end
							if (FlatIdent_734D3 == 0) then
								setclipboard(Invite);
								if ClickDelay then
									return;
								end
								FlatIdent_734D3 = 1;
							end
							if (FlatIdent_734D3 == 3) then
								ClickDelay = false;
								break;
							end
						end
					end);
					DiscordInvite = {};
					DiscordInvite.Destroy = function(self)
						InviteHolder:Destroy();
					end;
					DiscordInvite.Visible = function(self, ...)
						Funcs:ToggleVisible(InviteHolder, ...);
					end;
					FlatIdent_4EC26 = 5;
				end
				if (FlatIdent_4EC26 == 1) then
					InviteHolder = Create("Frame", Container, {Size=UDim2.new(1, 0, 0, 80),Name="Option",BackgroundTransparency=1});
					InviteLabel = Create("TextLabel", InviteHolder, {Size=UDim2.new(1, 0, 0, 15),Position=UDim2.new(0, 5),TextColor3=Color3.fromRGB(40, 150, 255),Font=Enum.Font.GothamBold,TextXAlignment="Left",BackgroundTransparency=1,TextSize=10,Text=Invite});
					FrameHolder = InsertTheme(Create("Frame", InviteHolder, {Size=UDim2.new(1, 0, 0, 65),AnchorPoint=Vector2.new(0, 1),Position=UDim2.new(0, 0, 1),BackgroundColor3=Theme["Color Hub 2"]}), "Frame");
					Make("Corner", FrameHolder);
					FlatIdent_4EC26 = 2;
				end
				if (FlatIdent_4EC26 == 0) then
					Title = Configs[1] or Configs.Name or Configs.Title or "Discord";
					Desc = Configs.Desc or Configs.Description or "";
					Logo = Configs[2] or Configs.Logo or "";
					Invite = Configs[3] or Configs.Invite or "";
					FlatIdent_4EC26 = 1;
				end
			end
		end;
		return Tab;
	end;
	CloseButton.Activated:Connect(Window.CloseBtn);
	MinimizeButton.Activated:Connect(Window.MinimizeBtn);
	return Window;
end;
return redzlib;