local weaponName="ccatapult"
local weaponDef={
name="Catapult Weapon",
weaponType=[[Cannon]],
description="DarkMatter Singularity Catapult",
highTrajectory =1,


--

weapontimer=12,
--
--Physic/flight path
range=320,
reloadtime=1,
weaponVelocity=300,
startVelocity=250,
weaponAcceleration=200,
flightTime=7.5,
BurnBlow=0,
FixedLauncher=false,
dance=0,
wobble=0,
trajectoryheight=25.8,
accuracy = 4200,
tolerance=16000,
tracks=false,
Turnrate=16000,
collideFriendly=true,

----APPEARANCE
model="ccatapultproj.s3o",
smokeTrail=true,

CegTag="redstripe",

----TARGETING
turret=true,
--CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,

--explosionGenerator=	"custom:330rlexplode",	
--commandfire=true,

----DAMAGE
damage={
default=1,
},
areaOfEffect=3,
craterMult=0,

--?FIXME***
lineOfSight=false,


--sound

soundHit="cgatefortress/CatapultImpact.ogg",
soundStart="cgatefortress/catapultFire.ogg",

}

return lowerkeys ({[weaponName]=weaponDef})