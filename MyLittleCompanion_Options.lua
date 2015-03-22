
function MLC_OptionsSetup()
	MLC_Options = {};
	MLC_Options.panel = CreateFrame( "Frame", nil, UIParent );
	-- Register in the Interface Addon Options GUI
	-- Set the name for the Category for the Options Panel
	MLC_Options.panel.name = "My Little Companion";
	-- Add the panel to the Interface Options
	InterfaceOptions_AddCategory(MLC_Options.panel);
	
-- "My Little Companion - Options"
	MLC_Title =  MLC_Options.panel:CreateFontString("MLC_Title" ,"ARTWORK","GameFontNormal");
	MLC_Title:SetPoint("TopLeft", MLC_Options.panel, "TOPLEFT", 10, -10)
	MLC_Title:SetJustifyH("LEFT")	--Left justified text	
	MLC_Title:SetText("My Little Companion - Options")
	
--	--	--	--	--	--	--	--	--	--	--

--	NEW Menu dropdown to fix the 5.x.x taint
	
--	--	--	--	--	--	--	--	--	--	--

-- Note that this frame must be named for the dropdowns to work.
MLP_DropdownMenu = CreateFrame("Frame", "MLP_DropdownMenu", UIParent, "UIDropDownMenuTemplate")

MLP_PonySelectItems = {
    { text = "|cffffffff" .. "--- Mane Six ---", isTitle = true},
    { text = "|cFFFFFF00*NEW*" .. "|cffFF3300" .. "Apple" .. "|cffFF0000" .. "Jack", 																			func = function() MLC_SetPony("AppleJack"); 			end },
    { text = "|cffFF66FF" .. "Fluttershy", 																														func = function() MLC_SetPony("Fluttershy"); 			end },
    { text = "|cffFF00FF" .. "Pinkie Pie", 																														func = function() MLC_SetPony("Pinkie"); 				end },
    { text = "|cffFF00FF" .. "Pinkie Pie |cffffffff(Gala)", 																									func = function() MLC_SetPony("Pinkie_Gala"); 			end },
    { text = "|cffEE4035" .. "Ra" .. "|cffF47737" .. "in" .. "|cffF5EA80" .. "bo" .. "|cff7BC242" .. "w D" .. "|cff0292D1" .. "as" .. "|cff662F8D" .. "h!", 	func = function() MLC_SetPony("RainbowDash"); 			end },
    { text = "|cffFF00FF" .. "Pinkie Pie", 																														func = function() MLC_SetPony("Pinkie"); 				end },
    { text = "|cffA900FF" .. "Rarity", 																															func = function() MLC_SetPony("Rarity"); 				end },
    { text = "|cff9966CC" .. "Twilight Sparkle", 																												func = function() MLC_SetPony("Twilight"); 				end },

    { text = "", isTitle = true},
    { text = "|cffffffff" .. "--- Fillies ---", isTitle = true},
    { text = "|cFFFFFF00*NEW*" .. "|cffFF66FF" .. "Fluttershy |cffffffff(Filly)", 																				func = function() MLC_SetPony("Filly_Fluttershy"); 		end },

    { text = "", isTitle = true},
    { text = "|cffffffff" .. "--- Other Ponies ---", isTitle = true},
    { text = "|cffFFFF66" .. "De" .. "|cffCCCCCC" .. "rpy", 																									func = function() MLC_SetPony("Derpy"); 				end },
    { text = "|cff9900FF" .. "Luna", 																															func = function() MLC_SetPony("Luna"); 					end },
    { text = "|cff33FF99" .. "Lyra", 																															func = function() MLC_SetPony("Lyra"); 					end },
    { text = "|cff0066FF" .. "Vinyl " .. "|cff00CCFF" .. "Scratch", 																							func = function() MLC_SetPony("Vinyl"); 				end },
    { text = "|cff0066FF" .. "Vinyl " .. "|cff00CCFF" .. "Scratch" .. "|cffffffff" .. " (No Flashing)", 														func = function() MLC_SetPony("Vinyl_NoFlash"); 		end },
    { text = "|cffFFCC22" .. "Sunset Shimmer", 																													func = function() MLC_SetPony("SunsetShimmer"); 		end },
    { text = "|cff1144AA" .. "Princess Luna (S2)", 																												func = function() MLC_SetPony("PrincessLuna"); 			end },
    { text = "|cffC4C4B8" .. "Octavia", 																														func = function() MLC_SetPony("Octavia"); 			end },
	
    { text = "", isTitle = true},
    { text = "|cffffffff" .. "--- Misc ---", isTitle = true},
    { text = "|cff00CCFF" .. "Crabby (The Dungeon Helper)", 																									func = function() MLC_SetPony("Crabby"); 				end },
    { text = "|cFFFFFF00*NEW*" .. "|cff999999" .. "Terran", 																									func = function() MLC_SetPony("Terran"); 				end },
    { text = "|cffCC0000" .. "ToeJam (ToeJam and Earl)", 																										func = function() MLC_SetPony("ToeJam"); 				end },
}

