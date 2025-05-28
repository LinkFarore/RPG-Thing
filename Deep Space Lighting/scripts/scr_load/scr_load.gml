/// @description scr_load();
/// @function scr_load
function scr_load() 
{
	//Get the saved seed from the .ini file
	ini_open("save.ini");
	var xx = ini_read_real("Player","X",-500);
	var yy = ini_read_real("Player","Y",-500);
	
	var o_hp = ini_read_real("Player","hp",player_maxhp);
	var o_energy = ini_read_real("Player","energy",maxenergy);
	var o_weapon = ini_read_real("Player","weapon",0);
	var o_defense = ini_read_real("Player","defense",0);
	var o_repair = ini_read_real("Player","repair",3);
	player_maxhp = ini_read_real("Player","maxhp",player_maxhp);
	maxenergy = ini_read_real("Player","maxenergy",maxenergy);
	player_attack = ini_read_real("Player","player_attack",player_attack);
	player_defense = ini_read_real("Player","player_defense",player_defense);
	levelpoint = ini_read_real("Player","levelpoint",levelpoint);
	hull_part = ini_read_real("Player","hull",hull_part);
	engine_part = ini_read_real("Player","engine",engine_part);
	weapon_part = ini_read_real("Player","weapon",weapon_part);
	engine_part = ini_read_real("Player","engine",engine_part);
	xp = ini_read_real("Player","xp",xp);
	maxxp = ini_read_real("Player","maxxp",maxxp);
	missile = ini_read_real("Player","missile",missile);
	
	global.custom_exhaust = ini_read_string("Global","global.custom_exhaust",global.custom_exhaust);
	global.temp_r_ex = ini_read_real("Global","global.temp_r_ex",global.temp_r_ex);
	global.temp_g_ex = ini_read_real("Global","global.temp_g_ex",global.temp_g_ex);
	global.temp_b_ex = ini_read_real("Global","global.temp_b_ex",global.temp_b_ex);
	
	global.custom_hull = ini_read_string("Global","global.custom_hull",global.custom_hull);
	global.temp_r_hl = ini_read_real("Global","global.temp_r_hl",global.temp_r_hl);
	global.temp_g_hl = ini_read_real("Global","global.temp_g_hl",global.temp_g_hl);
	global.temp_b_hl = ini_read_real("Global","global.temp_b_hl",global.temp_b_hl);
	
	global.custom_light = ini_read_string("Global","global.custom_light",global.custom_light);
	global.temp_r_li = ini_read_real("Global","global.temp_r_li",global.temp_r_li);
	global.temp_g_li = ini_read_real("Global","global.temp_g_li",global.temp_g_li);
	global.temp_b_li = ini_read_real("Global","global.temp_b_li",global.temp_b_li);
	
	global.custom_lazer = ini_read_string("Global","global.custom_lazer",global.custom_lazer);
	global.temp_r_lz = ini_read_real("Global","global.temp_r_lz",global.temp_r_lz);
	global.temp_g_lz = ini_read_real("Global","global.temp_g_lz",global.temp_g_lz);
	global.temp_b_lz = ini_read_real("Global","global.temp_b_lz",global.temp_b_lz);
	
	global.custom_shield = ini_read_string("Global","global.custom_shield",global.custom_shield);
	global.temp_r_sh = ini_read_real("Global","global.temp_r_sh",global.temp_r_sh);
	global.temp_g_sh = ini_read_real("Global","global.temp_g_sh",global.temp_g_sh);
	global.temp_b_sh = ini_read_real("Global","global.temp_b_sh",global.temp_b_sh);
	
	if !instance_exists(obj_player)
	{
		instance_create(xx,yy,obj_player);
	}
	
	obj_player.x = xx;
	obj_player.y = yy;
	obj_player.hp = o_hp;
	obj_player.energy = o_energy;
	obj_player.weapon = o_weapon;
	obj_player.defense = o_defense;
	obj_player.repair = o_repair;
	load = true;
	
	ini_close();
}