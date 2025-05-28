if hurt = true || stun = true
{exit}

//left
 if eneDir = 0  { 
      hsp = -eneSpeed ;
      image_xscale = -1 ;
 }
 
//right
 if eneDir = 1  {
      hsp = eneSpeed ;
      image_xscale = 1 ;
 }

//gravity
vsp += grav;

//vertical Collision / landing
if place_meeting(x,y+vsp,obj_wall) {
    while !place_meeting(x,y+sign(vsp),obj_wall) y += sign(vsp) ;
    vsp = 0 ;
    grounded = true ;
} else {
    grounded = false }

// jump
if can_jump == true
{
    if eneJump && grounded { vsp = -leap }
}

//Jump & horizontal collision
if place_meeting(x+hsp,y,obj_wall) {
    eneJump = true; 
    alarm[0] = 5;
    while !place_meeting(x+sign(hsp),y,obj_wall) x += sign(hsp);
    hsp = 0 ;
}

//input movement
x += hsp ;
y += vsp ; 

// turn around at tall object
if eneDir = 0 && place_meeting(x-8,y,obj_wall) && place_meeting(x-8,y-grid,obj_wall) { eneDir = 1 }
if eneDir = 1 && place_meeting(x+8,y,obj_wall) && place_meeting(x+8,y-grid,obj_wall) { eneDir = 0 }

if eneDir = 0 && place_meeting(x,y,obj_player) && place_meeting(x,y-grid,obj_player) { eneDir = 1 }
if eneDir = 1 && place_meeting(x,y,obj_player) && place_meeting(x,y-grid,obj_player) { eneDir = 0 }

if eneDir = 0 && place_meeting(x-8,y,par_sword) && place_meeting(x-8,y-grid,par_sword) { eneDir = 1 }
if eneDir = 1 && place_meeting(x+8,y,par_sword) && place_meeting(x+8,y-grid,par_sword) { eneDir = 0 }

//if eneDir = 0 && place_meeting(x-8,y,par_sword) && place_meeting(x-8,y-grid,obj_warp) { eneDir = 1 }
//if eneDir = 1 && place_meeting(x+8,y,par_sword) && place_meeting(x+8,y-grid,obj_warp) { eneDir = 0 }


//Patrol
if patrol { 
    eneSpeed = dSpeed
    if x < leftBound  { eneDir = 1 }
    if x > rightBound { eneDir = 0 }
}

//Sight
if instance_exists(obj_player)
{
blocked = collision_line(x,y,obj_player.x,obj_player.y,obj_wall,0,1);
}

// movement in relation to the player
if instance_exists(obj_player)
{
    if eneDir == 0 && obj_player.x < x { towards = true } 
    if eneDir == 0 && obj_player.x > x { towards = false } 
    if eneDir == 1 && obj_player.x > x { towards = true } 
    if eneDir == 1 && obj_player.x < x { towards = false } 
}

//is player visible
if blocked < 0 && towards { 
    patrol = false ;
    follow = true ;
}

if blocked > 0  { 
    follow = false; 
    patrol = true ;
}

//Follow
if follow {
    eneSpeed = dSpeed * 2
    //reaction time
    if checkPos 
    {
        if instance_exists(obj_player)
        {
            if obj_player.x < x + grid { eneDir = 0 }
            if obj_player.x > x - grid { eneDir = 1 }
            checkPos = false;
            alarm[1] = random_range(rL,rH);
        }
    }
}

