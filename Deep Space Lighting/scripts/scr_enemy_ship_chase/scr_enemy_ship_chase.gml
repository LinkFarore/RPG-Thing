/// @description scr_ship_chase
function scr_enemy_ship_chase() 
{

// Set the friction to 0
friction = 0;

// Move towards the target if it exists
if (instance_exists(foe)) 
{
	//Turning
	var pd = point_direction(x, y, foe.x, foe.y);
	var dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd),4) * sign(dd);
    
	// Attack the foe when we reach it
	if (distance_to_point(foe.x, foe.y) <= attack_distance) 
	{
	    state = "attack";
	} 
	else 
	{
	    if (distance_to_point(foe.x, foe.y) > chase_distance) or foe.cloak == true
	    {
	        state = "idle";
	    } 
	    else 
	    {
	        motion_add(image_angle, acc);//point_direction(x, y, foe.x, foe.y)
	        part_type_direction(global.pt_enemy_exhaust,image_angle-180-18,image_angle-180+18,0,0);
	        part_particles_create(global.ps,x,y,global.pt_enemy_exhaust,3);
	    }
	}
}

// Don't go to fast
if (speed > spd) speed = spd;

}
