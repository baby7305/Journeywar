
--[[
This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
MA 02110-1301, USA.

]]--

--================================================================================================================
-- Animation Functions
--================================================================================================================
-->CombinedWaitForMove
function WMove(lib_piece,lib_axis,lib_distance,lib_speed)
	Move(lib_piece,lib_axis,lib_distance,lib_speed)
	WaitForMove(lib_piece,lib_axis)
end

-->CombinedWaitTurn
function WTurn(lib_piece,lib_axis,lib_distance,lib_speed)
	Turn(lib_piece,lib_axis,lib_distance,lib_speed)
	WaitForTurn(lib_piece,lib_axis)
end

-->Waits for anyTurnToComplete
function WaitForTurns(...)
	--local arg = table.pack(...)
	if not arg then
		return 
	end
	
	typeArg=type(arg)
	
	if typeArg == "table" then
		
		for k,v in pairs(arg) do
			if type(v)=="number" then
				WaitForTurn(v,x_axis)
				WaitForTurn(v,y_axis)
				WaitForTurn(v,z_axis)
			end
		end
		return 
	elseif typeArg == "number" then
		WaitForTurn(arg,x_axis)
		WaitForTurn(arg,y_axis)
		WaitForTurn(arg,z_axis)
	end
end

-->Turn a piece towards a random direction
function turnPieceRandDir(piecename,speed, LIMUPX,LIMLOWX,LIMUPY,LIMLOWY,LIMUPZ,LIMLOWZ)
	if not LIMUPX then
		Turn(piecename,x_axis,math.rad(math.random(-360,360)),speed)
		Turn(piecename,y_axis,math.rad(math.random(-360,360)),speed)
		Turn(piecename,z_axis,math.rad(math.random(-360,360)),speed)
	else
		Turn(piecename,x_axis,math.rad(math.random(LIMLOWX,LIMUPX)),speed)
		Turn(piecename,y_axis,math.rad(math.random(LIMLOWY,LIMUPY)),speed)
		Turn(piecename,z_axis,math.rad(math.random(LIMLOWZ,LIMUPZ)),speed)
	end
end

-->Move a piece towards a random direction
function movePieceRandDir(piecename,speed, LIMUPX,LIMLOWX,LIMUPY,LIMLOWY,LIMUPZ,LIMLOWZ)
	if not LIMUPX then
		return
	else
		Move(piecename,x_axis,math.rad(math.random(LIMLOWX,LIMUPX)),speed)
		Move(piecename,y_axis,math.rad(math.random(LIMLOWY,LIMUPY)),speed)
		Move(piecename,z_axis,math.rad(math.random(LIMLOWZ,LIMUPZ)),speed)
	end
end
-->generic AmphibMovementThread: Threaded Creates with the given pieces and animations a Unit that auto changes its animation
-- between land and water
function AmphibMoveThread(unitid
	,PivotPoints
	,pieces
	,updateCycle
	,moveRatio
	,nlswimAnimation
	,nlstopSwimAnimation
	,nloutOfWaterAnimation
	,nlbackIntoWaterAnimation
	,nlwalkAnimation
	,nlstopWalkAnimation)
	
	local swimAnimation =nlswimAnimation 
	local stopSwimAnimation =nlstopSwimAnimation
	local outOfWaterAnimation =nloutOfWaterAnimation
	local backIntoWaterAnimation =nlbackIntoWaterAnimation
	local walkAnimation =nlwalkAnimation
	local stopWalkAnimation		 =nlstopWalkAnimation								
	local spGetUnitPosition =	Spring.GetUnitPosition
	
	boolInWater= function ()
		x,y,z=spGetUnitPosition(unitID)
		h=Spring.GetGroundHeight(x,z)
		if h > 0 then return false else return true end
	end
	
	boolMoving= function (ox,oy,oz)
		x,y,z=spGetUnitPosition(unitID)
		return math.abs(ox-x)+math.abs(oz-z)+math.abs(oy-y) > 0
	end
	
	
	while true do
		while boolInWater()==true do
			ox,oy,oz=spGetUnitPosition(unitID)
			Sleep(math.floor(updateCycle/2))
			if boolMoving(ox,oy,oz)==true then
				swimAnimation(PivotPoints,pieces)
			else 
				Sleep(math.floor(updateCycle/2))
				stopSwimAnimation(PivotPoints,pieces)
			end
			Sleep(math.ceil(updateCycle/2))
			
		end
		
		outOfWaterAnimation(PivotPoints,pieces)
		while boolInWater()==false do
			ox,oy,oz=spGetUnitPosition(unitID)
			Sleep(math.floor(updateCycle/2))
			if boolMoving(ox,oy,oz)==true then
				walkAnimation(PivotPoints,pieces)
			else 
				Sleep(math.floor(updateCycle/2))
				stopWalkAnimation(PivotPoints,pieces)
			end
			Sleep(math.ceil(updateCycle/2))
		end
		backIntoWaterAnimation(PivotPoints,pieces)
		Sleep(50)
	end
	
end	

-->Executes a function every n-time during a move
function whileMovingDo(PIECE,axis, time, fuoonction)
totalTime=0
	while  (true==Spring.UnitScript.IsInMove (PIECE, axis) ) do
	fuoonction(totalTime)
	Sleep(time)
	totalTime=totalTime + time
	end
end


-->Reset a Piece at speed
function resetP(piecename,speed,boolWaitForIT)
	if not piecename then return end
	
	Turn(piecename,x_axis,0,speed)
	Turn(piecename,y_axis,0,speed)
	Turn(piecename,z_axis,0,speed)
	
	Move(piecename,x_axis,0,speed)
	Move(piecename,y_axis,0,speed)
	Move(piecename,z_axis,0,speed,true)
	if boolWaitForIT then 
		WaitForTurn(piecename,1)
		WaitForTurn(piecename,2)
		WaitForTurn(piecename,3)
	end
	
	
	
end

-->counterturns a piece pair
function equiTurn(p1,p2,axis,deg,speed)
	Turn(p1,axis,math.rad(deg),speed)
	Turn(p2,axis,math.rad(-1*deg),speed)
end

