
function MLC_SetupFrames()

	
--	--	--	--	--	--	--	--	--
--		The big green box		--
--								--
--								--
--	--	--	--	--	--	--	--	--
	MLC_CharacterBox = CreateFrame("Frame", "MLC_CharacterBox_" .. 1, UIParent);
	if MLC_DB[MLC_CharacterBox:GetName()] then
		MLC_CharacterBox:SetPoint(	MLC_DB[MLC_CharacterBox:GetName()][1], 
									MLC_DB[MLC_CharacterBox:GetName()][2],
									MLC_DB[MLC_CharacterBox:GetName()][3],
									MLC_DB[MLC_CharacterBox:GetName()][4],
									MLC_DB[MLC_CharacterBox:GetName()][5]
									)
		MLC_CharacterBox:SetHeight(MLC_DB[MLC_CharacterBox:GetName()]["Height"])
		MLC_CharacterBox:SetWidth(MLC_DB[MLC_CharacterBox:GetName()]["Width"])
	else
		MLC_CharacterBox:SetPoint("CENTER");
		MLC_CharacterBox:SetWidth(130); 
		MLC_CharacterBox:SetHeight(130);
	end
	MLC_CharacterBox:SetBackdrop({bgFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Background"})
	MLC_CharacterBox:SetBackdropColor(0, 1, 0, 1);
	MLC_CharacterBox:SetMovable();
	MLC_CharacterBox:EnableMouse(true);
	MLC_CharacterBox:SetResizable(true);
	MLC_CharacterBox:SetMinResize(102,102);
	MLC_CharacterBox:SetClampedToScreen( true )
	MLC_CharacterBox:SetScript("OnMouseDown",function(self)
		if IsAltKeyDown() then
			MLC_CharacterBox:Hide();
			
			
			MLC_Action("Walk", 0, 0, 2)	-- Action, x, y, Time (seconds)
			
			MLC_DB[self:GetName()] = {};
			MLC_DB[self:GetName()][1], 
			MLC_DB[self:GetName()][2],
			MLC_DB[self:GetName()][3],
			MLC_DB[self:GetName()][4],
			MLC_DB[self:GetName()][5] = MLC_CharacterBox:GetPoint();
			MLC_DB[self:GetName()]["Height"] = MLC_CharacterBox:GetHeight()
			MLC_DB[self:GetName()]["Width"] = MLC_CharacterBox:GetWidth()
			
			MLC_DB["HideGreen"] = true;
		else
			self:StartSizing("Center")
		end
	end);
	MLC_CharacterBox:SetScript("OnMouseUp",function(self)
		self:StopMovingOrSizing()
	end);
	
	if MLC_DB["HideGreen"] then
		MLC_CharacterBox:Hide();
	end
	
-- "Alt + Click to hide"
	MLC_CharacterBoxText =  MLC_CharacterBox:CreateFontString("MLC_CharacterBoxText" ,"ARTWORK","GameFontNormal");
	MLC_CharacterBoxText:SetPoint("TopLeft", MLC_CharacterBox, "TOPLEFT", 35, -5)
	MLC_CharacterBoxText:SetJustifyH("LEFT")	--Left justified text	
	MLC_CharacterBoxText:SetText("Alt + Click to hide")
	
--	--	--	--	--	--	--	--	--
--		Topleft red box			--
--								--
--								--
--	--	--	--	--	--	--	--	--
	MLC_CharacterBox_MoveBox = CreateFrame("Frame", "MLC_CharacterBox_MoveBox", MLC_CharacterBox);
	MLC_CharacterBox_MoveBox:SetPoint("TopLeft")
	MLC_CharacterBox_MoveBox:SetWidth(30); 
	MLC_CharacterBox_MoveBox:SetHeight(30);
	MLC_CharacterBox_MoveBox:SetBackdrop({bgFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Background"})
	MLC_CharacterBox_MoveBox:SetBackdropColor(1, 0, 0, 1);
	MLC_CharacterBox_MoveBox:EnableMouse(true);
	MLC_CharacterBox_MoveBox:SetScript("OnMouseDown",function(self)
		MLC_CharacterBox:StartSizing("TopLeft")
	end);
	MLC_CharacterBox_MoveBox:SetScript("OnMouseUp",function(self)
		MLC_CharacterBox:StopMovingOrSizing()
	end);
	
--	--	--	--	--	--	--	--	--
--		Bottomright red box		--
--								--
--								--
--	--	--	--	--	--	--	--	--
	MLC_CharacterBox_MoveBox = CreateFrame("Frame", "MLC_CharacterBox_MoveBox", MLC_CharacterBox);
	MLC_CharacterBox_MoveBox:SetPoint("BottomRight")
	MLC_CharacterBox_MoveBox:SetWidth(30); 
	MLC_CharacterBox_MoveBox:SetHeight(30);
	MLC_CharacterBox_MoveBox:SetBackdrop({bgFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Background"})
	MLC_CharacterBox_MoveBox:SetBackdropColor(1, 0, 0, 1);
	MLC_CharacterBox_MoveBox:EnableMouse(true);
	MLC_CharacterBox_MoveBox:SetScript("OnMouseDown",function(self)
		MLC_CharacterBox:StartSizing("BottomRight")
	end);
	MLC_CharacterBox_MoveBox:SetScript("OnMouseUp",function(self)
		MLC_CharacterBox:StopMovingOrSizing()
	end);
	
	
--	--	--	--	--	--	--	--	--
--		Animation onupdate		--
--								--
--								--
--	--	--	--	--	--	--	--	--
	MLC_AnimationUpdate = CreateFrame("Frame", "MLC_AnimationUpdate", UIParent);
	MLC_AnimationUpdate:SetScript("OnUpdate", function()
		local Time = GetTime();
	
		if (Time - MLC_UDB["LastUpdateTime"]) > MLC_UDB["IdleTime"] then	-- check if it passed the update time
			MLC_UDB["LastUpdateTime"] = Time;
			
		-- check if we should reset the number (if its past the max index id)
			if MLC_UDB["XIndex"] >	 MLC_UDB["MaxIndex"] then	
				if MLC_UDB["WaitOffset"] == 0 then
					MLC_UDB["WaitOffset"] = Time + MLC_UDB["WaitTime"];
				end
				
				if (Time > MLC_UDB["WaitOffset"]) or (MLC_UDB["WaitTime"] == 0) then 
					MLC_UDB["XIndex"] = MLC_UDB["MinIndex"]; 
				end
			end
			
		-- if its under the max number then update the image
			if MLC_UDB["XIndex"] <= MLC_UDB["MaxIndex"] then	
				MLC_UDB["WaitOffset"] = 0;	--clear the wait offset
				
				local Size = MLC_UDB["Size"];
				local Pony = MLC_DB["Pony"];
				
				local Width  = MLC_AnimationData[Pony]["Width"];
				local Height = MLC_AnimationData[Pony]["Height"];	

				local ImageHeight = MLC_AnimationData[Pony]["ImageHeight"];

				
				x1 = (MLC_UDB["XIndex"] - 1) / (Width / Size);
				x2 = (MLC_UDB["XIndex"])     / (Width / Size);
				
				y1 = (MLC_UDB["YIndex"] - 1)/ (Height / ImageHeight);
				y2 = (MLC_UDB["YIndex"])    / (Height / ImageHeight);
			
				if MLC_UDB["Direction"] == "Right" then
					MLC_AnimatedPony:SetTexCoord(x1, x2, y1, y2);
				else
					MLC_AnimatedPony:SetTexCoord(x2, x1, y1, y2);
				end
				
				MLC_SetBubblePoint(MLC_UDB["Direction"]);
				
				MLC_UDB["XIndex"] = MLC_UDB["XIndex"] + 1
			end
		end
	end)
	
	
--	--	--	--	--	--	--	--	--
--		The pony graphic		--
--								--
--								--
--	--	--	--	--	--	--	--	--
	MLC_AnimatedPonyBox = CreateFrame("Frame", MLC_AnimatedPonyBox, UIParent)
	MLC_AnimatedPonyBox:SetPoint("Bottom", MLC_CharacterBox, "Bottom", 0,0);
	local pony = MLC_DB["Pony"];					
	MLC_AnimatedPonyBox:SetWidth(MLC_AnimationData[pony]["SizeModifier"]); 
	MLC_AnimatedPonyBox:SetHeight(MLC_AnimationData[pony]["SizeModifier"]);
	MLC_AnimatedPonyBox:SetFrameStrata(MLC_DB["Strata"])
	
	MLC_AnimatedPony = MLC_AnimatedPonyBox:CreateTexture("MLC_AnimatedPony")
	MLC_AnimatedPony:SetAllPoints();
	MLC_AnimatedPony:SetTexture("Interface\\Addons\\MyLittleCompanion\\Images\\" .. MLC_DB["Pony"])
	MLC_AnimatedPony:SetTexCoord(0, 0, 0, 0);

--	--	--	--	--	--	--	--	--
--		Destination handler		--
--								--
--		handles moving to 		--
--			the position		--
--	--	--	--	--	--	--	--	--
	MLC_DestinationHandler = CreateFrame("Frame")
	MLC_DestinationHandler:SetScript("OnUpdate", function()
		if MLC_UDB["ArrivalTime"] > GetTime() then
			
			local DistanceTravelled = (MLC_UDB["TravelTime"] - MLC_UDB["ArrivalTime"] + GetTime())/MLC_UDB["TravelTime"];
			local x = MLC_UDB["StartX"] + (MLC_UDB["DestinationX"]-MLC_UDB["StartX"])*(DistanceTravelled)
			local y = MLC_UDB["StartY"] + (MLC_UDB["DestinationY"]-MLC_UDB["StartY"])*(DistanceTravelled)
			
			MLC_AnimatedPonyBox:SetPoint("Bottom", MLC_CharacterBox, "Bottom", x, y);
		else
			FIM_AnimationTimeoutHandler();
		end
	end)
	MLC_DestinationHandler:Hide();
end