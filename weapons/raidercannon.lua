--- http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "raidercannon"
local weaponDef = {
    name = "raidercannon",
    weaponType = [[Cannon]],
    --damage
    damage = {
        default = 150,
        HeavyArmor = 120,
    },
    areaOfEffect = 8,
    --physics
    weaponVelocity = 900,
    reloadtime = 1.2,
    range = 450,
    sprayAngle = 300,
    tolerance = 8000,
    lineOfSight = true,
    turret = true,
    craterMult = 0,
    explosionGenerator = "custom:missile_explosion",
    soundHit = "sounds/cRes/resplasma.wav",
    soundStart = "sounds/cRes/plasmafire.ogg",

    --apperance
    rgbColor = [[0.1 0.86 0.49]],
    size = 4,
}

return lowerkeys({ [weaponName] = weaponDef })