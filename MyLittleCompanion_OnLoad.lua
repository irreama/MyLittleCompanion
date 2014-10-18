--
--		This file handles the 
--		on load handler
--		
--		its only function is to
--		call the other functions 
--		when the addon loads
--
--
--
--
--
--

MLC_OnLoadFrame = CreateFrame("FRAME")
MLC_OnLoadFrame:RegisterEvent("VARIABLES_LOADED");
MLC_OnLoadFrame:SetScript("OnEvent", function() 
	MLC_OnLoad()
	
	if MLC_CrabbyHasLoaded then
		MLC_Crabby_OnLoad();
	end	
end)

function MLC_OnLoad()
	
	MLC_SetupVariables();
	
	MLC_VersionCheck();
	
	MLC_SetupFrames();
	
	MLC_SetupBubble();
	
	MLC_OptionsSetup();
	
	MLC_SetupSlashCommands();
	--MLC_RegisterEvents();
	
	--mlptest()
	
	FIM_AnimationTimeoutHandler();	-- begin the animation
end

function MLC_SetupVariables()
	MLC_FileVersion = MLC_FileVersion or 0;
	
	MLC_DB = MLC_DB or {};
	MLC_UDB = {};	--unsaved variables
	
	MLC_UDB["Direction"] = "Right";
	MLC_UDB["XIndex"]	 = 1;
	MLC_UDB["MinIndex"] = 1;
	MLC_UDB["MaxIndex"] = 1;
	MLC_UDB["YIndex"]   = 1;
	MLC_UDB["LastUpdateTime"] = GetTime();
	MLC_UDB["IdleTime"] = 0.1;
	MLC_UDB["WaitOffset"] = 0;
	
	MLC_UDB["Size"] = 128;
	
	MLC_DB["Strata"] = MLC_DB["Strata"] or "MEDIUM";
	
	MLC_UDB["LastAction"] = "Idle";
	
	if MLC_DB["HideGreen"] 	== nil then MLC_DB["HideGreen"] = false; 	end
	if MLC_DB["Pony"] 		== nil then MLC_DB["Pony"] = "Fluttershy";	end
	MLC_DB["Scale"] 		= MLC_DB["Scale"]  or 100;
end

function MLC_SetupSlashCommands()
	 SLASH_MF1 = "/mlc";
	 SLASH_MF2 = "/mlp";
	 SLASH_MF3 = "/fim";
	 
	 
	 SlashCmdList["MF"] =  MLC_SlashCommand;
end

function MLC_SlashCommand(cmd)
--Stuff that happens when you press /mf <command>
	if cmd == "" then
		MLC_CharacterBox:Show()
		MLC_DB["HideGreen"] = false;
	elseif cmd == "reset" then
		MLC_CharacterBox:Show()
		MLC_CharacterBox:ClearAllPoints()
		MLC_CharacterBox:SetPoint("Center")
		MLC_CharacterBox:SetHeight(150)
		MLC_CharacterBox:SetWidth(150)
	elseif cmd == "debug" then
		if MLC_DB["Debug"] == true then
			MLC_DB["Debug"] = false;
		else
			MLC_DB["Debug"] = true;
		end
	elseif tonumber(cmd) ~= nil then
		MLC_Size = tonumber(cmd);
		MLC_Action(nil, nil, nil, nil);
	end
end

function MLC_VersionCheck()
	if MLC_FileVersion < 1.18 then
		MLC_FileVersion = 1.18;
		MLC_VersionAlertFrame = CreateFrame("Frame","MLC_VersionAlertFrame",UIParent)
		MLC_VersionAlertFrame:SetFrameStrata("TOOLTIP" )
		
		local backdrop = {
		  bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",  -- path to the background texture
		  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",  -- path to the border texture
		  
		  tile = false,    -- true to repeat the background texture to fill the frame, false to scale it
		  tileSize = 32,  -- size (width or height) of the square repeating background tiles (in pixels)
		  edgeSize = 20,  -- thickness of edge segments and square size of edge corners (in pixels)
		  insets = {    -- distance from the edges of the frame to those of the background texture (in pixels)
			left = 4,
			right = 4,
			top = 4,
			bottom = 4
		  }
		}


		MLC_VersionAlertFrame:SetBackdrop(backdrop);
		MLC_VersionAlertFrame:SetPoint("Center");
		MLC_VersionAlertFrame:SetWidth(400);
		MLC_VersionAlertFrame:SetHeight(210);
		
		MLC_VersionMessage =  MLC_VersionAlertFrame:CreateFontString("MLC_VersionMessage" ,"ARTWORK","GameFontNormal");
		MLC_VersionMessage:SetPoint("Top",0,-10)
		MLC_VersionMessage:SetWidth(MLC_VersionAlertFrame:GetWidth() - 20);
		MLC_VersionMessage:SetText(
			"My Little Companion - Update " .. MLC_FileVersion .. "!" .. "\n" .. 
			"" .. "\n" .. 
			"|cffffffff" .. "Happy April! I have a special surprise for you!" .. "\n" .. 
			"" .. "\n" .. 
			"You can select a pony by pressing Esc and going to \"Interface -> AddOns -> My Little Companion\"" .. "\n" .. 
			"" .. "\n" .. 
			"(This message will not appear again)" .. "\n"
		)
		
		Option1Button = CreateFrame("Button", "Option1Button", MLC_VersionAlertFrame, "UIPanelButtonTemplate");
		Option1Button:SetPoint("BottomLeft",10,10);
		Option1Button:SetWidth(150);
		Option1Button:SetHeight(25);
		Option1Button:SetText("Huh?!");
		Option1Button:SetScript("OnClick",	function(self) 
			MLC_VersionAlertFrame:Hide();
			
			MLC_SetCurrentPony("Terran")
		end);
		
		Option2Button = CreateFrame("Button", "Option2Button", MLC_VersionAlertFrame, "UIPanelButtonTemplate");
		Option2Button:SetPoint("BottomRight",-10,10);
		Option2Button:SetWidth(100);
		Option2Button:SetHeight(25);
		Option2Button:SetText("Close Screen");
		Option2Button:SetScript("OnClick",	function(self) 
			MLC_VersionAlertFrame:Hide();
		end);
		
-----------------------CLOSE BUTTON
		MLC_CloseButton = CreateFrame("Button", "MLC_CloseButton", MLC_VersionAlertFrame, "UIPanelCloseButton")
		MLC_CloseButton:SetWidth(30)
		MLC_CloseButton:SetHeight(30)
		MLC_CloseButton:SetPoint("TOPRIGHT", -5, -5)
	end
end

function MLC_HexToRGBPerc(hex)
	local rhex, ghex, bhex = string.sub(hex, 1, 2), string.sub(hex, 3, 4), string.sub(hex, 5, 6)
	return tonumber(rhex, 16)/255, tonumber(ghex, 16)/255, tonumber(bhex, 16)/255
end