function MLC_SetPony(pony)
	if pony ~= "" then					
		MLC_DB["Pony"] = pony;
		
		if MLC_CrabbyHasLoaded then
			if MLC_DB["Pony"] == "Crabby" then
				MLC_Crabby_ChatReset();
			else
				MLC_Crabby_KillCrabbyChat();
			end
		end
		
		MLC_SetCurrentPony(pony);
	end
end

-- Make the menu appear at the cursor: 
-- EasyMenu(MLP_PonySelectItems, MLP_DropdownMenu, "cursor", 0 , 0, "MENU");
-- Or make the menu appear at the frame:
--MLP_DropdownMenu:SetPoint("Center", UIParent, "Center")
--EasyMenu(MLP_PonySelectItems, MLP_DropdownMenu, MLP_DropdownMenu, 0 , 0, "MENU");

	MLC_SelectPony_Dropdown = CreateFrame("Button", "MLC_SelectPony_Dropdown", MLC_Options.panel, "UIPanelButtonTemplate");
	MLC_SelectPony_Dropdown:SetPoint("TopLeft",MLC_Options.panel,"TopLeft",0,-50);
	MLC_SelectPony_Dropdown:SetWidth(100);
	MLC_SelectPony_Dropdown:SetHeight(25);
	MLC_SelectPony_Dropdown:SetText("Select");
	MLC_SelectPony_Dropdown:SetScript("OnClick",	function(self) 
		EasyMenu(MLP_PonySelectItems, MLP_DropdownMenu, MLC_SelectPony_Dropdown, 0 , 0, "MENU");
	end);
	
MLC_StrataList = {
    { text = "BACKGROUND", 				func = function() MLP_SetStrata("BACKGROUND"); 				end },
	{ text = "LOW", 					func = function() MLP_SetStrata("LOW"); 					end },
	{ text = "MEDIUM", 					func = function() MLP_SetStrata("MEDIUM"); 					end },
	{ text = "HIGH", 					func = function() MLP_SetStrata("HIGH"); 					end },
	{ text = "DIALOG", 					func = function() MLP_SetStrata("DIALOG"); 					end },
	{ text = "FULLSCREEN", 				func = function() MLP_SetStrata("FULLSCREEN"); 				end },
	{ text = "FULLSCREEN_DIALOG", 		func = function() MLP_SetStrata("FULLSCREEN_DIALOG"); 		end },
	{ text = "TOOLTIP", 				func = function() MLP_SetStrata("TOOLTIP"); 				end },
}

	function MLP_SetStrata(strata)
		MLC_DB["Strata"] = strata
		MLC_AnimatedPonyBox:SetFrameStrata(strata)
	end
	
	MLC_PonyStrata_Dropdown = CreateFrame("Button", "MLC_PonyStrata_Dropdown", MLC_Options.panel, "UIPanelButtonTemplate");
	MLC_PonyStrata_Dropdown:SetPoint("TopLeft",MLC_Options.panel,"TopLeft",140,-50);
	MLC_PonyStrata_Dropdown:SetWidth(100);
	MLC_PonyStrata_Dropdown:SetHeight(25);
	MLC_PonyStrata_Dropdown:SetText("Strata");
	MLC_PonyStrata_Dropdown:SetScript("OnClick",	function(self) 
		EasyMenu(MLC_StrataList, MLP_DropdownMenu, MLC_PonyStrata_Dropdown, 0 , 0, "MENU");
	end);
	
