function scr_store_menu() {
	switch (mpos)
	{
	    case 0://Level Up
	    {
	        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3-16,obj_levelup_menu);
	        with (obj_store_menu)
	        {
	            instance_destroy();
	        }
	        break;
	    }
    
	    case 1://Hire Mercenarey
	    {   
	        if crystals <= 0
	        {
	        pause = 0;
	        selected = false;
	        finish = true;
	        shop = false;
	        instance_activate_all();
	        crystals -= 100;
	        with (obj_store_menu)
	        {
	            instance_destroy();
	        }
	        audio_play_sound(snd_select2,0,false);
	        var a;
			a = instance_create(obj_player.x+64,obj_player.y+64,obj_ally);
			a.patrol = false;
	        }
	        break;
	    }
		
		case 2://Customize Ship
	    {
			instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3-16,obj_build_ship);
	        with (obj_store_menu)
	        {
	            instance_destroy();
	        }
	        break;
	    }
    
	    case 3://Exit
	    {
	        pause = 0;
	        selected = false;
	        finish = true;
	        shop = false;
	        instance_activate_all();
	        with(obj_store_menu)
	        {
	            instance_destroy();
	        }
	        audio_play_sound(snd_select2,0,false);
	        break;
	    }
    
	    default: break;
	}



}
