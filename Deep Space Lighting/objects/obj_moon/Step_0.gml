/// @description Insert description here

if place_meeting(x,y,obj_mouse)
{
	draw_name = true;
}
else
{
	draw_name = false;	
}

// Define acceleration and smoothing factors
var acceleration = .1; // Adjust this value to control acceleration
var smoothing = .1; // Adjust this value for smoothing of direction changes

if (tethered && instance_exists(parent_tethered))
{
    var target_direction;
    var target_speed = revolve_speed + parent_tethered.revolve_speed / 4;

    // Determine the target direction based on distance
    if (distance_to_object(parent_tethered) > tether_distance)
    {
        target_direction = point_direction(x, y, parent_tethered.x, parent_tethered.y);
    }
    else
    {
        target_direction = point_direction(x, y, parent_tethered.x, parent_tethered.y) + revolve_direction;
    }

    // Smoothly update direction
    //direction = lerp(direction, target_direction, smoothing);

    // Gradually adjust speed towards the target speed
    //speed = lerp(speed, target_speed, acceleration);
	
	motion_set(target_direction,target_speed);
}
else
{
    // If not tethered or parent doesn't exist, slow down to a stop
    speed = lerp(speed, 0, acceleration);
}

if (tethered) && instance_exists(parent_tethered)
{
	if distance_to_object(parent_tethered) > tether_distance
	{
		direction = point_direction(x,y,parent_tethered.x,parent_tethered.y);
		motion_add(direction, revolve_speed+parent_tethered.revolve_speed/4);
	}
	else
	{
		direction = point_direction(x,y,parent_tethered.x,parent_tethered.y)+revolve_direction;
		motion_add(direction,revolve_speed+parent_tethered.revolve_speed/4);
	}
}

if instance_exists(parent_tethered) && speed > revolve_speed+parent_tethered.revolve_speed
{
	speed = revolve_speed+parent_tethered.revolve_speed;
}
else
{
	speed = revolve_speed;	
}