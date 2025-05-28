event_inherited();
grid= 32;

/// Customize ///
//time between shots
t1 = 50;
t2 = 60;

//Max distance to attack from 
triggerDis = 164;

//distance from spawn point in Patrol
lB = grid*2 ;
rB = grid*1.5;

//Speed
dSpeed = 1;

//jump speed 
leap = 7;

//weight
grav= 0.6;

//
hp = 1;

//Reaction Time when following player
rL = 25; //range low
rH = 30; //range high

//Initial Direction  0 = left; 1 = right
eneDir = 1;


//////////////////////////
//movement
hsp = 0;
vsp = 0;
grounded = true;
eneJump = false ;
eneSpeed = dSpeed;

//Distance from spawn point
spawnPoint = x ;
leftBound = x - lB;
rightBound = x + rB;

//States
patrol = true;
follow = false;
checkPos = true;
shoot = true;
shooting = false;

sprite_shoot = spr_octorok_shoot;
sprite_idle = spr_octorok;