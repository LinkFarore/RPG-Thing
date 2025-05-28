function scr_menu() {
	switch (mpos)
	{
	    case 0:
	    {   
	        instance_activate_all();
	        obj_pause.pause = 0;
	        with obj_menu
	        {
	            instance_destroy();
	        }
	        break;
	    }
	    case 1:
	    {
	        scr_level_save();
	        obj_pause.pause = 0;
	        with obj_menu
	        {
	            instance_destroy();
	        }
	        room_goto(rm_menu);
	        break;
	    }
	    case 2:
	    {
	        scr_level_save();
	        instance_activate_all();
	        obj_pause.pause = 0;
	        obj_pause.pause = 0;
	        with obj_menu
	        {
	            instance_destroy();
	        }
	        break;
	    }
	    case 3:
	    {
	        room_goto(rm_menu);
	        obj_pause.pause = 0;
	        with obj_menu
	        {
	            instance_destroy();
	        }
	        break;
	    }
	    default: break;
	}



}
