x = mouse_x;
y = mouse_y;

if instance_exists(obj_player)
{
	switch(obj_player.current_state)
	{
		case "building":
		if !instance_exists(obj_button_create) || !instance_exists(par_build_button) 
		{
			if keyboard_check(ord("W"))
			{
				instance_create(mouse_x,mouse_y,obj_button_create);
				with obj_player
				{
					obj_player.current_state = "menu";	
				}
			}
		}
		//instance_destroy();
		break;
		
		case "combat": 
		image_index = 0;
		break;
		
		case "menu": 
		image_index = 0;
		break;
		
		case "mining":
		image_index = 1;
		break;
		
		default: break;
	}
}