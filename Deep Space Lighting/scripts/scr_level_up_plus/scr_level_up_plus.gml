function scr_level_up_plus() {
	switch (mpos)
	{
	    case 0://Increase the Attack of the player
	    {
	        if levelpoint > 0
	        {
	            if weapon_str_point + weapon_str_point_temp < 50
	            {
	                weapon_str_point_temp += 1;
	                levelpoint -= 1;
					assigned_point += 1;
	            }
	            else
	            {
	                level_error_3 = false;
	                level_error_2 = true;  // You are at the max level for this stat
	                level_error_1 = false;
	            }
	        }
	        else
	        {
	            level_error_1 = false;
	            level_error_2 = false; 
	            level_error_3 = true;  // you don't have enough level points
	        }
	        break;
	    }
    
	    case 1://Increase the Attack Speed of the player
	    {
	        if levelpoint > 0
	        {
	            if weapon_spd_point + weapon_spd_point_temp < 50
	            {
	                weapon_spd_point_temp += 1;
	                levelpoint -= 1;
					assigned_point += 1;
	            }
	            else
	            {
	                level_error_3 = false;
	                level_error_2 = true;
	                level_error_1 = false;
	            }
	        }
	        else
	        {
	            level_error_1 = false;
	            level_error_2 = false;
	            level_error_3 = true;
	        }
	        break;
	    }
    
    
	    case 2://Increase the Max HP of the player
	    {
	        if levelpoint > 0
	        {
	            if hull_point + hull_point_temp < 50
	            {
	                hull_point_temp += 1;
	                levelpoint -= 1;
					assigned_point += 1;
	            }
	            else
	            {
	                level_error_3 = false;
	                level_error_2 = true;
	                level_error_1 = false;
	            }
	        }
	        else
	        {
	            level_error_1 = false;
	            level_error_2 = false;
	            level_error_3 = true;
	        }
	        break;
	    }
    
	    case 3://Increase the Defense of the player
	    {
	        if levelpoint > 0
	        {
	            if def_point + def_point_temp < 50
	            {
					def_point_temp += 1;
	                levelpoint -= 1;
					assigned_point += 1;
	            }
	            else
	            {
	                level_error_3 = false;
	                level_error_2 = true;
	                level_error_1 = false;
	            }
	        }
	        else
	        {
	            level_error_1 = false;
	            level_error_2 = false;
	            level_error_3 = true;
	        }
	        break;
	    }
    
	    case 4://Increase the Speed
	    {
	        if levelpoint > 0
	        {
	            if engine_point + engine_point_temp < 50
	            {
	                engine_point_temp += 1;
	                levelpoint -= 1;
					assigned_point += 1;
	            }
	            else
	            {
	                level_error_3 = false;
	                level_error_2 = true;
	                level_error_1 = false;
	            }
	        }
	        else
	        {
	            level_error_1 = false;
	            level_error_2 = false;
	            level_error_3 = true;
	        }
	        break;
	    }
    
	    case 5://Increase the Max Energy
	    {
	        if levelpoint > 0
	        {
	            if energy_point + energy_point_temp < 50
	            {
	                energy_point_temp += 1;
	                levelpoint -= 1;
					assigned_point += 1;
	            }
	            else
	            {
	                level_error_3 = false;
	                level_error_2 = true;
	                level_error_1 = false;
	            }
	        }
	        else
	        {
	            level_error_1 = false;
	            level_error_2 = false;
	            level_error_3 = true;
	        }
	        break;
	    }
		
		case 6://Reset Points
	    {
	        break;
	    }
	    default: break;
    
	    case 7://Exit
	    {
	        break;
	    }
	    default: break;
	}
}
