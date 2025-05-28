function scr_weapon_buy_menu() {
	switch (mpos)
	{
	    case 0://Tri-Lazer
	    {   
        
	        break;
	    }
	    case 1://Scatter Shot
	    {
        
	        break;
	    }
	    case 2://Rapid Lazer
	    {
        
	        break;
	    }
	    case 3://Mining Beam
	    {
        
	        break;
	    }
	    case 4://Go back
	    {
	        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_store_menu);
	        with (obj_buy_weapon_menu)
	        {
	            instance_destroy();
	        }
	        break;
	    }
	    default: break;
	}



}
