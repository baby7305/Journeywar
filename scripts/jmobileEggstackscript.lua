
include "lib_UnitScript.lua" 
 include "lib_Animation.lua"

Kapsel=piece"Kapsel"
feetFetish={}
for i=1, 6, 1 do
feetFetish[i]={}
feetFetish[i][1]={}-- the Upper joint
feetFetish[i][2]={} -- upper leg
feetFetish[i][3]={} --lower joint
feetFetish[i][4]={} --lower leg
feetFetish[i][5]={} --dirt emitter

temp1= "UpJoin0"..i
temp2= "UpLeg0"..i
temp3= "LoJoin0"..i
temp4= "LoLeg0"..i
temp5= "DirEmit"..i

feetFetish[i][1]=piece(temp1)-- the Upper joint
feetFetish[i][2]=piece(temp2) -- upper leg
feetFetish[i][3]=piece(temp3) --lower joint
feetFetish[i][4]=piece(temp4) --lower leg
feetFetish[i][5]=piece(temp5) --dir emitter
end

SIG_FOLD=2
SIG_MOVE=4
SIG_RESET=8
SIG_UNFOLD=16
SIG_BREATH=32
SIG_UPGRADE=64



eggnok={}
for i=1,36,1 do
	eggnok[i]={}
	temp="eggnog"..i
	eggnok[i]=piece (temp)
end
eggrotate=piece"eggrotate"
local boolAllreadyDead=false
local boolAllreadyStarted=false
local boolMurdered=true
local mexID = -666
SIG_RESET=1
boolUnDeployed=false
local boolSafetyFirst=false
boolMightBeAReset=false
local boolreVert=false
--Created
center=piece"center"

deCidere=1
Eggtable={}
localPiece=piece
Eggtable=makeTableOfPieceNames("egg",10,1,localPiece)

fruitwat={}
for i=1, 2, 1 do
	fruitwat[i]={}
	feetFeti="water"..i
	fruitwat[i]=piece (feetFeti)
	Spin(fruitwat[i],y_axis,math.rad(42),0.1)
end



function script.Killed(recentDamage, maxHealth)
	return 1
	
	
end

function water()
	xR=math.random(-42,42)
	Spin(eggrotate,y_axis,math.rad(xR),0.3)
	
	interVall=0	
	while true do
		dirSpin=math.random(-42,42)
		for i=1, 2, 1 do
			Spin(fruitwat[i],y_axis,math.rad(dirSpin),0.1)
		end
		if math.abs(interVall) <0.25 then interVall = math.random(5,9) end
		Move(eggrotate,y_axis,interVall,19.15)
		Move(fruitwat[2],y_axis,0,0.25)
		WaitForMove(fruitwat[2],y_axis)
		Move(fruitwat[1],y_axis,-3,1.25)
		WaitForMove(fruitwat[1],y_axis)
		interVall=interVall*-0.5
		Move(eggrotate,y_axis,interVall,19.15)	
		Move(fruitwat[1],y_axis,0,1.25)
		WaitForMove(fruitwat[1],y_axis)
		Move(fruitwat[2],y_axis,-3,1.25)
		WaitForMove(fruitwat[2],y_axis)
		if math.random(0,1)==1 then Move(eggrotate,x_axis,math.random(-2.5,2.5),0.7) end
		if math.random(0,1)==1 then Move(eggrotate,z_axis,math.random(-2.5,2.5),0.7) end
	end
end


function UpdateUnitPosition(ParentID, UnitID, attach)
   local px, py, pz, _, _, _ = Spring.GetUnitPiecePosDir(ParentID, attach)
   local rx, ry, rz = Spring.GetUnitPieceRotation(ParentID, attach)
    Spring.MoveCtrl.SetPhysics(UnitID, px, py, pz+4, 0, 0, 0, rx, ry, rz)
end
      
function GetUnitPieceRotation(unitID, piece)
   local rx, ry, rz = Spring.UnitScript.CallAsUnit(unitID, spGetPieceRotation, piece)
   local Heading = Spring.GetUnitHeading(unitID) --COB format
   local dy = rad(Heading / 182)
   return rx, dy + ry, rz
end



factoryID=nil
----aimining & fire weapon
function newFactory ()
  if GG.JFactorys == nil then GG.JFactorys={} end
   local x,y,z = Spring.GetUnitPosition(unitID)
   teamID = Spring.GetUnitTeam (unitID)
   factoryID = Spring.CreateUnit ("jmeggstack", x,y+40,z+20, 0, teamID) 
   GG.JFactorys[factoryID]={}
   GG.JFactorys[factoryID][1]= unitID 
   GG.JFactorys[factoryID][2]= false
   Spring.SetUnitNoSelect(unitID,true)
   Spring.MoveCtrl.Enable(factoryID,true)  
   Spring.SetUnitNeutral(factoryID,true)
   Spring.SetUnitBlocking (factoryID,false,false)
   
end