--> Turns a piece in all 3 axis and waits for it
function tP(piecename,x_val,y_val,z_val,speed,boolWaitForIT)
	
	Turn(piecename,x_axis,math.rad(x_val),speed)
	Turn(piecename,y_axis,math.rad(y_val),speed)
	Turn(piecename,z_axis,math.rad(z_val),speed)
	if boolWaitForIT then 
		WaitForTurn(piecename,x_axis)
		WaitForTurn(piecename,y_axis)
		WaitForTurn(piecename,z_axis)
	end
end

-->Turns a piece with radiants
function tPrad(piecename,x_val,y_val,z_val,speed)
	Turn(piecename,x_axis,x_val,speed)
	Turn(piecename,y_axis,y_val,speed)
	Turn(piecename,z_axis,z_val,speed)
end

--> synTurns a Piece to arrive at time on all axis
function syncTurn(piecename,x_val,y_val,z_val,speed)
	max=math.max(x_val,math.max(z_val,y_val))
	time=math.abs(max/speed)
	
	Turn(piecename,x_axis,math.rad(x_val),(time/x_val)*speed)
	Turn(piecename,y_axis,math.rad(y_val),(time/y_val)*speed)
	Turn(piecename,z_axis,math.rad(z_val),(time/z_val)*speed)
	
end

-----------------------------------------
-->turns a Piece syncInTime working with a Table of Move Commands
function turnSyncInTimeT(Table, time,x_deg,y_deg,z_deg)
	
	for piece,v in pairs(Table) do
		turnInTime(v.piecenr, v.axis,math.rad(v.deg), time, false,x_deg,y_deg,z_deg)
	end
	
end


-->Turns a Piece on all given axis, snychronously
function turnSyncInSpeed(piecename,x,y,z,speed,x_deg,y_deg,z_deg)
	if not piecename then return end
	if speed ==0 then
		tP(piecename,x,y,z,speed)
		return
	end
	assert(z_deg)
	
	tx=	absoluteRotation(piecename,x_axis,x,x_deg,y_deg,z_deg)+0.01
	ty=	absoluteRotation(piecename,y_axis,y,x_deg,y_deg,z_deg)+0.01
	tz=	absoluteRotation(piecename,z_axis,z,x_deg,y_deg,z_deg)+0.01
	
	xtime=math.abs(tx)/speed
	ytime=math.abs(ty)/speed
	ztime=math.abs(tz)/speed
	maxtime=math.max(xtime,math.max(ytime,ztime))
	if maxtime== 0 then maxtime=0.1 end
	
	Turn(piecename,x_axis,math.rad(x),(xtime/maxtime)*speed)
	Turn(piecename,y_axis,math.rad(y),(ytime/maxtime)*speed)
	Turn(piecename,z_axis,math.rad(z),(ztime/maxtime)*speed)
	
end




-->Turns a piece in the speed necessary to arrive after x Milliseconds - overrirdes the spring shortes path turns
function turnInTime(piecename,axis,degree,timeInMs,boolWait,x_deg,y_deg,z_deg )
	assert(z_deg)
	
	absoluteDeg=absoluteRotation(piecename,axis,degree,x_deg,y_deg,z_deg)+0.01
	
	timeInMs=timeInMs/1000
	Speed=math.abs(absoluteDeg)/timeInMs --9.3
	
	if lib_boolDebug==true then
		Spring.Echo(" TurnInTime Speed:"..Speed.." to reach Degree:"..degree.."with abs deg to go:"..absoluteDeg.. " in time "..timeInMs.. " seconds"	)
	end
	
	if absoluteDeg <= 180 then
		Turn(piecename,axis,math.rad(degree),Speed)
		if boolWait and boolWait==true then WaitForTurn(piecename,axis) end
		
	else
		OverTurnDirection(piecename,axis,degree,Speed)
		if boolWait and boolWait==true then Sleep(10); WaitForTurn(piecename,axis) end
	end	
end

-->Turns along a direction, ignoring the spring shortest way implementation
function OverTurnDirection(piecename,axis, degree,speed)
	x_deg,y_deg,z_deg= Spring.GetPieceRotation(piecename)
	
	curdeg=0;
	if axis==x_axis then
		curdeg=x_deg 
	elseif axis== y_axis then 
		curdeg=y_deg 
	else curdeg= z_deg 
	end
	curdeg=math.rad(curdeg)
	
	dir =1
	
	if curdeg+360 < degree+360 then 
		dir =-1 
	end
	
	Turn(piecename,axis,math.rad(curdeg +179*dir),speed)
	WaitForTurn(piecename,axis) 
	Turn(piecename,axis,math.rad(degree),Speed)
	WaitForTurn(piecename,axis) 
	
	
end


-->Turns a piece on every axis in time 
function syncTurnInTime(piecename,x_val,y_val,z_val,time,x_deg,y_deg,z_deg)
	if lib_boolDebug==true then
		Spring.Echo("Time for syncTurnInTime:"..time)
	end
	
	turnInTime(piecename,x_axis, (x_val),time,false,x_deg,y_deg,z_deg) -- -28 3000
	turnInTime(piecename,y_axis, (y_val),time,false,x_deg,y_deg,z_deg)
	turnInTime(piecename,z_axis, (z_val),time,false,x_deg,y_deg,z_deg)
	
end


--> Move a piece so that it arrives at the same time on all axis
function syncMove(piecename,x_val,y_val,z_val,speed)
	max=math.max(math.abs(x_val),math.max(math.abs(z_val),math.abs(y_val)))
	time=math.abs(max/speed)
	--ratio = 1/(val/max)*time => max*time / val
	Move(piecename,x_axis,(x_val),(max*time/x_val)*speed)
	Move(piecename,y_axis,(y_val),(max*time/y_val)*speed)
	Move(piecename,z_axis,(z_val),(max*time/z_val)*speed)
	
end


-->Turns a piece in wind direction with offset
function TurnTowardsWind(piecename,speed,offset)
	offSet=offset or 0
	dx,dy,dz=Spring.GetWind()
	headRad=math.atan2(dx,dz)
	Turn(piecename,y_axis,headRad+offSet,speed)
end

