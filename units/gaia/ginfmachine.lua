local unitName = "ginfernalmachine"

local unitDef = {
name = " ",
Description = " ",
objectName = "gInfMachine.s3o",
script = "gInfMachineScript.lua",
buildPic = "placeholder.png",
levelGround =false,
--cost
buildCostMetal = 15,
buildCostEnergy = 1,
buildTime = 1,
--Health
maxDamage = 3000,
idleAutoHeal = 0,
autoheal=0,
--Movement
mass=180020,
upRight=true,
blocking=false,
pushResistant=true,
Acceleration = 0.0000001,
BrakeRate = 0.0001,
FootprintX = 1,
FootprintZ = 1,


MaxSlope = 90,
MaxVelocity = 0.000001,
MaxWaterDepth = 55,
MovementClass = "Default2x2",
TurnRate = 1,

sightDistance = 80,

reclaimable=false,
Builder = false,
CanAttack = true,
CanGuard = false,
CanMove = true,
CanPatrol = false,
CanStop = true,
LeaveTracks = false,
useSmoothMesh = false,

 corpse             = "lavafeature",
 

 
  customParams = {},
 sfxtypes = {
    explosiongenerators = {
				   "custom:factory_explosion",
	   		       "custom:emitorray",
	   		       "custom:blueglow",
	   		       "custom:faintglow",
	   		       "custom:weldArc"	
						  },
	
			},

 
 
Category = [[LAND]],




}

return lowerkeys({ [unitName] = unitDef })