local unitName = "jdevoureregg"

local unitDef = {
name = "Egg",
Description = "Devours a nearby Corpse to grow a Eggball",

	objectName = "skinEggNogg.s3o",
	script = "jdevourereggskript.lua",
	buildPic = "skinfantry.png",


	RadarDistance = 0,
	SightDistance = 400,	
	Upright = 1,	
	levelground = 0,



	--cost
	buildCostMetal = 100,
	buildCostEnergy = 12,
	buildTime = 5,
	--Health
	maxDamage = 150,
	idleAutoHeal = 0,
	--Movement
	  selfDestructAs ="defaultweapon",
	  explodeAs = "defaultweapon",


	FootprintX = 1,
	FootprintZ = 1,
	MaxSlope = 20,

	MaxWaterDepth = 90,
	MovementClass = "Default2x2",


	radardistance=150,
	sightDistance = 700,

	EnergyStorage = 200,
		EnergyUse = 15,
		MetalStorage = 200,
		EnergyMake = 75, 
		MakesMetal = 5, 
		MetalMake = 0,	
	nanocolor=[[1 0.2 0.05]],

	CanAttack = false,
	CanGuard = false,
	CanMove = false,
	CanPatrol = false,
	CanStop = false,
	LeaveTracks = false, 

	Builder = false,
	ShowNanoSpray = false,
	CanBeAssisted = false,
	CanReclaim=false,	
	workerTime = 1.00,
	buildDistance = 200,
	terraformSpeed = 50,

	-- Pathfinding and related

	-- Building	

	  customParams = {},
	 sfxtypes = {
		explosiongenerators = {
		 "custom:fruitwater",

		
	  
    },
	},

Category = [[LAND]],
}

return lowerkeys({ [unitName] = unitDef })