-->Spins a Table
function spinT(Table, axis,speed,deg, degup)
	if not degup then
		for i=1,#Table do
			Spin(Table[i],axis,math.rad(deg),speed)
		end
	else
		for i=1,#Table do
			Spin(Table[i],axis,math.rad(math.random(deg,degup)),speed)
		end
	end
	
end
--> Stops Spinning Table
function stopSpinT(Table,axis, speed)
	for i=1,#Table do
		StopSpin(Table[i],axis,speed)
	end
	
end

-->Moves a UnitPiece to Position in Unitspace at speed
function MovePieceToPos(piecename, X,Y,Z,speed)
	
	Move(piecename,x_axis,X,speed,true)
	Move(piecename,y_axis,Y,speed,true)
	Move(piecename,z_axis,Z,speed,true)	
	
end

	-->Helperfunction of recursiveAddTable -> builds a bonesubsystem
	function buildBone(parent ,piecetable)
	
		PieceInfo =Spring.GetUnitPieceInfo(unitID,parent)
		children= tableToKeyTable(PieceInfo.children)
		
	SubBoneTables={}
	if children then
		for key, piecenumber in pairs(piecetable) do			
			
			if children[key] then
			SubSubBoneTable={}
			SubSubBoneTable=buildBone(key, piecetable)
			SubBoneTables[key]=SubSubBoneTable
			end
		
		end
	end
	
	return SubBoneTables
	end
	-->function traverses a bonetable, getting all elements in depth Steps
	function getElementsNStepsDown(Steps, Value)
	if Steps == 0 then return Value end
	
		if Steps > 0 and type(Value) == "table" then
		Tables={}
			for i=1, #Value do
			foundIt= getElementsNStepsDown(Steps-1,Value[i])
				if foundIt then
					table.insert(Tables,foundIt)	
				end
			end
		return Tables
		end	
	end
	
	--Dictionary of pieces --> with accumulated Weight in every Node
	--> Every Node also holds a bendLimits which defaults to ux=-45 x=45, uy=-180 y=180,uz=-45 z=45
	function buildSkeleton(rootpiecename,keyPieceNrtable)
	
	Bones={}
	SubPieces={}
		for key, piecenumber in pairs(keyPieceNrtable) do
			--not rootpiece and 		
			PieceInfo =Spring.GetUnitPieceInfo(unitID,key)
			parent= PieceInfo.parent	
		
			if parent and parent == rootpiecename then
				SubPieces[key] = {}
			end
		end
		
		Bones[rootpiecename] = SubPieces
		
		for key,v in pairs(Bones[rootpiecename]) do
		subBoneTables= buildBone(key, keyPieceNrtable)	
			if subBoneTables then
			table.insert(Bones[rootpiecename][key],	subBoneTables)
			end	
		end	
	
	end
	
-->Moves a UnitPiece to a UnitPiece at speed
function AlignPieceToPiece( pieceToAlign, PieceToAlignTo,speed, boolWaitForIt,boolDebug, GlowPoints)
	
	if not pieceToAlign or not PieceToAlignTo then return end
	
	--We use existing function to move the piece to the other pieces center
	MovePieceToPiece(pieceToAlign,PieceToAlignTo,0)
	
	WaitForMove(pieceToAlign,x_axis)
	WaitForMove(pieceToAlign,y_axis)
	WaitForMove(pieceToAlign,z_axis)	
	
	--Get the Data of the Piece we want to align to
	_,_,_,vx,vy,vz=Spring.GetUnitPiecePosDir(unitID,PieceToAlignTo)
	norm=distance(vx,vy,vz)+0.00001
	
	vx=vx/norm
	vy=vy/norm
	vz=vz/norm
	-----------------------------------------------------------------
	
	OrientVec={x=vy*-1,
		y=vx,
		z=0}

	DirectionV={x=vx,y=vy,z=vz}

	OrientUpVec=mulVector(OrientVec,DirectionV)
	UpVec = {x=0,y=1,z=0}
	
	
	angleX= math.atan2(VDotProduct(OrientVec,UpVec), 	VDotProduct(OrientUpVec,UpVec)/ Vabs(OrientVec) * Vabs(OrientUpVec))
	
	--Turn the Piece to the Vector of the PieceToAlignTo
	Turn(pieceToAlign,x_axis,angleX,speed)
	Turn(pieceToAlign,y_axis,math.atan2(vy,vx),speed)
	Turn(pieceToAlign,z_axis,math.asin(vz),speed,true)
	
	if not boolWaitForIt or boolWaitForIt == true then
		WaitForTurn(pieceToAlign,x_axis)
		WaitForTurn(pieceToAlign,y_axis)
		WaitForTurn(pieceToAlign,z_axis)
	end
	
	if boolDebug and boolDebug==true then
		debugDisplayPieceChain(GlowPoints)
	end
	
end

function echoMove(name, x,y,z)
Spring.Echo("Moving Piece "..name.." to x:"..x.." ,y:"..y.." , z:"..z)
end

-->Moves a UnitPiece to a UnitPiece at speed
function MovePieceToPiece(piecename, pieceDest,speed,offset,forceUpdate)

	if not pieceDest or not piecename then return end
	ox,oy,oz=Spring.GetUnitPiecePosition(unitID,pieceDest)
	orx,ory,orz=Spring.GetUnitPiecePosition(unitID,piecename)
	
	ox,oy,oz = ox -	orx,oy - ory,oz - orz
	

	ox=ox*-1
	if offset then
		ox,oy,oz=ox+offset.x,oy+offset.y,oz+offset.z
	end	
	
--	echoMove(piecename, ox,oy,oz)
	Move(piecename,x_axis,ox,0)
	Move(piecename,y_axis,oy,0)
	Move(piecename,z_axis,oz,0,forceUpdate or true)
	
	
	WaitForMove(piecename,x_axis); WaitForMove(piecename,z_axis); WaitForMove(piecename,y_axis);
	
	
	
