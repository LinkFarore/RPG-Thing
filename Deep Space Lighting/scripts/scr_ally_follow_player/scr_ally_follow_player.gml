/// @description scr_ship_chase
function scr_ally_follow_player() 
{

if state == "chase" || state == "attack"
{
	exit;	
}

// Set the friction to 0
friction = 0;

// Move towards the target if it exists

if (instance_exists(object_follow)) 
{
	//Turning
	var pd = point_direction(x, y, object_follow.x, object_follow.y);
	var dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd),8) * sign(dd);
    
	// Switch back to idle when close to player
	if (distance_to_point(object_follow.x, object_follow.y) <= attack_distance) 
	{
	    state = "idle";
	} 
	else 
	{
	    motion_add(image_angle, acc);//point_direction(x, y, foe.x, foe.y)
	    part_type_direction(global.pt_ally_exhaust,image_angle-180-18,image_angle-180+18,0,0);
	    part_particles_create(global.ps,x,y,global.pt_ally_exhaust,3);
	}
}

// Don't go to fast
if (speed > spd) speed = spd;

}