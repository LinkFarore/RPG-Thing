/// @description scr_enemy_ship_idle
function scr_fuel_ship_flee() {

	// Set some friction
	friction = 0;

	if (foe != -1 && instance_exists(foe)) {
	    if (distance_to_point(foe.x, foe.y) > 320) {
	        state = "idle";
	    }
	}
	
	// Move towards the target if it exists
	if (instance_exists(foe)) 
	{
	    //Turning
	    var pd = point_direction(foe.x, foe.y, x, y);
	    var dd = angle_difference(image_angle, pd);
	    image_angle -= min(abs(dd),4) * sign(dd);
	   
	    motion_add(image_angle, acc);
	    part_type_direction(global.pt_yellow_exhaust,image_angle-180-18,image_angle-180+18,0,0);
	    part_particles_create(global.ps,x,y,global.pt_yellow_exhaust,4);
	}

	// Don't go to fast
	if (speed > spd) speed = spd;

}