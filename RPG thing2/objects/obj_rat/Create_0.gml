action_inherited();
grid= 16;

xp_worth = 1;
hp = 1;
inv = false;
hurt = false;
stun = false;
idle = false;
spr_idle = spr_rat_idle;
spr_walk = spr_rat_walk;
can_jump = true;
image_speed = .35;

blocked = noone;

/// Customize ///

//distance from spawn point in Patrol
lB = grid*2 ;
rB = grid*1.5;

//Speed
dSpeed = 1;

//jump speed 
leap = 4;

//weight
grav= 0.5;

//Reaction Time when following player
rL = 25; //range low
rH = 45; //range high

//Initial Direction  0 = left; 1 = right
eneDir = 1;

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



