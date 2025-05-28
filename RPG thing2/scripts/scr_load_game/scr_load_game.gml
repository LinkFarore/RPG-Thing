// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game()
{	
if file_exists("save.ini")
	{	
	ini_open("save.ini");
	
	player_spell_1 = ini_read_real("Spells","Spell slot 1",player_spell_1);
	player_spell_2 = ini_read_real("Spells","Spell slot 2",player_spell_2);
	player_spell_3 = ini_read_real("Spells","Spell slot 3",player_spell_3);

	player_item_1 = ini_read_real("Items","Item slot 1",player_item_1);
	player_item_2 = ini_read_real("Items","Item slot 2",player_item_2);
	player_item_3 = ini_read_real("Items","Item slot 3",player_item_3);

	player_atk_point = ini_read_real("Stats","Attack Points",player_atk_point);
	player_maxhp_point = ini_read_real("Stats","Max HP Points",player_maxhp_point);
	player_magic_point = ini_read_real("Stats","Magic Points",player_magic_point);
	player_intellect_point = ini_read_real("Stats","Intellect Points",player_intellect_point);
	player_luck_point = ini_read_real("Stats","Luck Points",player_luck_point);
	player_hp = ini_read_real("Stats","Player HP",player_hp);
	player_maxhp = ini_read_real("Stats","Max HP",player_maxhp);
	magic = ini_read_real("Stats","Player Magic",magic);
	maxmagic = ini_read_real("Stats","Max Magic",maxmagic);
	player_atk = ini_read_real("Stats","Player Attack",player_atk);

	xp = ini_read_real("XP","XP",xp);
	maxxp = ini_read_real("XP","Max XP",maxxp);
	level_point = ini_read_real("XP","Level Point",level_point);

	coin = ini_read_real("Currency","Coin",coin);
	potion = ini_read_real("Currency","Potions",potion);
	
	obj_hero.x = ini_read_real("Position","X",168);
	obj_hero.y = ini_read_real("Position","Y",168);
	obj_hero.target_x = ini_read_real("Position","X",168);
	obj_hero.target_y = ini_read_real("Position","Y",168);


	ini_close();
	}
	
load = false;
}