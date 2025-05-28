if instance_exists(obj_planet) && distance_to_object(obj_planet) < 500
{
	parent_tethered = instance_nearest(x,y, obj_planet);
	tethered = true;
	tether_distance = distance_to_object(parent_tethered);
	show_debug_message("Alarm Event Triggered");
}