--	--	--	--	--	--	--	--	--	--	--
	
	
	
--[[
	
--	--	--	--	--	--	--	--	--	--	--
	function MLC_SelectPony_Dropdown_Initialize(self,level)
		level = 1;
		
		local MLC_CharacterList = {
			{
				["DisplayName"] = "|cffffffff" .. "--- Mane Six ---",
				["FileName"] = "",
			},
			{
				["DisplayName"] = "|cFFFFFF00*NEW*" .. "|cffFF3300" .. "Apple" .. "|cffFF0000" .. "Jack",
				["FileName"] = "AppleJack",
			},
			{
				["DisplayName"] = "|cffFF66FF" .. "Fluttershy",
				["FileName"] = "Fluttershy",
			},
			{
				["DisplayName"] = "|cffFF00FF" .. "Pinkie Pie",
				["FileName"] = "Pinkie",
			},
			{
				["DisplayName"] = "|cffFF00FF" .. "Pinkie Pie |cffffffff(Gala)",
				["FileName"] = "Pinkie_Gala",
			},
			{
				["DisplayName"] = "|cffEE4035" .. "Ra" .. "|cffF47737" .. "in" .. "|cffF5EA80" .. "bo" .. "|cff7BC242" .. "w D" .. "|cff0292D1" .. "as" .. "|cff662F8D" .. "h!",
				["FileName"] = "RainbowDash",
			},
			{
				["DisplayName"] = "|cffA900FF" .. "Rarity",
				["FileName"] = "Rarity",
			},
			{
				["DisplayName"] = "|cff9966CC" .. "Twilight Sparkle",
				["FileName"] = "Twilight",
			},
			{
				["DisplayName"] = "|cffffffff" .. "--- Fillies ---",
				["FileName"] = "",
			},
			{
				["DisplayName"] = "|cFFFFFF00*NEW*" .. "|cffFF66FF" .. "Fluttershy |cffffffff(Filly)",
				["FileName"] = "Filly_Fluttershy",
			},
			{
				["DisplayName"] = "|cffffffff" .. "--- Other Ponies ---",
				["FileName"] = "",
			},
			{
				["DisplayName"] = "|cffFFFF66" .. "De" .. "|cffCCCCCC" .. "rpy",
				["FileName"] = "Derpy",
			},
			{
				["DisplayName"] = "|cff9900FF" .. "Luna",
				["FileName"] = "Luna",
			},
			{
				["DisplayName"] = "|cff33FF99" .. "Lyra",
				["FileName"] = "Lyra",
			},
			{
				["DisplayName"] = "|cff0066FF" .. "Vinyl " .. "|cff00CCFF" .. "Scratch",
				["FileName"] = "Vinyl",
			},
			{
				["DisplayName"] = "|cff0066FF" .. "Vinyl " .. "|cff00CCFF" .. "Scratch" .. "|cffffffff" .. " (No Flashing)",
				["FileName"] = "Vinyl_NoFlash",
			},
			{
				["DisplayName"] = "|cffffffff" .. "--- Misc ---",
				["FileName"] = "",
			},
			{
				["DisplayName"] = "|cff00CCFF" .. "Crabby (The Dungeon Helper)",
				["FileName"] = "Crabby",
			},
			{
				["DisplayName"] = "|cFFFFFF00*NEW*" .. "|cff999999" .. "Terran",
				["FileName"] = "Terran",
			},
			{
				["DisplayName"] = "|cffCC0000" .. "ToeJam (ToeJam and Earl)",
				["FileName"] = "ToeJam",
			},
		}
		
		for i=1,#MLC_CharacterList do
			local info = UIDropDownMenu_CreateInfo();
			info.hasArrow = false;
			info.notCheckable = true;
			info.text = MLC_CharacterList[i]["DisplayName"];
			info.func       = function(self)
				local ID = tonumber(self:GetID());
				
				local pony = MLC_CharacterList[i]["FileName"];
				
				if pony ~= "" then					
					_G["MLC_SelectPony_Dropdown".."Text"]:SetText(pony)
					MLC_DB["Pony"] = pony;
					
					if MLC_CrabbyHasLoaded then
						if MLC_DB["Pony"] == "Crabby" then
							MLC_Crabby_ChatReset();
						else
							MLC_Crabby_KillCrabbyChat();
						end
					end
					
					MLC_SetCurrentPony(pony);
					
				end
			end; 
			
			UIDropDownMenu_AddButton(info, level);
		end
	end
	
	MLC_SelectPony_Dropdown = CreateFrame("Frame", "MLC_SelectPony_Dropdown", MLC_Options.panel, "UIDropDownMenuTemplate");
	MLC_SelectPony_Dropdown:SetPoint("TopLeft",MLC_Options.panel,"TopLeft",0,-50);
	MLC_SelectPony_Dropdown:SetWidth(100);
	
	_G["MLC_SelectPony_Dropdown".."Text"]:SetText("Select Pony")	
	UIDropDownMenu_Initialize(MLC_SelectPony_Dropdown, MLC_SelectPony_Dropdown_Initialize);
--	--	--	--	--	--	--	--	--	--	--	
	function MLC_PonyStrata_Dropdown_Initialize(self,level)
		level = 1;
		
		MLC_StrataList = {
			"BACKGROUND",
			"LOW",
			"MEDIUM",
			"HIGH",
			"DIALOG",
			"FULLSCREEN",
			"FULLSCREEN_DIALOG",
			"TOOLTIP" 
		}
		
		for i=1,#MLC_StrataList do
			local info = UIDropDownMenu_CreateInfo();
			info.hasArrow = false;
			info.notCheckable = true;
			info.text = MLC_StrataList[i];
			info.func       = function(self)
				local ID = tonumber(self:GetID());
				
				local strata = MLC_StrataList[i]
				
				MLC_DB["Strata"] = strata
				MLC_AnimatedPonyBox:SetFrameStrata(strata)
				
				_G["MLC_PonyStrata_Dropdown".."Text"]:SetText(strata)
			end; 
			
			UIDropDownMenu_AddButton(info, level);
		end
	end
	
	MLC_PonyStrata_Dropdown = CreateFrame("Frame", "MLC_PonyStrata_Dropdown", MLC_Options.panel, "UIDropDownMenuTemplate");
	MLC_PonyStrata_Dropdown:SetPoint("TopLeft",MLC_Options.panel,"TopLeft",140,-50);
	MLC_PonyStrata_Dropdown:SetWidth(100);
	
	_G["MLC_PonyStrata_Dropdown".."Text"]:SetText(MLC_DB["Strata"])	
	UIDropDownMenu_Initialize(MLC_PonyStrata_Dropdown, MLC_PonyStrata_Dropdown_Initialize);
--	--	--	--	--	--	--	--	--	--	--


]]--	



	
	
	MLC_ShowGreenButton = CreateFrame("Button", "MLC_ShowGreenButton", MLC_Options.panel, "UIPanelButtonTemplate");
	MLC_ShowGreenButton:SetPoint("TopLeft",MLC_Options.panel,"TopLeft",300,-50);
	MLC_ShowGreenButton:SetWidth(100);
	MLC_ShowGreenButton:SetHeight(25);
	MLC_ShowGreenButton:SetText("Show Area");
	MLC_ShowGreenButton:SetScript("OnClick",	function(self) 
		MLC_CharacterBox:Show()
		MLC_DB["HideGreen"] = false;
	end);

	MLC_ResetGreenButton = CreateFrame("Button", "MLC_ResetGreenButton", MLC_Options.panel, "UIPanelButtonTemplate");
	MLC_ResetGreenButton:SetPoint("Top",MLC_ShowGreenButton,"Bottom",0,-5);
	MLC_ResetGreenButton:SetWidth(100);
	MLC_ResetGreenButton:SetHeight(25);
	MLC_ResetGreenButton:SetText("Reset Area");
	MLC_ResetGreenButton:SetScript("OnClick",	function(self) 
		MLC_CharacterBox:Show()
		MLC_CharacterBox:ClearAllPoints()
		MLC_CharacterBox:SetPoint("Center")
		MLC_CharacterBox:SetHeight(150)
		MLC_CharacterBox:SetWidth(150)
	end);
	
 --------------------SLIDER BAR 1 : Scale--------------------------------

 -- Set Scale
	MLC_PonySize_String =  MLC_Options.panel:CreateFontString("MLC_PonySize_String" ,"ARTWORK","GameFontNormal");
	MLC_PonySize_String:SetPoint("TopLeft", MLC_Options.panel, "TOPLEFT", 10, -110)
	MLC_PonySize_String:SetJustifyH("LEFT")
	MLC_PonySize_String:SetText("Pony Scale")
	
	MLC_PonySize_Slider = CreateFrame("Slider", "MLC_PonySize_Slider", MLC_Options.panel, "OptionsSliderTemplate")
	MLC_PonySize_Slider:SetWidth(300)
	MLC_PonySize_Slider:SetHeight( 20 )
	MLC_PonySize_Slider:SetPoint('TOPLEFT', 20, -135)
	MLC_PonySize_Slider:SetOrientation('HORIZONTAL')
	 
	MLC_PonySize_Slider:SetMinMaxValues(1, 300)
	MLC_PonySize_Slider:SetValueStep(1)
	MLC_PonySize_Slider:SetValue(MLC_DB["Scale"])

	_G[MLC_PonySize_Slider:GetName() .. 'Low']:SetText('1%');
	_G[MLC_PonySize_Slider:GetName() .. 'High']:SetText('300%'); 	
	_G[MLC_PonySize_Slider:GetName() .. 'Text']:SetText(MLC_PonySize_Slider:GetValue() .. "%");

	MLC_AnimatedPonyBox:SetScale(MLC_PonySize_Slider:GetValue()/100);
 
 
	MLC_PonySize_Slider:SetScript("OnValueChanged",function(self)
		MLC_AnimatedPonyBox:SetScale(self:GetValue()/100);
		_G[self:GetName() .. 'Text']:SetText(self:GetValue() .. "%");
		MLC_DB["Scale"] = self:GetValue()
	end)
 ----------------------------------------------------
end

function test()
	print(test)
end

function MLC_SetCurrentPony(pony)
	MLC_DB["Pony"] = pony;

	MLC_AnimatedPony:SetTexture("Interface\\Addons\\MyLittleCompanion\\Images\\" .. pony)
	
	MLC_Action("Walk", 0, 0, 2)	-- Action, x, y, Time (seconds)
	
	MLC_AnimatedPonyBox:SetWidth(MLC_AnimationData[pony]["SizeModifier"]); 
	MLC_AnimatedPonyBox:SetHeight(MLC_AnimationData[pony]["SizeModifier"]);
	
	local r1,g1,b1 = MLC_HexToRGBPerc(MLC_AnimationData[pony]["BackdropColor"])
	local r2,g2,b2 = MLC_HexToRGBPerc(MLC_AnimationData[pony]["BorderColor"])
	local r3,g3,b3 = MLC_HexToRGBPerc(MLC_AnimationData[pony]["TextColor"])
	
	MLC_SetBubbleColor(r1,g1,b1, r2,g2,b2, r3,g3,b3)	--middle, outer, text
end