local unitName = "jtransportedeggstack"
local unitDef = {
	
	name = "Eggstack",
	Description = "gives birth to worker Drones",
	TEDClass = "PLANT",
	
	objectName = "placeholder.s3o",
	script = "jtransportedeggstackscript.lua",
	buildPic = "placeholderj.png",
	
	--cost
	buildCostMetal = 200,
	buildCostEnergy = 50,
	buildTime = 12,
	CanReclaim=false,
	buildDistance = 200,
	onoffable=true,
	acitvateonstart=false,
	--Health
	maxDamage = 1200,
	idleAutoHeal = 3,
	--Movement
	MovementClass = "Default2x2",
	FootprintX = 1,
	FootprintZ = 1,
	MaxSlope = 5,
	--MaxVelocity = 0.5,
	MaxWaterDepth =0,
	TurnRate = 200,
	isMetalExtractor = false,
	sightDistance = 300,
	
	reclaimable=false,
	Builder = true,
	CanAttack = true,
	CanGuard= true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,
	
	YardMap ="o",
	corpse = "bgcorpse",
	-- Building	
	
	ShowNanoSpray = true,
	CanBeAssisted = true,	
	workerTime = 0.54,
	buildoptions = 
	{
		"jconroach","conbigfoot","jstealthdrone"
	},
	
	
	usebuildinggrounddecal = false,
	
	
	Category = [[LAND BUILDING]],
	
	EnergyStorage = 0,
	EnergyUse = 75,
	MetalStorage = 0,
	EnergyMake = 0, 
	MakesMetal = 16, 
	MetalMake = 0,	
	acceleration = 0,
	
	nanocolor=[[1 0.2 0.05]],
	
	levelGround = false,
	mass = 9990,
	
	maxSlope = 255,
	
	
	noAutoFire = false,
	
	smoothAnim = true,
	-- TEDClass = [[METAL]],
	
	customParams = {},
	sfxtypes = {
		explosiongenerators = {
			"custom:dirt", 
			"custom:bloodspray",
			"custom:greenlight",
			"custom:fruitwater"				
		},
		
	},
	
	
	
	
	
}

return lowerkeys({ [unitName] = unitDef })