if instance_exists(obj_player)
{
	obj_player.current_state = "building";
}

if !instance_exists(obj_build_cursor)
{
	if instance_exists(obj_mouse)
	{
		with (obj_mouse)
		{
			instance_destroy();	
		}
	}
	var cursor = instance_create(x,y,obj_build_cursor);
	cursor.object = 0;
}
else
{
	with(obj_build_cursor)
	object = 0;
}

if instance_exists(par_build_button)
{
    with(par_build_button)
    {
        instance_destroy();
    }
}