local unitName = "jvaryfoospear"
local unitDef = {
	name = "Ahab",
	Description = "From the bottom of hell i stab at thee",
	objectName = "varyspearproj.s3o",
	script = "varyfoospear_cript.lua",
	buildPic = "placeholderj.png",
	--cost
	buildCostMetal = 350,
	buildCostEnergy = 150,
	buildTime = 15,
	--Health
	maxDamage = 150,
	idleAutoHeal = 2,
	--Movement
	Acceleration = 3,
	BrakeRate = 0.3,
	FootprintX = 1,
	FootprintZ = 1,
	MaxSlope = 15,
	MaxVelocity = 1.4,
	MaxWaterDepth = 0,
	MovementClass = "Default2x2",
	TurnRate = 450,
	mass=1050,
	
	
	sightDistance = 500,
	upright=true,
	Builder = false,
	CanMove = true,
	CanPatrol = false,
	CanStop = true,
	LeaveTracks = false, 
	
	
	weapons = {
		[1]={name = "varyfoospear",
			onlyTargetCategory = [[ LAND ]],
		},
		
	},
	
	Category = [[LAND]],
	customParams = {},
	sfxtypes = {
		explosiongenerators = {
			"custom:bloodspray",
			
		},
		
	},
	
	
	
	
	
}

return lowerkeys({ [unitName] = unitDef })