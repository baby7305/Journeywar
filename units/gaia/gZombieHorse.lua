local unitName = "gzombiehorse"

local unitDef = {
name = "zombiehorse",
Description = "",
objectName = "jMedZombieHorse.s3o",
script = "gzombiehorsescript.lua",
buildPic = "placeholder.png",
--cost
buildCostMetal = 350,
buildCostEnergy = 150,
buildTime = 15,
--Health
maxDamage = 50,
idleAutoHeal = 2,
--Movement
Acceleration = 3,
BrakeRate = 1,
FootprintX = 1,
FootprintZ = 1,
MaxSlope = 15,
MaxVelocity = 2.4,
MaxWaterDepth = 2000,
MovementClass = "Default2x2",
TurnRate = 450,
mass=10,


sightDistance = 500,
upright=false,
Builder = false,
CanMove = true,
CanPatrol = false,
CanStop = true,
LeaveTracks = false, 

Category = [[LAND]],
  customParams = {},
 sfxtypes = {
    explosiongenerators = {
		   "custom:bloodspray",
	
						  },
	
				},



				
		
}

return lowerkeys({ [unitName] = unitDef })