boolBuilding=false
function workInProgress()
	StartThread(water)
	
	buildID=nil
	buildIDofOld=nil
	counter=0
	while(true)do
		buildID=Spring.GetUnitIsBuilding(unitID)
		if buildID and buildID~= buildIDofOld then
			
			counter=counter+1
			if counter >35 then 	Spring.DestroyUnit(unitID,true,false) end
			Hide(eggnok[counter])
			boolBuilding=true
			Spring.SetUnitNoDraw(buildID,true)
			buildProgress=0
			
			while  buildProgress and buildProgress < 1 do
				health,maxHealth,paralyzeDamage,captureProgress,buildProgress=Spring.GetUnitHealth(buildID)
				if buildProgress then
					--show the egg
					buildProgress=math.min(math.max(1,math.floor(buildProgress*10)),#Eggtable)
					hideT(Eggtable)
					Show(Eggtable[buildProgress])			
				else
					buildProgress=nil
				end
				Sleep(150)
			end
			
			if buildID ~=nil then
				buildIDofOld=buildID	
				buildID=nil
			end	
			
			if buildID == nil and buildIDofOld ~= nil and Spring.ValidUnitID(buildIDofOld)==true then				
				Spring.SetUnitNoDraw(buildIDofOld,false)
				hideT(Eggtable)
				Move(eggrotate,y_axis,0,0)
				buildIDofOld=nil
				
			end		
		end
			Sleep(120)
	end
	boolBuilding=false
end


function updateBoolisBuilding()
while  GG.JFactorys== nil or GG.JFactorys[factoryID]== nil do
Sleep(150)
end

	while true do
		if GG.JFactorys[factoryID][2]==true then
		--Spring.Echo("JW:Firstborn:Building")
		boolBuilding=true
		Turn(Kapsel,x_axis,math.rad(0),0.5)
		else 
		--Spring.Echo("JW:Firstborn:Not building")
		boolBuilding=false
		Turn(Kapsel,x_axis,math.rad(120),0.5)
		end


	Sleep(500)
	end

end

function moveFactory ()
local spGetUnitPosition=Spring.GetUnitPosition
local spMovCtrlSetPos=Spring.MoveCtrl.SetPosition
local spValidUnitID=Spring.ValidUnitID
local LGetUnitPieceRotation=GetUnitPieceRotation
local LUpdateUnitPosition=UpdateUnitPosition

   while (true) do
      if (not spValidUnitID (factoryID)) then newFactory () end
      local x,y,z = spGetUnitPosition (unitID)	 
	 spMovCtrlSetPos(factoryID,x,y+50,z+2)
      Sleep (50)
   end
end


function bobbingEggs()

	while(true) do

		for i=1,table.getn(eggnok),1 do
		if math.random(0,2)==1 then
		turnPieceRandDir(eggnok[i],5,42,-42,42,-42,42,-42)
		end
		end
		naptime=math.floor(math.random(1400,2800))
		Sleep(naptime)		
	end
	
end



function liftFeet(nr)
signed=1
	if nr== 3 or nr ==6 or nr==1 then
	signed=-1
	end
Turn(feetFetish[nr][1],z_axis,math.rad(19*signed),1.7)
Turn(feetFetish[nr][3],z_axis,math.rad(9*signed),1.7)

end

function TurnF(nr,deg,boolWait)
Turn(feetFetish[nr][1],y_axis,math.rad(deg),2)
if boolWait== nil or boolWait==true then
WaitForTurn(feetFetish[nr][1],y_axis)
end

end

function lowerFeet(nr,boolWait)
Turn(feetFetish[nr][1],z_axis,math.rad(0),1.7)
Turn(feetFetish[nr][3],z_axis,math.rad(0),1.7)
	if boolWait== nil or boolWait==true then
	WaitForTurn(feetFetish[nr][1],x_axis)
	WaitForTurn(feetFetish[nr][3],x_axis)
	end

EmitSfx(feetFetish[nr][5],1024)

end

function moveIt()
SetSignalMask(SIG_MOVE)
comonSpeed=0.2
	while(true) do

	lowerFeet(1,false)

	liftFeet(3)
	liftFeet(5)
	lowerFeet(2,true)
	Turn(center,y_axis,math.rad(2),0.1)
	Turn(roof,x_axis,math.rad(0.5),0.025)
	comonValue=comonValue-5

	TurnF(3,40,false)
	TurnF(5,-30,true)
	lowerFeet(3,false)
	lowerFeet(5,false)
	TurnF(1,0,false)
	TurnF(2,0,false)
	liftFeet(4)
	liftFeet(6)
	WaitForTurn(center,y_axis)
	Turn(center,y_axis,math.rad(-2),0.1)
	Turn(roof,x_axis,math.rad(-0.5),0.025)
	comonValue=comonValue+5
	comonSpeed=0.2
	TurnF(4,-56,false)
	TurnF(6,57,true)
	
	lowerFeet(4,false)
	lowerFeet(6,false)
	TurnF(3,0,false)
	TurnF(5,0,false)
	liftFeet(1)
	liftFeet(2)
	TurnF(1,56,false)
	TurnF(2,-50,true)
	TurnF(4,0,false)
	TurnF(6,0,false)
	Sleep(50)
	WaitForTurn(center,y_axis)
	Sleep(10)
	end
end
justOnce=true
function script.StartMoving()
Signal(SIG_MOVE)
StartThread(moveIt)								
	if justOnce==true then
	StartThread(moveFactory)
	justOnce=false
	end																		
end

function legs_down()
	for i=1,table.getn(feetFetish),1 do
		for j=1,4, 1 do
		Turn(feetFetish[i][j],x_axis,math.rad(0),3.141)
		Turn(feetFetish[i][j],y_axis,math.rad(0),3.141)
		Turn(feetFetish[i][j],z_axis,math.rad(0),3.141)
		end
		Turn(roof,x_axis,math.rad(0),0.025)
	end

end



function script.StopMoving()
Turn(center,y_axis,math.rad(0),0.2)
Signal(SIG_MOVE)

legs_down()
end




function script.Activate()

return 1
end

function script.Deactivate()

return 0
end

function script.Create()
		Spring.SetUnitNoSelect(unitID,true)
	x,y,z=Spring.GetUnitPosition(unitID)
	Spring.SetUnitMoveGoal(unitID,x-20,y,z)
	
	hideT(Eggtable)	
	Move(center,y_axis,-30,8.7)
	StartThread(updateBoolisBuilding)
	
	StartThread(workInProgress)
	StartThread(bobbingEggs)

end