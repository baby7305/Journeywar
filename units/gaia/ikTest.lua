local unitName = "iktest"

local unitDef = {
	name = "inverse kinematik Testunit	",
	Description = "Testing the IK all day long",
	objectName = "iktest.s3o",
	script = "dbg_iktestscript.lua",
	buildPic = "placeholder.png",

	--cost
	buildCostMetal = 15,
	buildCostEnergy = 1,
	buildTime = 1,
	--Health
	maxDamage = 6660,
	idleAutoHeal = 15,
	autoheal=10,
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
	
	corpse = "lavafeature",
	
	
	
	customParams = {},
	sfxtypes = {
		explosiongenerators = {
			"custom:csuborbimpact",
			"custom:chiexploammo",
			"custom:foorestfire",
			
		},
		
	},
	

	Category = [[NOTARGET LAND]],
	
}

return lowerkeys({ [unitName] = unitDef })