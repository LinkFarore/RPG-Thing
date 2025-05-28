image_speed = 0;
image_index = 0;

depth = -10000;

hull_type = 0;
engine_type = 0;
weapon_type = 0;

part_type = "Default2";

if instance_exists(obj_button)
{
	with(obj_button)
	{
		instance_destroy();	
	}
}