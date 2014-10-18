

function MLC_SetupBubble()
	--MLC_BubbleFrame = 
	--MLC_AnimatedPonyBox
	
	local backdrop = {
	  bgFile = "Interface\\AddOns\\MyLittleCompanion\\Images\\Solid",  -- path to the background texture
	  edgeFile = "Interface\\AddOns\\MyLittleCompanion\\Images\\Bubble",  -- path to the border texture
	  edgeSize = 20,  -- thickness of edge segments and square size of edge corners (in pixels)
	  insets = {    -- distance from the edges of the frame to those of the background texture (in pixels)
		left = 5,
		right = 5,
		top = 5,
		bottom = 5
	  }
	}
	
	MLC_BubbleFrame = CreateFrame("Frame", "MLC_BubbleFrame", MLC_AnimatedPonyBox)
	MLC_BubbleFrame:SetPoint("Bottom", MLC_AnimatedPonyBox, "Top", 0,-40);
	MLC_BubbleFrame:SetWidth(140); 
	MLC_BubbleFrame:SetHeight(30);
	MLC_BubbleFrame:SetBackdrop(backdrop);
	MLC_BubbleFrame:SetBackdropColor(0,1,0);
	MLC_BubbleFrame:SetBackdropBorderColor(1,0,0);
	
	MLC_BubbleFrame:Hide();
	
	MLC_BubbleSpeechBackground = MLC_BubbleFrame:CreateTexture("MLC_BubbleSpeechBackground")
	MLC_BubbleSpeechBackground:SetPoint("TopLeft", MLC_BubbleFrame, "BottomLeft", 0,6);
	MLC_BubbleSpeechBackground:SetWidth(32); 
	MLC_BubbleSpeechBackground:SetHeight(16);
	MLC_BubbleSpeechBackground:SetTexture("Interface\\AddOns\\MyLittleCompanion\\Images\\BubbleBottomBackdrop")
	MLC_BubbleSpeechBackground:SetVertexColor(0,1,0);
	
	MLC_BubbleSpeechOutline = MLC_BubbleFrame:CreateTexture("MLC_BubbleSpeechOutline")
	MLC_BubbleSpeechOutline:SetPoint("Center", MLC_BubbleSpeechBackground, "Center");
	MLC_BubbleSpeechOutline:SetWidth(32); 
	MLC_BubbleSpeechOutline:SetHeight(16);
	MLC_BubbleSpeechOutline:SetTexture("Interface\\AddOns\\MyLittleCompanion\\Images\\BubbleBottom")
	MLC_BubbleSpeechOutline:SetVertexColor(1,0,0);
	
	MLC_BubbleText =  MLC_BubbleFrame:CreateFontString("MLC_BubbleText" ,"ARTWORK","GameFontNormal");
	MLC_BubbleText:SetPoint("Top", 0, -7)
	MLC_BubbleText:SetWidth(120);
	MLC_BubbleText:SetJustifyH("Center");
	MLC_BubbleText:SetNonSpaceWrap(true);
	
	MLC_SetBubbleText("ScrollingMessageFrame has all of the methods from UIObject, FontInstance, Region and Frame, plus the following:")
	--FontString:SetText("text")
	
	local r1,g1,b1 = MLC_HexToRGBPerc(MLC_AnimationData[MLC_DB["Pony"]]["BackdropColor"])
	local r2,g2,b2 = MLC_HexToRGBPerc(MLC_AnimationData[MLC_DB["Pony"]]["BorderColor"])
	local r3,g3,b3 = MLC_HexToRGBPerc(MLC_AnimationData[MLC_DB["Pony"]]["TextColor"])
	
	MLC_SetBubbleColor(r1,g1,b1, r2,g2,b2, r3,g3,b3)	--middle, outer, text
end

function MLC_SetBubbleColor(r1,g1,b1, r2,g2,b2, r3,g3,b3)	--middle, outer, text
	MLC_BubbleFrame:SetBackdropColor(r1,g1,b1);
	MLC_BubbleFrame:SetBackdropBorderColor(r2,g2,b2);
	
	MLC_BubbleSpeechBackground:SetVertexColor(r1,g1,b1);
	MLC_BubbleSpeechOutline:SetVertexColor(r2,g2,b2);
	
	MLC_BubbleText:SetTextColor(r3,g3,b3);
