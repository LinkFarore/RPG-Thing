function scr_material_sell_menu() {
	switch (mpos)
	{
	    case 0://Iron
	    {   
	        instance_create(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,obj_ore_sell);
	        with(obj_ore_sell)
	        {
	            ore = iron;
	        }
	        break;
	    }
	    case 1://Gold
	    {
        
	        break;
	    }
	    case 2://Silver
	    {
        
	        break;
	    }
	    case 3://Uranium
	    {
        
	        break;
	    }
	    case 4://Thorium
	    {
        
	        break;
	    }
	    case 5://Plutonium
	    {
        
	        break;
	    }
	    case 6://Radium
	    {
        
	        break;
	    }
	    case 7://Platinum
	    {
        
	        break;
	    }
	    case 8://Aluminum
	    {
        
	        break;
	    }
	    case 9:
	    {
	        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_store_menu);
	        with (obj_material_sell_menu)
	        {
	            instance_destroy();
	        }
	        break;
	    }
	    default: break;
	}



}
