function scr_level_up_menu() {
	switch (mpos)
	{
		case 6://Confirm points
		{
			if player_atk_point_temp >= 1
			{
				player_atk += player_atk_point_temp*1;
				player_atk_point += player_atk_point_temp;	
			}
			
			if player_maxhp_point_temp >= 1
			{
				player_maxhp += player_maxhp_point_temp*2;
				player_maxhp_point += player_maxhp_point_temp;
				player_hp = player_maxhp;
			}
			
			if player_magic_point_temp >= 1
			{
				maxmagic += player_magic_point_temp*2;
				player_magic_point += player_magic_point_temp;
				magic = maxmagic;	
			}
			
			if player_intellect_point_temp >= 1
			{
				player_intellect_point += player_intellect_point_temp;	
			}
			
			if player_luck_point_temp >= 1
			{
				player_luck_point += player_luck_point_temp;
			}
			
			player_atk_point_temp = 0;
            player_maxhp_point_temp = 0;
            player_magic_point_temp = 0;
            player_intellect_point_temp =0;
            player_luck_point_temp = 0;
            assigned_point = 0;
			
			audio_play_sound(snd_menu_push,0,false);
			break;
		}
		
	    case 7://Reset Points
        {
            level_point += assigned_point;
            player_atk_point_temp = 0;
            player_maxhp_point_temp = 0;
            player_magic_point_temp = 0;
            player_intellect_point_temp =0;
            player_luck_point_temp = 0;
            assigned_point = 0;
            audio_play_sound(snd_menu_close,0,false);
            break;
        }

        case 8://Exit
        {
            level_up = false;
            level_point += assigned_point;
            player_atk_point_temp = 0;
            player_maxhp_point_temp = 0;
            player_magic_point_temp = 0;
            player_intellect_point_temp =0;
            player_luck_point_temp = 0;
            assigned_point = 0;
            with(obj_levelup_menu)
            {
                instance_destroy();
            }
            instance_activate_all();
            audio_play_sound(snd_menu_close,0,false);
            break;
        }
        default: break;
	}
}
