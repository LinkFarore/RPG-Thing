function scr_level_up_menu() {
	switch (mpos)
	{
	    case 0://Increase the Attack of the player
	    {
	        break;
	    }
    
	    case 1://Increase the Attack Speed of the player
	    {
	        break;
	    }
    
    
	    case 2://Increase the Max HP of the player
	    {
	        break;
	    }
    
	    case 3://Increase the Defense of the player
	    {
	        break;
	    }
    
	    case 4://Increase the Speed
	    {
	        break;
	    }
    
	    case 5://Increase the Max Energy
	    {
	        break;
	    }
		
		case 6://Reset Points
	    {
			levelpoint += assigned_point;
			weapon_spd_point_temp = 0;
			weapon_str_point_temp = 0;
			def_point_temp = 0;
			energy_point_temp = 0;
			engine_point_temp = 0;
			hull_point_temp = 0;
			assigned_point = 0;
	        break;
	    }
    
	    case 7://Exit
	    {
	        selected = false;
	        finish = true;
	        shop = false;
			pause = 0;
			levelpoint += assigned_point;
			weapon_spd_point_temp = 0;
			weapon_str_point_temp = 0;
			def_point_temp = 0;
			energy_point_temp = 0;
			engine_point_temp = 0;
			hull_point_temp = 0;
			assigned_point = 0;
	        instance_activate_all();
	        scr_save();
	        with(obj_levelup_menu)
	        {
	            instance_destroy();
	        }
	        audio_play_sound(snd_select2,0,false);
	        break;
	    }
	    default: break;
	}
}
