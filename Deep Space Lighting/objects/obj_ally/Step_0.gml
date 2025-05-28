/// @description  Control the the states
event_inherited();

if !patrol
{
	object_follow = instance_nearest(x,y,obj_player);	
}

if stun_blast && !stun 
{
    if distance_to_object(obj_player) <= 180
    {
        stun = true;
    }
}

if (stun)
{
    image_index = 0;
    part_particles_create(global.ps,x,y,global.pt_spark,2);
    if alarm[5] = -1
    {
        alarm[5] = 120;
    }
    exit;
}

if (instance_exists(obj_enemy_ship)) && foe != obj_player{
    foe = instance_nearest(x, y, obj_enemy_ship)
} else if foe != -1
{foe = foe;}
else
{foe = -1;}


if (state == "chase") {
	scr_ally_ship_chase();
} else if (state == "attack") {
	scr_ally_ship_attack();
} else if (state == "idle") {
	scr_ally_ship_idle();
}


if distance_to_object(object_follow) >= 256
{
    scr_ally_follow_player();
}

// Face the direction you are moving
image_angle = direction;

//change sprite based on state
if state == "attack" or state == "chase"
{
    image_index = 1;
}
else
{
    image_index = 0;
}

/// Check for death
if (hp <= 0) 
{
scr_enemy_death(0,1,0,1);
}

if (crit) && alarm[6] == -1
{
    alarm[6] = 120;
}