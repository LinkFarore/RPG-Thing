/// @description  Control the the states
event_inherited();

//Turning
var pd = dir;
var dd = angle_difference(direction, pd);
direction -= min(abs(dd),spd/6) * sign(dd);

motion_add(direction,spd);

if speed > spd
{
    speed = spd;
}

if (instance_exists(par_player)) {
    foe = instance_nearest(x, y, par_player)
} else {
    foe = -1;
}

if (state == "attack") 
{
    scr_boss_attack();
} 
 
if (state == "idle") 
{
    scr_boss_idle();
}

// Face the direction you are moving
image_angle = direction;

/// Check for death
if (hp <= 0) 
{
scr_enemy_death(0,1,0,1);
}

