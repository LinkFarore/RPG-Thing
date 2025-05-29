action_inherited();
grid= 16;

hp = 2;
weakness = GenerateWeaknesses(["ice"]);
inv = false;
hurt = false;
stun = false;
crit = false;
can_jump = true;
image_speed = 0.1;

blocked = noone;

/// Customize ///

//distance from spawn point in Patrol
lB = grid*2 ;
rB = grid*1.5;

//Speed
dSpeed = .25;

//jump speed 
leap = 4;

//weight
grav= 0.5;

//Reaction Time when following player
rL = 25; //range low
rH = 45; //range high

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

