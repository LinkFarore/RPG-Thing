/// @description  Control the the states
event_inherited();

if distance_to_object(obj_player) >= chunk_size*2
{ 
	instance_destroy();
}

if (stun)
{
    image_index = 0;
    part_particles_create(global.ps,x,y,global.pt_spark,2);
    if alarm[5] = -1
    {
        alarm[5] = room_speed*3.5;
    }
    exit;
}

if (instance_exists(obj_ally)) && distance_to_object(obj_ally) <= chase_distance
{
    foe = instance_nearest(x, y, obj_ally);
}
else
if (instance_exists(par_player))
{
	foe = instance_nearest(x, y, par_player);		
}
else 
{
    foe = -1;
}

if (state == "chase") {
	scr_enemy_ship_chase();
} else if (state == "attack") {
	scr_enemy_ship_attack();
} else if (state == "idle") {
	scr_enemy_ship_idle();
}

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