---http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "greenseer"
local weaponDef = {
	 

      name                    = [[Seed]],
      areaOfEffect            = 8,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting      = 100.0,

      damage                  = {
        default = 220,
		planes  = 350,
        subs    = 22.5

      },

      explosionGenerator      = "custom:missile_explosion",
      fireStarter             = 70,
      flightTime              = 25,
      guidance                = true,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      lineOfSight             = true,
      metalpershot            = 0.1,
     model="jsempresequoiaprojectile.s3o",
      noSelfDamage            = true,
      range                   = 850,
      reloadtime              = 1.2,
      renderType              = 1,
      selfprop                = true,
      smokedelay              = [[0.1]],
      smokeTrail              = true,
      --soundHit                = [[jresistance/rocketfire1]],
      --soundStart              = [[jresistance/rockimpact]],
      startsmoke              = [[1]],
      startVelocity           = 22,
      tolerance               = 10000,
      tracks                  = true,
      turnRate                = 60000,
      turret                  = true,
      weaponAcceleration      = 11,
      weaponTimer             = 5,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 450,
    

	 
		  }
		
		
		
return lowerkeys({[weaponName] = weaponDef})