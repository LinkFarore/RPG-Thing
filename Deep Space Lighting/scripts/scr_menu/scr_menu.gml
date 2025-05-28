function scr_menu() {
	switch (mpos)
	{
	    case 0:
	    {
	        load = true;
			pause = 0;
			selected = false;
	        room_goto_next();
			//scr_load();
	        audio_stop_sound(snd_title_music);
	        break;
	    }
    
	    case 1:
	    {
	        seed = 0;
	        crystals = 0;
	        level = 1;
	        shop = false;
	        pause = false;
	        finish = false;
	        selected = false;
	        buy = false;
	        levelup = false;
	        hpfull = false;
	        energyfull = false;
	        music = 0;
	        page = 1;
	        missile = 10;
	        bomb = 10;
	        scrap = 0;
	        load = false;
	        player_attack = 1;
	        player_defense = 1;
	        player_maxhp = 12;
	        maxenergy = 12;
	        player_spd = 1.35;
	        rate_of_fire = 40;
	        levelup = false;
	        weapon_str_point = 1;
	        weapon_spd_point = 1;
	        engine_point = 1;
	        hull_point = 1;
	        def_point = 1;
	        energy_point = 1;
			hull_part = 0;
			weapon_part = 0;
			engine_part = 0;
	        level_error_1 = false;
	        level_error_2 = false;
	        level_error_3 = false;
	        xp = 0;
	        maxxp = 10;
	        stun_blast = false;
			
			global.temp_r_ex = 127;
			global.temp_g_ex = 127;
			global.temp_b_ex = 127;

			global.custom_exhaust = false;

			global.temp_r_lz = 127;
			global.temp_g_lz = 127;
			global.temp_b_lz = 127;

			global.custom_lazer = false;

			global.temp_r_sh = 127;
			global.temp_g_sh = 127;
			global.temp_b_sh = 127;

			global.custom_shield = false;

			global.temp_r_hl = 127;
			global.temp_g_hl = 127;
			global.temp_b_hl = 127;

			global.custom_hull = false;

			global.temp_r_li = 127;
			global.temp_g_li = 127;
			global.temp_b_li = 127;

			global.custom_light = false;
			
	        audio_stop_sound(snd_title_music);
	        room_goto_next();
	        level = 1;
	        crystals = 0;
	        break;
	    }
    
	    case 2:
	    {
	        instance_deactivate_object(obj_gametitle);
	        instance_create(room_width/2,room_height/3,obj_hbar);
	        instance_create(room_width/2,room_height/2+room_height/4,obj_button_back);
	        instance_deactivate_object(obj_menu);
	        break;
	    }
    
	    case 3:
	    {
	        game_end();
	        break;
	    }
	    default: break;
	}



}