end
-->Moves a Piece to a Position on the Ground in UnitSpace
function MoveUnitPieceToGroundPos(unitID,piecename, X,Z,speed,offset)
	if not piecename then return error("No piecename given") end
	if not X or not Z then return end
	loffset=offset or 0
	x,globalHeightUnit,z=Spring.GetUnitPosition(unitID)
	Move(piecename,x_axis,X,0)
	Move(piecename,z_axis,Z,0,true)	
	x,y,z,_,_,_=Spring.GetUnitPiecePosDir(unitID,piecename)
	if not x then return end
	myHeight=Spring.GetGroundHeight(x,z)
	heightdifference=math.abs(globalHeightUnit-myHeight)
	if myHeight < globalHeightUnit then heightdifference=-heightdifference end
	Move(piecename,y_axis,heightdifference+loffset,speed,true)
end

-->Moves a Piece to WaterLevel on the Ground in UnitSpace
function KeepPieceAfloat(unitID,piecename,speed,offset)
	if not piecename then return error("No piecename given") end
	loffset=offset or 0
	x,globalHeightUnit,z=Spring.GetUnitPosition(unitID)
	
	x,y,z,_,_,_=Spring.GetUnitPiecePosDir(unitID,piecename)
	myHeight=0
	heightdifference=math.abs(globalHeightUnit-myHeight)
	if myHeight < globalHeightUnit then heightdifference=-heightdifference end
	Move(piecename,y_axis,heightdifference+loffset,speed,true)
end

-->Paint a Piece Pattern 
function PaintPatternPieces(ListOfPieces, ListOfCoords,sx,sy,sz)
	prevx,prevy,prevz=sx,sy,sz
	
	
	MovePieceToPos(ListOfPieces[1],ListOfCoords[1].x,ListOfCoords[1].y,ListOfCoords[i].z)
	TurnPieceTowards(ListOfPieces[1],sx,sy,sz,0)
	prevx,prevy,prevz=ListOfCoords[1].x,ListOfCoords[1].y,ListOfCoords[i].z
	
	
	for i=2,#ListOfCoords-1 do
		MovePieceToPos(ListOfPieces[i],ListOfCoords[i].x,ListOfCoords[i].y,ListOfCoords[i].z)
		TurnPieceTowardsPiece(ListOfPieces[i],ListOfPieces[i-1],0)
	end
	
end

-->Moves a Piece to a Position on the Ground in Worldspace
function MoveUnitPieceToRelativeWorldPos(unitID,piecename, relX,relZ,speed,offset)
	x,globalHeightUnit,z=Spring.GetUnitPosition(unitID)
	x,z=relX-x,relZ-z
	Move(piecename,x_axis,x,0,true)
	Move(piecename,z_axis,z,0,true)	
	x,y,z,_,_,_=Spring.GetUnitPiecePosDir(unitID,piecename)
	myHeight=Spring.GetGroundHeight(x,z)
	heightdifference=math.abs(globalHeightUnit-myHeight)
	if myHeight < globalHeightUnit then heightdifference=-heightdifference end
	Move(piecename,y_axis,heightdifference+offset,speed,true)
end

