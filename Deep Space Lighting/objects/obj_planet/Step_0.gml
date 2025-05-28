/// @description Insert description here

if place_meeting(x,y,obj_mouse)
{
	draw_name = true;
}
else
{
	draw_name = false;	
}


if (tethered) && instance_exists(parent_tethered)
{
	if distance_to_object(parent_tethered) > tether_distance
	{
		direction = point_direction(x,y,parent_tethered.x,parent_tethered.y);
		motion_set(direction, revolve_speed);
	}
	else
	{
		direction = point_direction(x,y,parent_tethered.x,parent_tethered.y)+revolve_direction;
		motion_set(direction,revolve_speed);
	}
}