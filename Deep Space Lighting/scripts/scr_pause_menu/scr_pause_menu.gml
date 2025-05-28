function scr_pause_menu() {
	switch (mpos)
	{
	    case 0:
	    {   
	        instance_activate_all();
	        pause = 0;
	        with obj_pause_menu
	        {
	            instance_destroy();
	        }
	        break;
	    }
	    case 1:
	    {
	        instance_create(0,0,obj_stats);
	        with obj_pause_menu
	        {
	            instance_destroy();
	        }
	        break;
	    }
	    case 2:
	    {
	        instance_activate_all();
	        scr_save();
	        pause = 0;
	        with obj_pause_menu
	        {
	            instance_destroy();
	        }
	        break;
	    }
	    case 3:
	    {
	        pause = 0;
	        room_goto(rm_title);
	        crystals = 0;
	        scrap = 0;
	        xp = 0;
	        maxxp = 10;
	        hull_point = 1;
	        weapon_point = 1;
	        engine_point = 1;
	        energy_point = 1;
	        planetSaves = 0;
	        objArrayCache = 0;
	        planetArrayCache = 0;
	        chunk_width = 0;
	        chunk_height = 0;
	        chunkX = 0;
	        chunkY = 0;
	        loadedChunks = 0;
	        curSeed = 0;
	        mapSize = 0;
	        objectCache = 0;
	        chunkMap = 0;
	        chunkCache = 0;
	        planetWidth = 0;
	        planetHeight = 0;
	        loadedChunks = 0;
	        audio_sound_gain(snd_music_wander,0,1);
	        audio_sound_gain(snd_music_battle,0,1);
	        with obj_pause_menu
	        {
	            instance_destroy();
	        }
	        break;
	    }
	    case 4:
	    {
	        game_end();
	        break;
	    }
	    default: break;
	}
}
