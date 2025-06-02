function scr_gameover() {
	switch (mpos)
	{
	    case 0:
	    {   
	        instance_activate_object(obj_pause);
	        room_restart();
	        break;
	    }
	    case 1:
	    {
	        instance_activate_object(obj_pause);
	        room_goto(rm_menu);
	        break;
	    }
	    case 2:
	    {
	        game_end();
	        break;
	    }
	    default: break;
	}



}
