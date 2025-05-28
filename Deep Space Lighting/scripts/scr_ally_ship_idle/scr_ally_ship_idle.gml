/// @description scr_enemy_ship_idle
function scr_ally_ship_idle() 
{

// Set some friction
friction = .5;

if (foe != -1 && instance_exists(foe)) 
{
	if (distance_to_point(foe.x, foe.y) < chase_distance) && foe.cloak == false
	{
	    state = "chase";
	}
}

motion_add(direction,spd);

if speed > spd
{
	speed = spd;
}

part_type_direction(global.pt_ally_exhaust,image_angle-180-18,image_angle-180+18,0,0);
part_particles_create(global.ps,x,y,global.pt_ally_exhaust,3);

}
