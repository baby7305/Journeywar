local weaponName="cimpulstower"
local weaponDef={
name="Impulse Amplifier",

        accuracy                = 512,
        areaOfEffect            = 5,
   
        coreThickness           = 0.25,
        craterBoost             = 0,
        craterMult              = 0,

       

        damage                  = {
                default = 135,
                planes  = 135,
                subs    = 1.75,
        },

        duration                = 0.3,
        dynDamageExp            = 1,
        dynDamageInverted       = false,
 
        fallOffRate             = 1,
        fireStarter             = 100,
        heightMod               = 1,
        impactOnly              = true,
        impulseBoost            = 6,
        impulseFactor           = 12,
        interceptedByShieldType = 1,
        lodDistance             = 10000,
        proximityPriority       = 4,
        range                   = 980,
        reloadtime              = 0.42,
        rgbColor                = [[0 1 0.9]],
        rgbColor2               = [[0.1 1 1]],
    
        targetMoveError         = 0.25,
        thickness               = 0.9,
        tolerance               = 5000,
        turret                  = true,
        weaponType              = [[LaserCannon]],
        weaponVelocity          = 500,
		
		
}

return lowerkeys ({[weaponName]=weaponDef})