event_inherited();

if place_meeting(x,y,obj_mouse)
{
	image_index = 1;
	var push;
	push = max(mouse_check_button_pressed(mb_left),keyboard_check_pressed(vk_space),gamepad_button_check_pressed(0,gp_face1),0);
}
else
{
	image_index = 0;
	push = 0;
}

if part_type = "hull_button"
{
	if hull_type = hull_part
	{
		image_index = 2;	
	}
}

if part_type = "engine_button"
{
	if engine_type = engine_part
	{
		image_index = 2;	
	}
}

if part_type = "weapon_button"
{
	if weapon_type = weapon_part
	{
		image_index = 2;	
	}
}


if (push == 1)
{		
	switch (part_type)
	{
		case "hull_button":
		{   
			hull_part = hull_type;
			audio_play_sound(snd_select2,0,false);
		    break;
		}
		case "engine_button":
		{
			engine_part = engine_type;
			audio_play_sound(snd_select2,0,false);
		    break;
		}
		case "weapon_button":
		{
			weapon_part = weapon_type;
			audio_play_sound(snd_select2,0,false);
		    break;
		}
		default: break;
	}
}