end

function MLC_SetBubblePoint(LeftOrRight)	-- "Left" or "Right"
	MLC_BubbleSpeechBackground:ClearAllPoints();
	
	if LeftOrRight == "Left" then
		MLC_BubbleSpeechBackground:SetPoint("TopLeft", MLC_BubbleFrame, "BottomLeft", 10,7);
		MLC_BubbleSpeechBackground:SetTexCoord(1, 0, 0, 1);
		MLC_BubbleSpeechOutline:SetTexCoord(1, 0, 0, 1);
	else
		MLC_BubbleSpeechBackground:SetPoint("TopRight", MLC_BubbleFrame, "BottomRight", -10,7);
		MLC_BubbleSpeechBackground:SetTexCoord(0, 1, 0, 1);
		MLC_BubbleSpeechOutline:SetTexCoord(0, 1, 0, 1);
	end
end

function MLC_SetBubbleText(BubbleText)
	MLC_BubbleText:SetText(BubbleText);
	
	MLC_BubbleFrame:SetHeight(MLC_BubbleText:GetHeight() + 16)
end

function MLC_DisplayBubbleText(Text, Time)
	Time = Time or 5;
	MLC_SetBubbleText(Text);
	MLC_BubbleFrame:Show();
	
	MLC_BubbleUpdateTimeout = Time;
	MLC_BubbleUpdateFrame:SetScript("OnUpdate", function(self, elapsed) 
		MLC_BubbleUpdateTimeout = MLC_BubbleUpdateTimeout - elapsed;
		
		if MLC_BubbleUpdateTimeout <= 0 then 
			MLC_BubbleFrame:Hide(); 
			
			MLC_BubbleUpdateFrame:SetScript("OnUpdate", function(self, elapsed) 
				--Blank
			end)
		end;		
	end)
end

local MLC_BubbleUpdateTimeout = 0;
MLC_BubbleUpdateFrame = CreateFrame("Frame");
MLC_BubbleUpdateFrame:SetScript("OnUpdate", function(self, elapsed) 
	--Blank
end)


MLC_BubbleEventHandler = CreateFrame("Frame");
MLC_BubbleEventHandler:RegisterEvent("PLAYER_REGEN_DISABLED");	-- enter combat
MLC_BubbleEventHandler:RegisterEvent("PLAYER_DEAD");			-- dead

MLC_BubbleEventHandler:SetScript("OnEvent", function(self, event) 
	
	local CurrentPony = MLC_DB["Pony"];
	
	if CurrentPony == "Terran" then
		if event == "PLAYER_REGEN_DISABLED" then	--combat
			MLC_CreateBubble("Combat", CurrentPony);
		elseif event == "PLAYER_DEAD" then	--dead
			MLC_CreateBubble("Dead", CurrentPony);
		end
	end	
end)

MLC_BubbleQuotes = {};

MLC_BubbleQuotes["Terran"] = {

	["Combat"] = {
		"Gangway, coming through!",
		"Go go go!",
		"Orders received",
		"Keep your shirt on, sparky",
		"Gimme some!",
		"Booyah!",
		"Feed it!",
		"Get some!",
		"Die! Die! Die!",
		"Bring it!",
		"Let's rock!",
		"How's that for whoop-ass?",
	},
	["Dead"] = {
		"Get up soldier!",
		"What do you think this is? A game?",
		"Commander? Commander!? Commaaaaaaaaaaander!!!",
		"Medic!",
		"Fall back, soldier down!",
		"Requesting immediate air-evac to SE-201-324!",
		"Hang in there!",
		},
}

function MLC_CreateBubble(Type, Character)
	
	if random(1,5) == 1 then
		if MLC_BubbleQuotes[Character] then
			if MLC_BubbleQuotes[Character][Type] then	
				if #MLC_BubbleQuotes[Character][Type] > 0 then -- make sure there are quotes
					local Num = #MLC_BubbleQuotes[Character][Type];
					local Rand = random(1,Num)
					
					local Quote = MLC_BubbleQuotes[Character][Type][Rand];
					
					--print(Quote)
					
					MLC_DisplayBubbleText(Quote, 6)
				end
			end
		end
	end
end