
 center=piece"center"


 include "suddenDeath.lua"
 include "lib_OS.lua"
 include "lib_UnitScript.lua"
 include "lib_Build.lua" 

 KpiecesTable=makeKeyPiecesTable(unitID,piece)
 piecesTable={}
 piecesTable[#piecesTable+1]= piece("center")
 piecesTable[#piecesTable+1]= piece("Body")
 -- piecesTable[#piecesTable+1]= piece("GunRoot")
 -- piecesTable[#piecesTable+1]= piece("GunRail")
 -- piecesTable[#piecesTable+1]= piece("GunSled")
 -- piecesTable[#piecesTable+1]= piece("TwinCannon")
 piecesTable[#piecesTable+1]= piece("Leg11")
 piecesTable[#piecesTable+1]= piece("Leg12")
 piecesTable[#piecesTable+1]= piece("Leg13")
 piecesTable[#piecesTable+1]= piece("Leg21")
 piecesTable[#piecesTable+1]= piece("Leg22")
 piecesTable[#piecesTable+1]= piece("Leg23")
 piecesTable[#piecesTable+1]= piece("Leg41")
 piecesTable[#piecesTable+1]= piece("Leg42")
 piecesTable[#piecesTable+1]= piece("Leg31")
 piecesTable[#piecesTable+1]= piece("Leg32")
  piecesTable[#piecesTable+1]= piece("Leg51")
 piecesTable[#piecesTable+1]= piece("Leg52")
 piecesTable[#piecesTable+1]= piece("Leg53")
  piecesTable[#piecesTable+1]= piece("Leg61")
 piecesTable[#piecesTable+1]= piece("Leg62")
 piecesTable[#piecesTable+1]= piece("Leg63")
 piecesTable[#piecesTable+1]= piece("Head")
 piecesTable[#piecesTable+1]= piece("LightOff")
 piecesTable[#piecesTable+1]= piece("LightOn")

 
 Plate={}
  Plate[#Plate+1]= piece("Plate1")
 Plate[#Plate+1]= piece("Plate2")
 Plate[#Plate+1]= piece("Plate3")
 Plate[#Plate+1]= piece("Plate4")
 Plate[#Plate+1]= piece("Plate5")
 Plate[#Plate+1]= piece("Plate6")
 Plate[#Plate+1]= piece("Plate7")
 Plate[#Plate+1]= piece("Plate8")
 Plate[#Plate+1]= piece("Plate9")
 Plate[#Plate+1]= piece("Plate10")
 Plate[#Plate+1]= piece("Plate11")
 Plate[#Plate+1]= piece("Plate12")
 Plate[#Plate+1]= piece("Plate13")
 Plate[#Plate+1]= piece("Plate14")

 
center= piece("center")
Body= piece("Body")
GunRoot= piece("GunRoot")
GunRail= piece("GunRail")
GunSled=piece("GunSled")
TwinCannon= piece("TwinCannon")
Leg11 = piece("Leg11")
Leg12 = piece("Leg12")
Leg13 = piece("Leg13")
Leg21 = piece("Leg21")

 Leg22=piece("Leg22")
 Leg23=piece("Leg23")
 Leg41=piece("Leg41")
 Leg42=piece("Leg42")
 Leg31=piece("Leg31")
 Leg32=piece("Leg32")
 Head=piece("Head")
 LightOff =piece("LightOff")
 LightOn=piece("LightOn")
 Leg51=piece("Leg51")
 Leg52=piece("Leg52")
 Leg53=piece("Leg53")
 Plate1=piece("Plate1")
 Plate2=piece("Plate2")
 Plate3=piece("Plate3")
 Plate4=piece("Plate4")
 Plate5=piece("Plate5")
 Plate6=piece("Plate6")
 Plate7=piece("Plate7")
 Leg61=piece("Leg61")
 Leg62=piece("Leg62")
 Leg63=piece("Leg63")
 Plate8=piece("Plate8")
 Plate9=piece("Plate9")
 Plate10=piece("Plate10")
 Plate11=piece("Plate11")
 Plate12=piece("Plate12")
 Plate13=piece("Plate13")
 Plate14=piece("Plate14")
 RELOAD_TIME=5500

 function script.HitByWeapon ( x, z, weaponDefID, damage ) 
 if boolDeployed==true then return math.floor((damage/2))end

 return damage
end

gunTable={KpiecesTable["GunRoot"],KpiecesTable["GunRail"],KpiecesTable["GunSled"],KpiecesTable["TwinCannon"]}


center=piece"center"
boolMoving=false
boolDeployWanted=false

function deployedDetector()
	while true do
	--if deploy wanted and stop deploy
		if boolDeployWanted ==true and boolMoving==false and  boolDeployed ~=true then
			DeployAnimation(12000)
		end

		if ( boolDeployWanted == false or boolMoving==true) and boolDeployed ==true then
			UnDeployAnimation(6000)
		-- if button pressed or moved  and allready deployed undeploy
		end
	
		Sleep(500)
	end
end


function MoveAnimation()
	while true do
		if 	( boolMoving ==true  ) and boolDeployed==false then
			while (boolMoving ==true ) and boolDeployed==false  do
				walkAnim()
				Sleep(300)
			end
		
		elseif (boolDeployWanted==true and boolMoving==false) or  boolDeployed == true then
		
		while (boolDeployWanted==true and boolMoving==false) or  boolDeployed == true  do 
		Sleep(100)
		end
		
			
		elseif 	( boolTurning ==true  ) and boolDeployed==false then
			while (boolTurning ==true ) and boolDeployed==false and boolMoving==false  do
				turnAnim()
				Sleep(300)
			end
	
		elseif boolMoving ==false and boolDeployed== false then
			if math.random(0,4) < 3  then
				foldWeapon(0)
				idleAnim()
			else
				reseT(piecesTable,1.25,true)
			end 
		end
		Sleep(100)
	end

end


function unfoldPlate()
even=0
uneven=0
	for i=1,7,1 do
		if i%2 ==0 then
		even= even+12
		Turn(Plate[i],z_axis,math.rad(even),0.25)
		else
		uneven= uneven-12
		Turn(Plate[i],z_axis,math.rad(uneven),0.25)
		end
	end
even=0
uneven=0	
	
		for i=8,#Plate,1 do
		if i%2 ==0 then
		even= even+12
		Turn(Plate[i],z_axis,math.rad(even),0.25)
		
		else
		uneven= uneven-12
		Turn(Plate[i],z_axis,math.rad(uneven),0.25)
		end
	end
WaitForTurn(Plate14,z_axis)
end

function UnDeployAnimation(time)
	for i=1,#Plate do
	Turn(Plate[i],z_axis,math.rad(0),0.25)
	Turn(Plate[i],x_axis,math.rad(0),0.25)

	end
WaitForTurn(Plate14,z_axis)
WaitForTurn(Plate14,x_axis)
WaitForTurn(Plate7,z_axis)
WaitForTurn(Plate7,x_axis)

syncTurnInTime(Leg61,-65,0, 0,3000)
syncTurnInTime(Leg51,-65,0,0,3000)
WaitForTurns(Leg61,Leg51)

syncTurnInTime(Leg61,0,0,0,time)
syncTurnInTime(Leg51,0,0,0,time)
WaitForTurns(Leg61,Leg51)

syncTurnInTime(Leg62,0,0,0,time)
syncTurnInTime(Leg52,0,0,0,time)
syncTurnInTime(Leg63, 0,0, 0	,time)
syncTurnInTime(Leg53, 0,0, 0	,time)
WaitForTurns(Leg62,Leg52,Leg63,Leg53)


 
foldWeapon(1.5) 
 SetUnitValue(COB.MAX_SPEED,maxspeed)
 boolDeployed=false
end


function DeployAnimation (time)
equiTurn(Leg11,Leg12,x_axis,-55,1)
equiTurn(Leg21,Leg22,x_axis,-53,1)

equiTurn(Leg41,Leg42,x_axis, 15,1)
equiTurn(Leg31,Leg32,x_axis, 15,1)

syncTurnInTime(Leg61,-65,-89, 0,time)
syncTurnInTime(Leg51,-65,89,0,time)
WaitForTurns(Leg61,Leg51)
syncTurnInTime(Leg62,89,0,0,time)
syncTurnInTime(Leg52,89,0,0,time)
syncTurnInTime(Leg63, 65,0, -89	,time)
syncTurnInTime(Leg53, 65,0, 89	,time)
WaitForTurns(Leg62,Leg52,Leg63,Leg53)
unfoldPlate()
unfoldWeapon(0.15)
Sleep(3000)
SetUnitValue(COB.MAX_SPEED,1)
boolDeployed=true			
end

function 	foldWeapon(speed) 		
Signal(SIG_AIM)
Turn(GunRoot,x_axis,math.rad(-12),speed)
WaitForTurn(GunRoot,y_axis)
Signal(SIG_AIM)
Turn(GunRail,y_axis,math.rad(0),speed)
WaitForTurn(GunRail,y_axis) 
Signal(SIG_AIM)
Turn(TwinCannon,x_axis,math.rad(0),speed)
WaitForTurn(TwinCannon,x_axis) 
Move(GunSled,z_axis,0,speed*5)
WaitForMove(GunSled,z_axis)
Turn(TwinCannon,x_axis,math.rad(-44),speed)
WaitForTurn(TwinCannon,x_axis) 

end

function 	unfoldWeapon()
	Turn(TwinCannon,x_axis,math.rad(0),1)
	WaitForTurn(TwinCannon,x_axis) 
	Move(GunSled,z_axis, 0,12)
	Turn(GunRoot,y_axis,math.rad(0),1)
	Turn(GunRoot,x_axis,math.rad(0),1)
	WaitForTurn(GunRoot,y_axis)
	WaitForTurn(GunRoot,x_axis)
	Turn(GunRail,y_axis,math.rad(0),1)
	WaitForTurn(GunRail,y_axis) 
	

 end
 function fireAnimation() 
	 Turn(TwinCannon,x_axis,math.rad(42),1)
	 for i=1,20,4 do
	  Move(GunSled,z_axis,i,1600/i)
	  WaitForMove(GunSled,z_axis)
	 end
	 Turn(TwinCannon,x_axis,math.rad(82),1) 
	for i=21,60,4 do
	  Move(GunSled,z_axis,i,1600/i)
	  WaitForMove(GunSled,z_axis)
	 end

	 
 end
 
 function 	reloadAnim() 
	resetPiece(TwinCannon,12)
	Sleep(700)
	resetPiece(GunSled,12)
 end 

function pushForth(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3,offset,time,signum)



pushTime=math.ceil(time*0.75)
time=time*0.25
speed=2

syncTurnInTime(fwLeg1,0+(-1*centerTurnX)+math.random(-offset,offset),0,0,time)
syncTurnInTime(fwLeg2,0+math.random(-offset,offset),0,0,time)

syncTurnInTime(opBLeg1,0+(-1*centerTurnX)+math.random(-offset,offset),0,0,time)
syncTurnInTime(opBLeg2,0+math.random(-offset,offset),0,0,time)
syncTurnInTime(opBLeg3,0+math.random(-offset,offset),0,0,time)
Turn(Head,x_axis,math.rad(-2),5)


--Shear
val=math.random(10,20)
			Turn(fShear1,x_axis,math.rad((-1*centerTurnX)- 0),speed)
	
			equiTurn(fShear1,fShear2,y_axis,val*signum ,speed)	
			Turn(fShear3,y_axis,math.rad(2*val*signum*-1) ,speed)
Sleep(time)
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)

--pushback
syncTurnInTime(fwLeg1,8+(-1*centerTurnX)+math.random(-offset,offset),65*signum,-5,pushTime)
syncTurnInTime(fwLeg2,-2+math.random(-offset,offset),0,0,pushTime)

syncTurnInTime(opBLeg1,-57+(-1*centerTurnX)+math.random(-offset,offset),0,0,pushTime)
syncTurnInTime(opBLeg2,77+math.random(-offset,offset),0,0,pushTime)
syncTurnInTime(opBLeg3,-19+math.random(-offset,offset),0,0,pushTime)
--Shear
val=math.random(30,60)
			Turn(fShear1,x_axis,math.rad((-1*centerTurnX)- 10),speed)
			equiTurn(fShear1,fShear2,y_axis,val*signum ,speed)
			Turn(fShear3,y_axis,math.rad(val*signum*-1) ,speed)
Sleep(pushTime)
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)
boolPushDone=true
end

function MoveLegToFront(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3, offset,time,signum) 

quadTime=math.ceil(time*0.35)
halfTime=math.ceil(time*0.65)
--MidPos
syncTurnInTime(fwLeg1,-54+(-1*centerTurnX),0,0,quadTime)
syncTurnInTime(fwLeg2,41,0,0,quadTime)

syncTurnInTime(opBLeg1,31+(-1*centerTurnX)+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg2,-12+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg3,-42+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(Head,1,0,0,quadTime)
--Shear
val=math.random(20,70)
speed= (val/halfTime)*1000
			Turn(fShear1,x_axis,math.rad((-1*centerTurnX)- 25),speed)
			equiTurn(fShear1,fShear2,y_axis,val*signum ,speed)
			Turn(fShear3,y_axis,math.rad(val*signum*-1) ,speed)
Sleep(quadTime)
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)
--SetDown
syncTurnInTime(fwLeg1,15+(-1*centerTurnX)+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(fwLeg2,-38+math.random(-offset,offset),0,0,halfTime)

syncTurnInTime(opBLeg1,29+(-1*centerTurnX)+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(opBLeg2,-33+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(opBLeg3,-25+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(Head,-1,0,0,halfTime)

--Shear
val=math.random(2,7)
speed= (val/halfTime)*1000
			Turn(fShear1,x_axis,math.rad((-1*centerTurnX)- 15),speed)
			equiTurn(fShear1,fShear2,y_axis,val*signum ,speed)
			Turn(fShear3,y_axis,math.rad(val*signum*-1) ,speed)
Sleep(halfTime)
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)

boolMoveDone=true

end



centerTurnX=0
boolMoveDone=false
boolPushDone=false
function 	walkAnim() 
boolMoveDone=false
boolPushDone=false	
time=8000

centerTurnX= math.random(1,2)
Turn(Body,x_axis,math.rad(centerTurnX),0.25)
Turn(Body,z_axis,math.rad(2),0.25)

StartThread(MoveLegToFront,Leg41,Leg42, Leg11,Leg12,Leg13, Leg61,Leg62,Leg63 ,5,time,-1)
StartThread(pushForth,     Leg31,Leg32, Leg21,Leg22,Leg23, Leg51,Leg52,Leg53,5,time,1)
WaitForTurn(Body,x_axis)
while boolMoveDone==false or boolPushDone==false do 
Sleep(100) end
boolMoveDone=false
boolPushDone=false	


	
Turn(Body,x_axis,math.rad(centerTurnX*-1),0.25)
Turn(Body,z_axis,math.rad(-2),0.25)
centerTurnX=centerTurnX*-1

StartThread(MoveLegToFront,Leg31,Leg32, Leg21,Leg22,Leg23  ,Leg51,Leg52,Leg53,5,time,1)
StartThread(pushForth,     Leg41,Leg42, Leg11,Leg12,Leg13, Leg61,Leg62,Leg63,5,time,-1)
WaitForTurn(Body,x_axis)
while boolMoveDone==false or boolPushDone==false do Sleep(100) end
boolMoveDone=false
boolPushDone=false	


end


cos=0
boolFlipFlop=0
function 	idleAnim () 
	cos=cos+0.01
	time=12000--+math.abs(math.cos(cos)*1000)
	mod=0.05115 
	movemod=2
	
	Move(center,y_axis,-2.25,movemod)
	
	val=math.random(12,22)*-1
	speed=(math.abs(val)/(time/1000))*mod

	equiTurn(Leg11,Leg12,x_axis,val ,speed)
        
	equiTurn(Leg21,Leg22,x_axis,val ,speed)
	    
	equiTurn(Leg31,Leg32,x_axis,val*-0.5 ,speed)  
	equiTurn(Leg41,Leg42,x_axis,val*-0.5 ,speed)
	
	
	val=math.random(20,33)*-1
		if math.random(0,1)==1 then 
			val=math.random(10,55)*-1 
			Turn(Leg53,y_axis,math.rad(2*val) ,speed)
			Turn(Leg63,y_axis,math.rad(-2*val) ,speed)
			end
	speed=(math.abs(val)/(time/1000))*mod
	equiTurn(Leg51,Leg52,y_axis,val*-1 ,speed)
	equiTurn(Leg61,Leg62,y_axis,val ,speed)	
	boolFlipFlop= (boolFlipFlop%6+1)	
	if boolFlipFlop > 3 then
		val=math.random(10,55)*-1
		equiTurn(Leg51,Leg52,x_axis,val ,speed)	
		equiTurn(Leg61,Leg62,x_axis,0 ,speed)	
	else
		val=math.random(10,55)*-1
		equiTurn(Leg61,Leg62,x_axis,val ,speed)	
		equiTurn(Leg51,Leg52,x_axis,0 ,speed)	
	
	end

	Turn(Leg53,y_axis,math.rad(2*val) ,speed)
	Turn(Leg63,y_axis,math.rad(-2*val) ,speed)

		if boolMoving==true or boolTurning ==true then return end
	WaitForMove(center,y_axis)
	WaitForTurns(Leg41,Leg42,Leg31,Leg32,Leg53,Leg63,Leg51,Leg52,Leg61,Leg62)
		if boolMoving==true or boolTurning ==true then return end

	
	
	equiTurn(Leg11,Leg12,x_axis,0 ,speed)
        
	equiTurn(Leg21,Leg22,x_axis,0 ,speed)
	    
	equiTurn(Leg31,Leg32,x_axis,0 ,speed)  
	equiTurn(Leg41,Leg42,x_axis,0 ,speed)


	Move(center,y_axis,0,movemod)
		if boolMoving==true or boolTurning ==true then return end
	WaitForMove(center,y_axis)
	WaitForTurns(Leg41,Leg42,Leg31,Leg32,Leg53,Leg63,Leg51,Leg52,Leg61,Leg62)
		if boolMoving==true or boolTurning ==true then return end
end 

function script.Create()
	reseT(piecesTable,0)
	reseT(Plate,0)
	 --generatepiecesTableAndArrayCode(unitID)
	StartThread(foldWeapon,0)

	StartThread(blinkLight)
--	StartThread(idleTest)
	

	StartThread(deployedDetector)
	StartThread(headingChangeDetector)
	StartThread(MoveAnimation)
end

function script.Killed(recentDamage,_)

	suddenDeathV(recentDamage)
	return 1
end


----aimining & fire weapon
function script.AimFromWeapon1() 
	return TwinCannon 
end

function turn_BackWards(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3, offset,time,signum)
mod=0.075115
quadTime=math.ceil(time*0.2)
halfTime=math.ceil(time*0.4)

--MidPos
syncTurnInTime(fwLeg1,-51+(-1*centerTurnX),0,0,quadTime)
syncTurnInTime(fwLeg2,12,0,0,quadTime)

syncTurnInTime(opBLeg1,-21 +(-1*centerTurnX)+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg2,22+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg3,-41+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(Head,1,0,0,quadTime)
--Shear
val=math.random(20,70)
speed= (val/(halfTime/1000))*mod
			Turn(fShear1,x_axis,math.rad((-1*centerTurnX)- 25),speed)
			equiTurn(fShear1,fShear2,y_axis,val*signum ,speed)
			Turn(fShear3,y_axis,math.rad(val*signum*-1) ,speed)
Sleep(quadTime)
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)

--SetDown
syncTurnInTime(fwLeg1,-5+(-1*centerTurnX)+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(fwLeg2,50+math.random(-offset,offset),0,0,halfTime)

syncTurnInTime(opBLeg1,-62+(-1*centerTurnX)+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(opBLeg2,22+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(opBLeg3,-21+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(Head,-1,0,0,halfTime)

--Shear
val=math.random(2,7)
speed= (val/(halfTime/1000))*mod
			Turn(fShear1,x_axis,math.rad((-1*centerTurnX)- 15),speed)
			equiTurn(fShear1,fShear2,y_axis,val*signum ,speed)
			Turn(fShear3,y_axis,math.rad(val*signum*-1) ,speed)

			
	Sleep(quadTime)		
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)

--Push Backwards
syncTurnInTime(fwLeg1,25+(-1*centerTurnX)+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(fwLeg2,-44+math.random(-offset,offset),0,0,halfTime)

syncTurnInTime(opBLeg1,-90+(-1*centerTurnX)+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(opBLeg2,-24+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(opBLeg3,85+math.random(-offset,offset),0,0,halfTime)
syncTurnInTime(Head,1,0,0,halfTime)
Sleep(halfTime)
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)

bool_TurnBackwardDone=true
end

function turn_ForWards(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3, offset,time,signum)
mod=0.15115
quadTime=math.ceil(time*0.25)
halfTime=math.ceil(time*0.55)
--MidPos
syncTurnInTime(fwLeg1,12+(-1*centerTurnX),0,0,quadTime)
syncTurnInTime(fwLeg2,-36,0,0,quadTime)

syncTurnInTime(opBLeg1,0 +(-1*centerTurnX)+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg2,-28+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg3,0+math.random(-offset,offset),0,0,quadTime)

--Shear
val=math.random(20,70)
speed= (val/(quadTime/1000))*mod
		
			equiTurn(fShear1,fShear2,y_axis,val*signum ,speed)
			equiTurn(fShear1,fShear2,x_axis,-25+(-1*centerTurnX) ,speed)
			Turn(fShear3,y_axis,math.rad(val*signum*-1) ,speed)
Sleep(quadTime)
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)

--SetDown
syncTurnInTime(fwLeg1,42 +(-1*centerTurnX)+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(fwLeg2,19 +math.random(-offset,offset),0,0,quadTime)

syncTurnInTime(opBLeg1,-38+(-1*centerTurnX)+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg2,15+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg3,-23+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(Head,-1,0,0,quadTime)


Sleep(quadTime)		
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)
--Push Backwards
syncTurnInTime(fwLeg1,60+(-1*centerTurnX)+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(fwLeg2,20+math.random(-offset,offset),0,0,quadTime)

syncTurnInTime(opBLeg1,-79+(-1*centerTurnX)+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg2,70+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg3,-23+math.random(-offset,offset),0,0,quadTime)
Sleep(quadTime)	
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)

--Shear
val=math.random(2,7)
speed= (val/(quadTime/1000))*mod
			
			equiTurn(fShear1,fShear2,y_axis,val*signum ,speed)
			equiTurn(fShear1,fShear2,x_axis,5 ,speed)
			Turn(fShear3,y_axis,math.rad(val*signum*-1) ,speed)

			
--Push Backwards
syncTurnInTime(fwLeg1,0+(-1*centerTurnX)+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(fwLeg2,-5+math.random(-offset,offset),0,0,quadTime)

syncTurnInTime(opBLeg1,-32+(-1*centerTurnX)+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg2,-6+math.random(-offset,offset),0,0,quadTime)
syncTurnInTime(opBLeg3,-89+math.random(-offset,offset),0,0,quadTime)
Sleep(quadTime)
WaitForTurns(fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3)
bool_TurnForwardDone=true

end

bool_TurnForwardDone=false
bool_TurnBackwardDone=false
function turnAnim()

bool_TurnForwardDone=false
bool_TurnBackwardDone=false

time=22000

centerTurnX= math.random(1,2)
Turn(Body,x_axis,math.rad(centerTurnX),0.25)
Turn(Body,z_axis,math.rad(2),0.25)

StartThread(turn_BackWards,Leg41,Leg42, Leg11,Leg12,Leg13, Leg61,Leg62,Leg63 ,5,time,-1)
StartThread(turn_ForWards,     Leg31,Leg32, Leg21,Leg22,Leg23, Leg51,Leg52,Leg53,5,time,1)
WaitForTurn(Body,x_axis)

	while bool_TurnForwardDone==false or bool_TurnBackwardDone==false do 
		Sleep(100) 
	end


bool_TurnForwardDone=false
bool_TurnBackwardDone=false
	
Turn(Body,x_axis,math.rad(centerTurnX*-1),0.25)
Turn(Body,z_axis,math.rad(-2),0.25)
centerTurnX=centerTurnX*-1
					--	   fwLeg1,fwLeg2, opBLeg1,opBLeg2,opBLeg3,fShear1,fShear2,fShear3, offset,time,signum)
StartThread(turn_BackWards,Leg31, Leg32,   Leg21, Leg22,  Leg23  ,Leg51,  Leg52,  Leg53,   5,   time,1)
StartThread(turn_ForWards,     Leg41,Leg42, Leg11,Leg12,Leg13, Leg61,Leg62,Leg63,5,time,-1)
WaitForTurn(Body,x_axis)
	while bool_TurnForwardDone==false or bool_TurnBackwardDone==false do 
		Sleep(100) 
	end


end

boolTurnLeft=false
boolTurning=false
TurnCount=0
function headingChangeDetector()

headingOfOld=Spring.GetUnitHeading(unitID)
oldx,_,oldz=Spring.GetUnitPosition(unitID)
	while true do
		Sleep(500)
		newX,_,newZ=Spring.GetUnitPosition(unitID)
		if math.abs(oldx -newX) > 3 or math.abs(oldz -newZ) > 3 then
			boolMoving=true
		else
			boolMoving=false
		end
		oldx,oldz=newX,newZ
		
		tempHead=Spring.GetUnitHeading(unitID)
			if tempHead~=headingOfOld then
			TurnCount=TurnCount+1
				if TurnCount > 3 then
					boolTurning=true 
				end
			else 
				TurnCount=0
				boolTurning=false 
			end  
		boolTurnLeft = headingOfOld > tempHead	
		
		headingOfOld=tempHead

	end

end


function script.QueryWeapon1() 
	return TwinCannon
end
boolDeployed=false
boolReloaded=true
 NinetyDegrees=math.ceil(3.14158/4)
local SIG_AIM=2
function script.AimWeapon1( Heading ,pitch)	
if boolDeployed==false then return false end
Signal(SIG_AIM)
SetSignalMask(SIG_AIM)
	--aiming animation: instantly turn the gun towards the enemy
	if boolDeployed ==true and boolReloaded == true then
	
		Turn(GunRail,y_axis, Heading - 3.14159,1)
		WaitForTurn(GunRail,y_axis)
		return (boolDeployed and boolReloaded)
	else
		return false 
	end
end
function blinkLight()

time=0
	while true do

	episode= math.abs(math.cos(time/10000))*1000
	Show(LightOff)
	Hide(LightOn)
	Sleep(episode+150)
	time=time+episode
	
	episode= math.abs(math.sin(time/10000))*1000
	Hide(LightOff)
	Show(LightOn)

	Sleep(episode+150)
	time=time+episode
	end
end

function Reload(Time)
	if boolDeployed==true then
		reloadAnim()
	else 
		foldWeapon(1)
	end
	
Sleep(Time)
boolReloaded=true
end

function script.FireWeapon1()	
boolReloaded=false
fireAnimation()
StartThread(Reload,RELOAD_TIME)
	return true
end



function script.StartMoving()

end


function script.StopMoving()

end


					maxspeed=math.ceil(COB.MAX_SPEED *65533)
					function script.Activate()
				 	
					--sets the speed to 5,2 *65533
						
					boolDeployWanted=true
					return 1
					end

		function script.Deactivate()
					boolDeployWanted=false
				

					--set the MovementSpeed to zero
		return 0
		end
