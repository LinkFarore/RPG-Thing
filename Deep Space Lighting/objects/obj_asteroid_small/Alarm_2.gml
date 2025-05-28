if place_meeting(x,y,obj_asteroid_small)
{
	instance_destroy();
}

if instance_exists(obj_sun) && distance_to_object(obj_sun) < 5000
{
	parent_tethered = instance_nearest(x,y, obj_sun);
	tethered = true;
	tether_distance = distance_to_object(parent_tethered);	
}