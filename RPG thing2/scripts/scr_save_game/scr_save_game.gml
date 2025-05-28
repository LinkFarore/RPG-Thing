// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game()
{

if file_exists("save.ini")
{
	file_delete("save.ini");	
}

ini_open("save.ini");

ini_write_real("Spells","Spell slot 1",player_spell_1);
ini_write_real("Spells","Spell slot 2",player_spell_2);
ini_write_real("Spells","Spell slot 3",player_spell_3);

ini_write_real("Items","Item slot 1",player_item_1);
ini_write_real("Items","Item slot 2",player_item_2);
ini_write_real("Items","Item slot 3",player_item_3);

ini_write_real("Stats","Attack Points",player_atk_point);
ini_write_real("Stats","Max HP Points",player_maxhp_point);
ini_write_real("Stats","Magic Points",player_magic_point);
ini_write_real("Stats","Intellect Points",player_intellect_point);
ini_write_real("Stats","Luck Points",player_luck_point);
ini_write_real("Stats","Player HP",player_hp);
ini_write_real("Stats","Max HP",player_maxhp);
ini_write_real("Stats","Player Magic",magic);
ini_write_real("Stats","Max Magic",maxmagic);
ini_write_real("Stats","Player Attack",player_atk);

ini_write_real("XP","XP",xp);
ini_write_real("XP","Max XP",maxxp);
ini_write_real("XP","Level Point",level_point);

ini_write_real("Currency","Coin",coin);
ini_write_real("Currency","Potions",potion);

ini_write_real("Position","X",obj_hero.x);
ini_write_real("Position","Y",obj_hero.y);

ini_close();
}