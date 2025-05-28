function scr_level_up_plus()
{
	switch (mpos)
	{
	    case 0://add to the assigned temp points for the attack power of the player
	    {
			if level_point > 0
			{
		        if player_atk_point + player_atk_point_temp < 50
		        {
		            player_atk_point_temp += 1;
		            level_point -= 1;
					assigned_point += 1;
		        }
				else
		        {
					level_error_1 = true;// You are at the max level for this stat
		            level_error_2 = false;  
					audio_play_sound(snd_error,0,false);
		        }
			}
			else
			{
				level_error_1 = false;
				level_error_2 = true;// You Don't have enough level points
				audio_play_sound(snd_error,0,false);
			}
	        break;
	    }
    
	    case 1://add to the assigned temp points for the max HP of the player
	    {
			if level_point > 0
			{
		        if player_maxhp_point + player_maxhp_point_temp < 50
		        {
		            player_maxhp_point_temp += 1;
		            level_point -= 1;
					assigned_point += 1;
		        }
				else
		        {
					level_error_1 = true;// You are at the max level for this stat
		            level_error_2 = false;  
					audio_play_sound(snd_error,0,false);
		        }
			}
			else
			{
				level_error_1 = false;
				level_error_2 = true;// You Don't have enough level points
				audio_play_sound(snd_error,0,false);
			}
	        break;
	    }
    
    
	    case 2://add to the assigned temp points for the attack power of the player
	    {
			if level_point > 0
			{
		        if player_magic_point + player_magic_point_temp < 50
		        {
		            player_magic_point_temp += 1;
		            level_point -= 1;
					assigned_point += 1;
		        }
				else
		        {
					level_error_1 = true;// You are at the max level for this stat
		            level_error_2 = false;  
					audio_play_sound(snd_error,0,false);
		        }
			}
			else
			{
				level_error_1 = false;
				level_error_2 = true;// You Don't have enough level points
				audio_play_sound(snd_error,0,false);
			}
	        break;
	    }
    
	    case 3://add to the assigned temp points for the attack power of the player
	    {
			if level_point > 0
			{
		        if player_intellect_point + player_intellect_point_temp < 50
		        {
		            player_intellect_point_temp += 1;
		            level_point -= 1;
					assigned_point += 1;
		        }
				else
		        {
					level_error_1 = true;// You are at the max level for this stat
		            level_error_2 = false;  
					audio_play_sound(snd_error,0,false);
		        }
			}
			else
			{
				level_error_1 = false;
				level_error_2 = true;// You Don't have enough level points
				audio_play_sound(snd_error,0,false);
			}
	        break;
	    }
    
	    case 4://add to the assigned temp points for the attack power of the player
	    {
			if level_point > 0
			{
		        if player_luck_point + player_luck_point_temp < 50
		        {
		            player_luck_point_temp += 1;
		            level_point -= 1;
					assigned_point += 1;
		        }
				else
		        {
					level_error_1 = true;// You are at the max level for this stat
		            level_error_2 = false;  
					audio_play_sound(snd_error,0,false);
		        }
			}
			else
			{
				level_error_1 = false;
				level_error_2 = true;// You Don't have enough level points
				audio_play_sound(snd_error,0,false);
			}
	        break;
	    }
	    default: break;
	}
}