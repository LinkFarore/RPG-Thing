function scr_level_up_minus()
{
	switch (mpos)
	{
	    case 0://minus the assigned temp points for the attack power of the player
	    {
	        if player_atk_point_temp >= 1
	        {
	            player_atk_point_temp -= 1;
	            level_point += 1;
				assigned_point -= 1;
				audio_play_sound(snd_menu_push,0,false);
	        }
	        break;
	    }
    
	    case 1://minus the assigned temp points for the max HP of the player
	    {
	        if player_maxhp_point_temp >= 1
	        {
	            player_maxhp_point_temp -= 1;
	            level_point += 1;
				assigned_point -= 1;
				audio_play_sound(snd_menu_push,0,false);
	        }
	        break;
	    }
    
    
	    case 2://minus the assigned temp points for the magic of the player
	    {
	        if player_magic_point_temp >= 1
	        {
	            player_magic_point_temp -= 1;
	            level_point += 1;
				assigned_point -= 1;
				audio_play_sound(snd_menu_push,0,false);
	        }
	        break;
	    }
    
	    case 3://minus the assigned temp points for the intellect of the player
	    {
	        if player_intellect_point_temp >= 1
	        {
	            player_intellect_point_temp -= 1;
	            level_point += 1;
				assigned_point -= 1;
				audio_play_sound(snd_menu_push,0,false);
	        }
	        break;
	    }
    
	    case 4://minus the assigned temp points for the luck of the player
	    {
	        if player_luck_point_temp >= 1
	        {
	            player_luck_point_temp -= 1;
	            level_point += 1;
				assigned_point -= 1;
				audio_play_sound(snd_menu_push,0,false);
	        }
	        break;
	    }
	    default: break;
	}
}