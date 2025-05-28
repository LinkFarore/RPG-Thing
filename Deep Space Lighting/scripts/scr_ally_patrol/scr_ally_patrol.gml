/// @description scr_ship_chase
function scr_ally_patrol() 
{

if state == "chase" || state == "attack"
{
	exit;	
}

// Set the friction to 0
friction = 0;

// Move towards the point of origin
if (to_origin) 
{
	//Turning
	var pd = point_direction(x, y, origin_x, origin_y);
	var dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd),8) * sign(dd);
    
	// Switch back to idle when close to player
	if (distance_to_point(origin_x, origin_y) <= attack_distance) 
	{
	    to_origin = false;
		to_patrol = true;
	} 
	else 
	{
	    motion_add(image_angle, acc);//point_direction(x, y, foe.x, foe.y)
	    part_type_direction(global.pt_ally_exhaust,image_angle-180-18,image_angle-180+18,0,0);
	    part_particles_create(global.ps,x,y,global.pt_ally_exhaust,3);
	}
}

// Move towards the point of patrol
if (to_patrol) 
{
	//Turning
	var pd = point_direction(x, y, patrol_x, patrol_y);
	var dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd),8) * sign(dd);
    
	// Switch back to idle when close to player
	if (distance_to_point(patrol_x, patrol_y) <= attack_distance) 
	{
	    to_origin = true;
		to_patrol = false;
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