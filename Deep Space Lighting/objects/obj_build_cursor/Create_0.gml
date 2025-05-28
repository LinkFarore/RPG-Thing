image_speed = 0;
image_index = 0;
depth = -100000
can_build = true;
object = 0;

if instance_exists(obj_mouse)
{
	with(obj_mouse_cursor)
	{
		instance_destroy();	
	}
}