--> Move with a speed Curve
function moveSpeedCurve(piecename, axis, NumberOfArgs, now, timeTotal , distToGo, Offset,...)
	--local arg = table.pack(...)
	--!TODO calcSpeedUpId from functionkeys,check calculations for repetitons and store that key in to often as result in GG
	--should handle all sort of equations of the type 0.3*x^2+0.1*x^1+offset
	-- in our case that would be [2]=0.3 ,[1]=0.1 and so forth
	
	ArgFactorTable={}
	NrCopy=NumberOfArgs
	for _, factor in pairs(arg) do
		ArgFactorTable[NrCopy]=factor	 
		NrCopy=NrCopy-1
	end
	
	--init tangent table
	tangentTable={n=#ArgFactorTable-1}
	
	
	--first derivative 
	--http://en.wikipedia.org/wiki/Derivative
	for i=table.getn(tangentTable), 1, -1 do
		tangentTable[i]=(i+1)*ArgFactorTable[i+1]
	end
	
	Totalspeed=Offset
	for i=1, NumberOfArgs-1 do
		Totalspeed=Totalspeed+tangentTable[i]*(now^i)
	end
	
	Move(piecename, axis, distToGo, Totalspeed)
end

--> Drops a piece to the ground
function DropPieceToGround(unitID,piecename,speed, boolWait,boolHide, ExplodeFunction,SFXCOMBO)
	x,y,z=Spring.GetUnitPiecePosition(unitID,piecename)
	MoveUnitPieceToGroundPos(unitID,piecename,x,z,speed, 5)
	
	if boolWait then WaitForMove(piecename,y_axis) end
	
	if boolHide then Hide(piecename) end	
	
	if ExplodeFunction then ExplodeFunction(piecename,SFXCOMBO) end
end

	
	-->Takes a List of Pieces forming a kinematik System and guides them through points on a Plane
		-- ListPiece={[1]={ cx=0,y=0,z=0, 		--current setting allowed
			-- lx = 25,ly = 25,lz = 25,-- length of piece 
			--orgx, orgy, orgz
			-- sx=false, sy=true,sz=true, --active axis
			--lastPointIndex
			--length
			
		-- } --Active Axis for this piece
		
	-- }
	
	-- SnakePoint={ x,y,z -- Worldspace Coordinates
		-- vx,vy,vz --VoluminaCube
		
	-- }
	function snakeOnAPlane(Piece_Deg_Length_PointIndex_boolGateCrossed_List,SnakePoints,axis,speed, FirstSensor,tolerance, boolPartStepExecution, boolWait)
		local PPDLL= Piece_Pos_Deg_Length_PointIndex_boolGateCrossed_List
		--get StartPosition and Move First Piece Into the Cube
		boolResolved=false
		if not SnakePoints then echo("snakeOnAPlane:: Not SnakePoints delivered"); return end
		
		LastInsertedPoint=SnakePoints[1]
		Sensor=FirstSensor
		
		vOrigin={}; vOrigin.x,vOrigin.y,vOrigin.z=Spring.GetUnitPiecePosition(unitID,PPDLL[#PPDLL].Piece)
		--func
		--getPointPlane(point, -degAroundAxis)
		
		while boolResolved==false do
			
			boolAlgoRun=false
			while boolAlgoRun ==false do
				hypoModel=PPDLL
				GlobalIndex= #PPDLL
				
				
				
				for Index= #PPDLL, 1, -1 do
					
					local nextGoal=PPDLL[Index].PointIndex
					x,y,z,dx,dy,dz=Spring.GetUnitPiecePosDir(unitID,PPDLL[Index].Piece)
					
					local PieceStartPoint =makeVector(x,y,z)
					px,py,pz,pdx,pdy,pdz=Spring.GetUnitPiecePosDir(unitID,PPDLL[math.min(Index+1,#PPDLL)].Piece)
					local PieceEndPoint		 =makeVector(px,py,pz)
					
					ppx,ppy,ppz,ppdx,ppdy,ppdz=Spring.GetUnitPiecePosDir(unitID,PPDLL[math.min(Index+1,#PPDLL)].Piece)
					local PrevGatePoint		 =makeVector(ppx,ppy,ppz)
					
					
					--CheckCenterPastPoint_PointIndex 
					boolPastCenterPoint=checkCenterPastPoint( midVector(PieceStartPoint,PieceEndPoint),
					SnakePoints[nextGoal],
					PrevGatePoint)
					-->if pointIndex is beyond Last Point this piece is far beyond 
					if nextGoal > #SnakePoint then 
						-- align yourself counterVectorwise from the last Point you crossed
						
					end
					
					-->True && boolGateCrossed =false
					if boolPastCenterPoint == true and PPDLL[Index].boolGateCrossed ==false then
						
						--TurnPieceTowardstNextPoint(PrevPieceIndex) hypoModel
						counterTurnDeg=0
						for BackTrackIndex= Index, #PPDLL, 1 do
							--ReAlign Piece Goal
						end
						--
						PPDLL[Index].boolGateCrossed =checkCenterPastPoint( midVector(PieceStartPoint,	PieceEndPoint),
						SnakePoints[nextGoal],
						PrevGatePoint)
						
						if PPDLL[Index].boolGateCrossed == true then
							PPDLL[Index].PointIndex= PPDLL[Index].PointIndex +1 
						end
						--boolGateCrossed=True 
						--IncPointIndex
						--CheckCenterPastPoint_PrevPiece() && boolGateCrossed != true
						--> True
						--Index =PrevPointIndex
						
						--SubIndex
						
						-->True && boolGateCrossed =true
					elseif boolPastCenterPoint == true and PPDLL[Index].boolGateCrossed ==true then
						
						if boolPartStepExecution == true then 
							--Execute from top down to index, moves in order
							--+-boolWait
						else
							
						end
						--SubIndex
						
					elseif	boolPastCenterPoint == false	then
						-->False
						--TurnPieceTowardstPoint(PieceIndex) hypoModel
						--CounterTurnPrevPiece hypoModel
					end
					
					
					if Index== 1 then boolAlgoRun=true; break end
				end
			end
			applyChangesAsTurns(PPDLL)
			boolResolved=isSnakeAtMax(PPDLL)
		end
		--]]
	end
	
	function isSnakeAtMax(PPDLL,SnakePoints)
		--if every point from the base point out is aligned towards its next goal
		for i=1, #PPDLL do
			px,py,pz,dx,dy,dz=Spring.GetUnitPiecePosDir(unitID,PPDLL[i].Piece)
			pgx,pgy,pgz,dgx,dgy,dgz=Spring.GetUnitPiecePosDir(unitID,SnakePoints[PPDLL[Index].PointIndex])
			vec=	norm2Vector(makeVector(px-pgx,py-pgy,pz-pgz))
			if eqVec(makeVector(dx,dy,dz),vec)==false then return false end
			
		end
		
		return true
	end
	
	function TurnPieceList( ScriptEnviroment,PieceList, boolTurnInOrder, boolWaitForTurn,boolSync)
		
		
		
		
		for i=1,table.getn(PieceList),5 do
			
			if boolSync == false then
				tP(PieceList[i],PieceList[i+1],PieceList[i+2], PieceList[i+3],PieceList[i+4],boolTurnInOrder)
			else
				if not PieceList[i] then 
					echo("TurnPieceList piece "..i.." missing") 
				else	
					x_deg,y_deg,z_deg= ScriptEnviroment.GetPieceRotation(PieceList[i])
					
					turnSyncInSpeed(PieceList[i],PieceList[i+1],PieceList[i+2], PieceList[i+3],PieceList[i+4],math.deg(x_deg),math.deg(y_deg),math.deg(z_deg))
				end
			end
			
		end
		
		if boolWaitForTurn==true and boolTurnInOrder== false then
			for i=1,table.getn(PieceList),5 do
				WaitForTurns(PieceList[i])
			end
		end
		
		
	end
	
	--> Turn a Table towards local T
	function moveT(t, axis, dist,speed,boolInstantUpdate)
		if boolInstantUpdate then
			for i=1,#t,1 do
				Move(t[i],axis,dist,0,true)
			end
			return
		end
		
		if not speed or speed==0 then
			for i=1,#t,1 do
				Move(t[i],axis,dist,0)
			end
		else
			for i=1,#t,1 do
				Move(t[i],axis,dist,speed)
			end
		end
		return
	end
	
	function turnTableRand(t, taxis, uparg, downarg,speed,boolInstantUpdate)
		axis=taxis or 2 --y_axis as default
		down=downarg or math.random(-50,0)
		up=uparg or math.random(0,50)
		if down > up then down=down*-1-1 end
		
		if boolInstantUpdate then
			for i=1,#t,1 do
				Turn(t[i],axis,math.rad(math.random(down,up)),0,true)
			end
			return
		end
		
		if not speed or speed==0 then
			for i=1,#t,1 do
				Turn(t[i],axis,math.rad(math.random(down,up)),0)
			end
		else
			for i=1,#t,1 do
				Turn(t[i],axis,math.rad(math.random(down,up)),speed)
			end
		end
		return
	end


	function unfoldAnimation(ListOfPieces,specialeffectsfunction,unitID,maxSpeed)
		--sort them BySize --samesizes by closeness to ground
		
		PieceIDSizeTable={}
		PieceIDHeightTable={}
		AllreadyVisiblePieces={}
		HideT(ListOfPieces)
		for k,v in pairs(ListOfPieces) do
			x,y,z=Spring.GetUnitPieceCollisionVolumeData(unitID,v)
			min=math.floor(math.min(x,math.min(y,z)))
			PieceIDSizeTable[v]=min
			_,y_=Spring.GetUnitPiecePosDir(unitID,v)
			PieceIDHeightTable[v]=y
		end
		--sortBySize
		SizeSortedTable={}
		HeightSortedTable={}
		
		for k,v in pairs(ListOfPieces) do
			SizeSortedTable= binaryInsertTable(SizeSortedTable,PieceIDSizeTable[v],v,k) 	
			HeightSortedTable=binaryInsertTable(HeightSortedTable,PieceIDHeightTable[v],v,k) 	
		end
		
		ClosedTable={}
		AllreadyVisiblePieces[ SizeSortedTable[#SizeSortedTable].key]=PieceIDSizeTable[SizeSortedTable[#SizeSortedTable].key]
		MovePieceoPieceUnitSpace(AllreadyVisiblePieces[1],0,0,0,0)
		Show(AllreadyVisiblePieces[1])
		ClosedTable[AllreadyVisiblePieces[1]]=true
		local StartPiece=AllreadyVisiblePieces[1]
		
		--we now have Table of Pieces Sorted by size and height in the building
		-- we itterate over the lower table - and pick by size 
		
		for i=1,#HeightSortedTable, 1 do	
			if HeightSortedTable[i].value ~= StartPiece then
				--find a StartPiece
				local mySize=PieceIDSizeTable[HeightSortedTable[i].value]
				PieceBiggerThenMe=StartPiece
				for k,v in pairs(AllreadyVisiblePieces) do
					if v > mySize then
						PieceBiggerThenMe=k
						if math.random(0,2)==1 then break end
					end
				end
				
				MovePieceToPiece( HeightSortedTable[i].value, PieceBiggerThenMe,0)
				Show(HeightSortedTable[i].value)
				--get Element Bigger in Table 
				Move(HeightSortedTable[i].value,0,x_axis,speed)
				Move(HeightSortedTable[i].value,0,z_axis,speed)
				WaitForMove(HeightSortedTable[i].value,z_axis)
				WaitForMove(HeightSortedTable[i].value,x_axis)
				Move(HeightSortedTable[i].value,0,y_axis,speed)
				WaitForMove(HeightSortedTable[i].value,y_axis)
				AllreadyVisiblePieces[HeightSortedTable[i].value]=PieceIDSizeTable[HeightSortedTable[i].value]
				--ShowTheBiggest
			end
		end
		-- Move through the showedList, from a randomPoint find a piece that has a fitting size
	end	
	
	-->Drops a unitpiece towards the ground
	function PieceDropTillStop(unitID,piece,speedPerSecond, VspeedMax, lbounceNr, boolSpinWhileYouDrop, bounceConstant,driftFunc)
		if not unitID or not piece or not speedPerSecond or not VspeedMax then return end
		x,globalHeightUnit,z=Spring.GetUnitPosition(unitID)
		
		speed=speedPerSecond or 9.81
		speedMax=VspeedMax or 9.81
		bounceNr = lbounceNr or 12
		time=1000
		factorT=time/1000
		
		if boolSpinWhileYouDrop and boolSpinWhileYouDrop==true then
			SpinAlongSmallestAxis(unitID,piece, math.random(-25,25),2)
		end
		
		dirX,dirY,dirZ= Spring.GetUnitPiecePosition(unitID,Head)
		bdirX,bdirY,bdirZ= Spring.GetUnitPiecePosition(unitID,Gun)
		dirX,dirZ=bdirX-dirX,bdirZ-dirZ
		
		--Spring.Echo("Spring.GetUnitWeaponVectors(unitID,1)"..dirX.. " z:"..dirZ)
		norm=math.sqrt(dirX*dirX + dirZ*dirZ)
		dirX,dirZ=(dirX/norm),(dirZ/norm)
		dirX,dirZ= -0.5*randSign(),-0.5*randSign()
		vec={vx=dirX ,vy= 0.4, vz=dirZ ,x=0,y=17,z=0,}
		
		
		
		
		gh=Spring.GetGroundHeight(x,z)
		bump=0
		force=16
		
		while bump < bounceNr do 
			--accelerate by vector +gravity 
			vec.y=vec.y + clampMaxSign(vec.vy* force	%(speed*factorT) - 1*speed, factorT*speedMax) 
			vec.x=vec.x + clampMaxSign(vec.vx* force	%(speed*factorT)			, factorT*speedMax)
			vec.z=vec.z + clampMaxSign(vec.vz* force	%(speed*factorT)			, factorT*speedMax)
			
			
			mP(piece,vec.x,vec.y,vec.z, factorT*speed)
			
			--shrink vec with sqrt as a approximation for air resistance
			vec.vx=clampMaxSign(math.sqrt((math.abs(vec.vx)^1.414))*sigNum(vec.vx),1)
			vec.vz=clampMaxSign(math.sqrt((math.abs(vec.vz)^1.414))*sigNum(vec.vz),1)
			
			--apply a approximation for the decay of movement
			vec.vy=clampMaxSign(1-(1/(force+0.0001))* (vec.vy ) , 1 )
			WaitForMove(piece,y_axis)
			Sleep(10)
			--Spring.Echo("Looping Physics")
			x,y,z=Spring.GetUnitPiecePosDir(unitID,piece)
			gh=Spring.GetGroundHeight(x,z)
			
			
			
			if gh - y > 5 then
				
				
				bump=bump+1
				force=math.sqrt(force)
				--not realistic but a start we take the ground normal as new vector 
				--reset Position
				x,y,z=Spring.GetUnitPiecePosDir(unitID,piece)
				
				MoveUnitPieceToGroundPos(unitID,piece,x,z,0,0)
				dx,dy,dz, slope =Spring.GetGroundNormal(x,z)
				
				Spring.Echo("X>"..vec.x .. " Y> ".. vec.y .. " Z>" .. vec.z) 
				Spring.Echo("VX>"..vec.vx .. " VY> ".. vec.vy .. " VZ>" .. vec.vz) 
				Spring.Echo("DX>"..dx .. " DZ>" .. dz) 
				if math.abs(dy) > 0.5 and force < 1 then 
					StopSpin(piece,x_axis,0.5)
					StopSpin(piece,y_axis,0.5)
					StopSpin(piece,z_axis,0.5)
					LayFlatOnGround(piece)
					x,y,z=Spring.GetUnitPiecePosDir(unitID,piece)
					MoveUnitPieceToGroundPos(unitID,piece,x,z,0,0)
					
					return
				else
					force=force *2 
				end
				px,py,pz=Spring.GetUnitPiecePosition(unitID,piece)
				vec.vx,vec.vy,vec.vz=(clampMaxSign(dx*0.5,1)),vec.vy*-0.75,(clampMaxSign(dz*0.5,1))
				
				vec.y= vec.y + clampMaxSign(vec.vy* force^2	 , factorT*speedMax) 
				vec.x= vec.x + clampMaxSign(vec.vx* force^2				, factorT*speedMax)
				vec.z= vec.z + clampMaxSign(vec.vz* force^2				, factorT*speedMax)
				mP(piece,vec.x,vec.y,vec.z, factorT*speed)
				WaitForMove(piece,y_axis)
				Sleep(10)
				
				
			end
			
		end
		
		
	end
	
		
	--> Move all Elements of a Table to Zero
	function resetMT(t)
		for i=1, #t, 1 do
			Move(t[i],y_axis,0,0)
			Move(t[i],z_axis,0,0)
			Move(t[i],z_axis,0,0)
		end
	end
	
	--> Turn a Table towards local T
	function turnT(t, axis, deg,speed,boolInstantUpdate,boolWait)
		if boolInstantUpdate then
			for i=1,#t,1 do
				Turn(t[i],axis,math.rad(deg),0,true)
			end
			return
		end
		
		if not speed or speed==0 then
			for i=1,#t,1 do
				Turn(t[i],axis,math.rad(deg),0)
			end
			
		else
			for i=1,#t,1 do
				Turn(t[i],axis,math.rad(deg),speed)
			end
			if boolWait then 	for i=1,#t,1 do WaitForTurn(t[i],axis) end end
		end
		return
	end
	
	
	--unitID,centerNode,centerNodes, nrofLegs, FeetTable={firstAxisTable, KneeTable[nrOfLegs]},SensorTable,frameRate, FeetLiftForce
	--> Trys to create a animation using every piece there is as Legs.. 
	function adaptiveAnimation(configTable,inPeace,id,ScriptEnviroment)
		local spGetUnitPosition=Spring.GetUnitPosition
		local infoT= configTable
		pieceMap={}
		oldHeading=(Spring.GetUnitHeading(unitID)/32768)*3.14159
		pieceMap[infoT.centerNode]={}
		pieceMap=recursiveAddTable(pieceMap,infoT.centerNode, infoT.centerNode,inPeace)
		
		if not GG.MovementOS_Table then GG.MovementOS_Table={} end
		quadrantMap={[1]=0,[2]=0,[3]=0,[4]=0}
		tx,ty,tz=spGetUnitPosition(unitID)
		GG.MovementOS_Table[unitID]={quadrantMap=quadrantMap,boolmoving=false, stability=1, tx=tx,ty=ty,tz=tz, ForwardVector={x=0,z=0}}
		
		
		
		
		
		maxDeg=math.random(12,32)
		turnOffset=360/#infoT.feetTable.Knees
		
		for i=1,infoT.nr do
			
			StartThread( feetThread,
			math.floor(math.min(math.max(0,(i*turnOffset)/360),1)*4),
			(-190+(85)*i),
			maxDeg,
			i,
			infoT.feetTable.firstAxis[i],
			infoT.feetTable.Knees[i],
			infoT.sensorTable[i],
			infoT.ElementWeight or 10,
			infoT.FeetLiftForce or 2,
			infoT.LiftFunction,
			infoT.Height,
			infoT.WiggleFunc,
			ScriptEnviroment,
			infoT.tipTable[i]
			)
		end
		
		
		local MotionDetect=	function (ox,oz)
			x,y,z=Spring.GetUnitPosition(unitID)
			return math.abs(ox-x) +math.abs(oz-z) < 15,x,z
		end
		
		
		Sleep(100)
		
		ox,oy,oz= spGetUnitPosition(unitID)
		boolMoving=false
		Height=infoT.Height
		while true do
			--find out whether we are moving
			ux,uz=ox,oz
			boolMoving,ox,oz=MotionDetect(ox,oz)
			GG.MovementOS_Table[unitID].tx=ox
			GG.MovementOS_Table[unitID].tz=oz
			
			
			GG.MovementOS_Table[unitID].ForwardVector={x=ox-ux,z=oz-uz}
			
			local one, three =GG.MovementOS_Table[unitID].quadrantMap[1],GG.MovementOS_Table[unitID].quadrantMap[3]
			local two,four =GG.MovementOS_Table[unitID].quadrantMap[2],GG.MovementOS_Table[unitID].quadrantMap[4]
			total=one+two+three+four
			one,two,three,four=one>0,two> 0, three>0, four> 0
			--		//stabilityfactor
			BoolStable=((one and two and (three or four) )	)or 
			((two and four) and ( three or one) )or 
			((four and three) and ( one or two) )or
			((three and one ) and ( four or two))
			
			if BoolStable==false then
				GG.MovementOS_Table[unitID].stability=math.min(1,(1/total)*	GG.MovementOS_Table[unitID].stability)
			else
				GG.MovementOS_Table[unitID].stability=1			
			end
			
			Move(infoT.centerNode,y_axis,GG.MovementOS_Table[unitID].stability*Height,3)
			
			Heading=(Spring.GetUnitHeading(unitID)/32768)*3.14159
			boolTurning= math.abs(Heading - oldHeading) > 1
			
			
			for i=1,infoT.nr,1 do			
				degOffSet=(-190+(85)*i)
				RelHeading=(((degOffSet+360 )-(Heading+360))-360)%360
				if (RelHeading < 0) then RelHeading = (RelHeading+360)*-1 end		
				
				if boolTurning== true then 				
					speed=math.random(5,15)/100
					Turn(	infoT.feetTable.firstAxis[i],y_axis,math.rad(degOffSet+clamp(RelHeading,-25,25)*-1),speed)
					turnT(infoT.feetTable.Knees[i],y_axis,clamp(RelHeading,-10,10)*-1,speed,false,true)			
				else
					infoT.WiggleFunc(	infoT.feetTable.firstAxis[i],degOffSet)
				end
			end
			Sleep(400)	
		end
	end

	
-->Moves a UnitPiece to a UnitPiece at speed
function MovePieceoPieceUnitSpace(unitID,piecename, piecenameB,speed, waitForIt)
	if not piecenameB or not piecename then return end
	bx,by,bz=Spring.GetUnitPiecePosition(unitID,piecenameB)
	bx=-1*bx
	
	Move(piecename,x_axis,bx,speed)
	Move(piecename,y_axis,by,speed)
	Move(piecename,z_axis,bz,speed,true)	
	if waitForIt==true then
		WaitForMove(piecename,x_axis)
		WaitForMove(piecename,y_axis)
		WaitForTurn(piecename,y_axis)
	end
end

-->Turns a Piece towards a direction 
function TurnPieceTowards(piecename,x,y,z,speed)
	
	Turn(piecename,x_axis,math.rad(x),speed)
	Turn(piecename,y_axis,math.rad(y),speed)
	Turn(piecename,z_axis,math.rad(z),speed,true)	
	
end

-->Turn a Piece towards another Piece 
function TurnPieceTowardsPiece(piecename,pieceB,speed)
	x,y,z=Spring.GetUnitPiecePosition(unitID,piecename)
	px,py,pz=Spring.GetUnitPiecePosition(unitID,pieceB)
	px,py,pz=x-px,y-py,z-pz
	dx,dy,dz=math.rad(math.atan2(dy,dz)),math.rad(math.atan2(px,pz)),math.rad(math.atan2(dy,dx))
	if py then
		TurnPieceTowards(piecename,dx,dy,dz,speed)
	end
	
end

--> Turns a Piece into the Direction of the coords given (can take allready existing piececoords for a speedup
function TurnPieceTowardsPoint (piecename, x,y,z,Speed)
	pvec={x=0,y=0,z=0}
	px,py,pz,pvec.x,pvec.y,pvec.z =Spring.GetUnitPiecePosDir(unitID,piecename) 
	pvec=normVector(pvec)
	
	vec={}
	vec.x,vec.y,vec.z=x-px,y-py,z-pz
	v=normVector(v)
	v=subVector(v,pvec)
	v=normVector(v)
	tPrad(math.atan2(vec.y,vec.z),math.atan2(vec.x,vec.z),math.atan2(vec.x,vec.y),Speed)
end


--> Moves a Piece to a WorldPosition relative to the Units Position
function MovePieceToRelativeWorldPos(id,piecename, relX,relY,relZ,speed)
	x,y,z=Spring.GetUnitPosition(id)
	x,y,z=relX-x,y-relY,relZ-z
	Move(piecename,x_axis,x,speed)
	Move(piecename,y_axis,y,speed)
	Move(piecename,z_axis,z,speed,true)	
	
end


function resetDir(piecename,speed)
	Turn(piecename,x_axis,0,speed)
	Turn(piecename,y_axis,0,speed)
	Turn(piecename,z_axis,0,speed)
	
	
end

--> calcSpeedThroughDegByTime
function GetSpeed(timeInSeconds, degree)
	degRad=math.rad(degree)
	return (degRad/timeInSeconds)
end

-->Reset a Table of Pieces at speed
function reseT(tableName,speed, ShowAll, boolWait)
	lboolWait=boolWait or false
	lspeed=speed or 0
	
	
	
	for i=1,#tableName do
		
		resetP(tableName[i],lspeed,false)
		if ShowAll and tableName[i] then
			Show(tableName[i])
		end
		
	end
	
	if lboolWait == true then
	WaitForTurns(tableName)
	end
	
end

-->Recursively Resets Tables
function recReseT(Table,speed)
	if type(Table)=="table" then 
		for k,v in pairs(Table) do
			recReseT(v,speed)
		end
	elseif type(Table)=="number" then
		resetP(Table,speed)
	end
	
	
end

		
	function objectFalling(objectname,weight,step, OVect,term)
		Terminal=term or -9.81
		weight=1/weight
		dx,dy,dz=Spring.GetUnitDirection(unitID)
		ObjectVector=OVec or {x=0,y=0,z=0}
		sizeX,sizeY,sizeZ=Spring.GetUnitPieceCollisionVolumeData(unitID,objectname)
		size=math.sqrt(sizeX*sizeX+sizeY*sizeY+sizeZ*sizeZ)
		
		--Here be pseudo physics :)
		while true do
			oPosX,oPosY,oPosZ=Spring.GetUnitPiecePosDir(unitID,objectname)
			
			--ApplyGravity
			OVec.y= math.max(math.max(OVec.y^2,1.7)*-1,term)
			
			--CheckCollission
			if OPosY-size < Spring.GetGroundHeight(oPosX,oPosZ) then
				groundX,groundY,groundZ=Spring.GetGroundNormal(oPosX,oPosY)
				OVec.x,OVec.y,Ovec.z=groundX+OVec.x,(OVec.y*-1)*weight+groundY,OVec.z+groundZ	
			end
			
			--MoveObject
			MaxVal=math.abs(Ovec.y)/(1000/step)
			
			--Normalisieren des ObjectVectors
			normV=normVector(OVec)
			normV=mulVector(normV,TotalEnergy)
			
			speed=3.141
			stepTimesVec=1
			
			Move(objectname,x_axis,Ovec.x*stepTimesVec,speed)
			Move(objectname,y_axis,Ovec.y*stepTimesVec,speed)
			Move(objectname,z_axis,Ovec.z*stepTimesVec,speed)
			
			Sleep(step)
		end
		
	end
	
--================================================================================================================
--================================================================================================================