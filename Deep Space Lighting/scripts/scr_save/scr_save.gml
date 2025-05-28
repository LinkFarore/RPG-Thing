/// @description scr_save();
/// @function scr_save
function scr_save() 
{
	//If the file already exists over write the old file
	if file_exists("save.ini")
	{
	    file_delete("save.ini");
	}

	//Open the .ini file and write the seed to it
	ini_open("save.ini");
	
	instance_activate_object(obj_player);
	instance_activate_object(obj_pause);
	
	ini_write_real("Player","X",obj_player.x);
	ini_write_real("Player","Y",obj_player.y);
	ini_write_real("Player","hp",obj_player.hp);
	ini_write_real("Player","energy",obj_player.energy);
	ini_write_real("Player","weapon",obj_player.weapon);
	ini_write_real("Player","defense",obj_player.defense);
	ini_write_real("Player","repair",obj_player.repair);
	ini_write_real("Player","maxhp",player_maxhp);
	ini_write_real("Player","maxenergy",maxenergy);
	ini_write_real("Player","player_attack",player_attack);
	ini_write_real("Player","player_defense",player_defense);
	ini_write_real("Player","levelpoint",levelpoint);
	ini_write_real("Player","hull",hull_part);
	ini_write_real("Player","engine",engine_part);
	ini_write_real("Player","weapon",weapon_part);
	ini_write_real("Player","engine",engine_part);
	ini_write_real("Player","xp",xp);
	ini_write_real("Player","maxxp",maxxp);
	ini_write_real("Player","missile",missile);
	
	ini_write_string("Global","global.custom_exhaust",global.custom_exhaust);
	ini_write_real("Global","global.temp_r_ex",global.temp_r_ex);
	ini_write_real("Global","global.temp_g_ex",global.temp_g_ex);
	ini_write_real("Global","global.temp_b_ex",global.temp_b_ex);
	
	ini_write_string("Global","global.custom_light",global.custom_light);
	ini_write_real("Global","global.temp_r_li",global.temp_r_li);
	ini_write_real("Global","global.temp_g_li",global.temp_g_li);
	ini_write_real("Global","global.temp_b_li",global.temp_b_li);
	
	ini_write_string("Global","global.custom_lazer",global.custom_lazer);
	ini_write_real("Global","global.temp_r_lz",global.temp_r_lz);
	ini_write_real("Global","global.temp_g_lz",global.temp_g_lz);
	ini_write_real("Global","global.temp_b_lz",global.temp_b_lz);
	
	ini_write_string("Global","global.custom_hull",global.custom_hull);
	ini_write_real("Global","global.temp_r_hl",global.temp_r_hl);
	ini_write_real("Global","global.temp_g_hl",global.temp_g_hl);
	ini_write_real("Global","global.temp_b_hl",global.temp_b_hl);
	
	ini_write_string("Global","global.custom_shield",global.custom_shield);
	ini_write_real("Global","global.temp_r_sh",global.temp_r_sh);
	ini_write_real("Global","global.temp_g_sh",global.temp_g_sh);
	ini_write_real("Global","global.temp_b_sh",global.temp_b_sh);
	
	var cx = obj_player.current_chunk_x;
	var cy = obj_player.current_chunk_y;
	scr_save_chunk(cx, cy);
	
	obj_pause.saving = true;
	obj_pause.alarm[1] = 150;

	ini_close();
}