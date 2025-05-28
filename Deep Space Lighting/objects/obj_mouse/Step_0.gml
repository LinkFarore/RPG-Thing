x = mouse_x;
y = mouse_y;

if instance_exists(obj_player)
{
	switch(obj_player.current_state)
	{
		case "building":
		instance_destroy();
		break;
		
		case "combat": 
		image_index = 0;
		break;
		
		case "mining":
		image_index = 1;
		break;
		
		default: break;
	}
}