local unitName = "coverworldgate"

local unitDef = {
name = "Reinforcement Gate:",
Description = "Autospawns expensive troops and sends them on missions",
objectName = "cOverWorldTeleport.s3o",
script = "creinforcement.lua",
buildPic = "portals.dds",
--cost
buildCostMetal = 1950,
buildCostEnergy = 1750,
buildTime = 55,
--Health
maxDamage = 950,
mass=1024,
idleAutoHeal = 25,
idletime=3000,
--Movement
FootprintX = 6,
FootprintZ = 6,

--MaxVelocity = 0.5,
MaxWaterDepth =0,

sightDistance = 600,
nanocolor=[[0 0.9 0.9]],

CanAttack = false,
CanGuard = false,

levelGround            = true,
 corpse             = "bgcorpse",
 	explodeAs="cArtDM",
	selfDestructAs="cArtDM", 

  maxSlope               = 255,
CanMove = false,
CanPatrol = false,
CanStop = false,

	  customParams = {},
 sfxtypes = {
    explosiongenerators = {
						"custom:portable",
						  },
	
				},
				
		
	
	
Category=[[LAND BUILDING]],	


}

return lowerkeys({ [unitName] = unitDef })