function scr_level_up_minus() {
	switch (mpos)
	{
	    case 0://minus assigned attack power
	    {
	        if weapon_str_point_temp >= 1
	        {
	            weapon_str_point_temp -= 1;
	            levelpoint += 1;
				assigned_point -= 1;
	        }
	        break;
	    }
    
	    case 1://Increase the Attack Speed of the player
	    {
	        if weapon_spd_point_temp >= 1
	        {
	            weapon_spd_point_temp -= 1;
	            levelpoint += 1;
				assigned_point -= 1;
	        }
	        break;
	    }
    
	    case 2://Increase the Max HP of the player
	    {
	        if hull_point_temp >= 1
	        {
	            hull_point_temp -= 1;
	            levelpoint += 1;
				assigned_point -= 1;
	        }
	        break;
	    }
    
	    case 3://Increase the Defense of the player
	    {
	        if def_point_temp >= 1
	        {
	            def_point_temp -= 1;
	            levelpoint += 1;
				assigned_point -= 1;
	        }
	        break;
	    }
    
	    case 4://Increase the Speed
	    {
	        if engine_point_temp >= 1
	        {
	            engine_point_temp -= 1;
	            levelpoint += 1;
				assigned_point -= 1;
	        }
	        break;
	    }
    
	    case 5://Increase the Max Energy
	    {
	        if energy_point_temp >= 1
	        {
	            energy_point_temp -= 1;
	            levelpoint += 1;
				assigned_point -= 1;
	        }
	        break;
	    }
		
		case 6://Reset Points
	    {
	        break;
	    }
    
	    case 7://Exit
	    {
	        break;
	    }
	    default: break;
	}

}
