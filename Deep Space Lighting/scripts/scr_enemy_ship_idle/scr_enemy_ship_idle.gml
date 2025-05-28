/// @description scr_enemy_ship_idle
function scr_enemy_ship_idle() 
{

// Set some friction
friction = .5;


//Turning
if alarm[4] == -1
{
	var turning = choose(-1,1);
	
	switch (turning)
	{
		case -1:
		    direction -= irandom(180)+image_angle;
		break;

		case 1:
		    direction += irandom(180)+image_angle;
		break;
	}
	
	alarm[4] = room_speed*irandom_range(4,7);
}

var dd = angle_difference(image_angle, direction);
image_angle -= min(abs(dd),2) * sign(dd);
motion_add(direction,spd);

if speed > spd
{
	speed = spd;
}

//Create particle trail
part_type_direction(global.pt_enemy_exhaust,image_angle-180-18,image_angle-180+18,0,0);
part_particles_create(global.ps,x,y,global.pt_enemy_exhaust,3);

if (foe != -1 && instance_exists(foe)) 
{
	if (distance_to_point(foe.x, foe.y) < chase_distance) && foe.cloak == false
	{
	    state = "chase";
	}
}
	
}
