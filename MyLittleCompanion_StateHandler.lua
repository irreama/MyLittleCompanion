--	--	--	--	--	--	--	--	--
--		Action handler			--
--								--
--	handles the actions			--
--	--	--	--	--	--	--	--	--
function MLC_Action(Action, x, y, Time)	--time is in seconds
	if MLC_DB["Quick"] then Time = 3 end
	local point, relativeTo, relativePoint, xOfs, yOfs = MLC_AnimatedPonyBox:GetPoint()
	local CurrentPony = MLC_DB["Pony"];
	
	MLC_UDB["LastAction"] = Action;
	
	if Time == nil then
		Time = 5;
	end
	
	if MLC_DB["Debug"] then
		Action = "Test"; -- debugging
		x = nil;
		y = nil;
	end
	
	
	if x== nil or y == nil then
		x = xOfs;
		y = yOfs;
	end
	
	local xtravel = x-xOfs;
	local ytravel = y-yOfs;
	
	local maxtravel = max( abs(xtravel),  abs(ytravel));	-- find the max amount we wil travel
	local distance = sqrt((xtravel * xtravel) + (ytravel * ytravel))
	
	if  maxtravel < 50 and Action == "Walk" then	--if we are not travelling far (only if not idle)
		Time = Time * maxtravel / 50;
	end
	
	local Speed = distance/Time;	

	
	if xtravel > 0 then
		MLC_UDB["Direction"] = "Right";
	elseif xtravel < 0 then
		MLC_UDB["Direction"] = "Left";
	end
	
	if MLC_DB["Pony"] == "Crabby" then	--crabby always faces this way
		MLC_UDB["Direction"] = "Right";
		Time = 999999; -- crabby never stops
	end
	
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
	if CurrentPony == "Terran" then	-- terrans always run
		if Action == "Walk" then	
			if Speed < 200 then
				--print("---")
				--print(Time)
				--print(Speed)
				
				local TempTime = distance / 200;
				
				--print(TempTime)
				
				--print(distance / TempTime)
				
				Time = TempTime
				
				--print("xxx")
			end
		end
	end
	
	if CurrentPony ~= "Fluttershy" and CurrentPony ~= "Twilight" then	-- switch combat to idle for non-combat ponies
		if Action == "Fight" then
			Action = "Idle";
		end
	end

	if CurrentPony == "RainbowDash" then	-- fly fast handler for rainbow dash			
		if Action == "Walk" then
			if random(5) == 1 then
				Time = Time/2;	-- 20% chance to move at 2x speed
			end
			
			if	abs((xtravel)/Time) > 200 or abs((xtravel)/Time) > 200 then
				Action = "Flyfast"
			end
		end
	end
	
	if CurrentPony == "AppleJack" then	-- run fast handler for applejack
		if Action == "Walk" then
			if random(5) == 1 then
				Time = Time/2;	-- 20% chance to move at 2x speed
			end
			
			if	abs((xtravel)/Time) > 200 or abs((xtravel)/Time) > 200 then
				Action = "Gallop"
			end
		end
	end
	
	if CurrentPony == "Fluttershy" or CurrentPony == "Twilight" then	-- combat handler for ponies with combat animations
		if UnitAffectingCombat("player") then
			if random(5) == 1 then
				Action = "Fight";
				x = xOfs;
				y = yOfs;
				Time = 5;
			end
		end
	end
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--	--	--
	
	MaxID = #MLC_AnimationData[CurrentPony][Action];	-- the amount of ID's we have (different walks/stands/etc...)
	ActionID = random(MaxID);
	
	local start,amount;
	
	--	1		2		3					4					5		6			7
	-- 	row, 	start, 	animation_amount, 	total_amount,  		size, 	delay_(ms),	wait_(ms)
	MLC_UDB["YIndex"]		= MLC_AnimationData[CurrentPony][Action][ActionID][1];
	start 		 			= MLC_AnimationData[CurrentPony][Action][ActionID][2];	--the data about the 
	amount  	 			= MLC_AnimationData[CurrentPony][Action][ActionID][3];	--animation
	MLC_UDB["Size"] 		= MLC_AnimationData[CurrentPony][Action][ActionID][4];	-- the length of the sprite
	MLC_UDB["IdleTime"] 	= MLC_AnimationData[CurrentPony][Action][ActionID][5] / 1000;
	MLC_UDB["WaitTime"] 	= MLC_AnimationData[CurrentPony][Action][ActionID][6] / 1000;
	

	if MLC_DB["Debug"] then
		MLC_UDB["Size"] = MLC_Size or MLC_UDB["Size"];
		Time = 10;
	end
	
	MLC_UDB["MinIndex"] = start;
	MLC_UDB["MaxIndex"] = start+amount-1;
	
	MLC_UDB["XIndex"] = MLC_UDB["MinIndex"];
	MLC_UDB["LastUpdateTime"] = GetTime()-10;
	
	MLC_UDB["StartX"] = xOfs;
	MLC_UDB["StartY"] = yOfs;
	MLC_UDB["DestinationX"] = x;
	MLC_UDB["DestinationY"] = y;
	MLC_UDB["TravelTime"] = Time;
	MLC_UDB["ArrivalTime"] = GetTime() + Time;
	MLC_DestinationHandler:Show();
end



--	--	--	--	--	--	--	--	--
--		Autoupdate for the 		--
--	pick a random spot function	--
--								--
--	--	--	--	--	--	--	--	--
--MLC_OnDeathFrame = CreateFrame("FRAME")
--MLC_OnDeathFrame:RegisterEvent("PLAYER_DEAD");
--MLC_OnDeathFrame:RegisterEvent("PLAYER_REGEN_DISABLED");
--MLC_OnDeathFrame:SetScript("OnEvent", function() 
--	MLC_Action("Dazed", 0, 0, 30)
--end)

MLC_OnCombatFrame = CreateFrame("FRAME")
MLC_OnCombatFrame:RegisterEvent("PLAYER_REGEN_DISABLED");
MLC_OnCombatFrame:SetScript("OnEvent", function() 
	MLC_Action("Fight", nil, nil, 2)
end)

function FIM_AnimationTimeoutHandler()
	if MLC_UDB then
		if MLC_UDB["LastAction"] == "Idle" then
			local x = MLC_CharacterBox:GetWidth() - 100;
			local y = MLC_CharacterBox:GetHeight() - 100;
			
			local gotox = random(x);
			local gotoy = random(y);
			
			local Time = random(4)+1;
			
			if MLC_DB["Pony"] ~= "Crabby" then	--crabby never moves
				MLC_Action("Walk", (gotox-(x/2)), (gotoy)	, Time)	-- Action, x, y, Time (seconds)
			else
				MLC_Action("Walk", 0, 0, Time)	-- Action, x, y, Time (seconds)
			end
		elseif MLC_UDB["LastAction"] == "Walk" then
			local Time = random(15)+5;
			
			MLC_Action("Idle", nil, nil, Time)	-- Action, x, y, Time (seconds)
		elseif MLC_UDB["LastAction"] == "Fight" then
			local Time = random(7)+3;
			
			MLC_Action("Idle", nil, nil, Time)	-- Action, x, y, Time (seconds)
		else
			local Time = random(3)+2;
			
			MLC_Action("Idle", nil, nil, Time)	-- Action, x, y, Time (seconds)
		end
	end
end