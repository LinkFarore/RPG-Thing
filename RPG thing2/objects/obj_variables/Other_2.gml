randomize();

globalvar player_hp, player_maxhp, magic, maxmagic, xp, maxxp, 
level_point, level_up, spell_menu, item_menu, bow, coin, potion, 
player_item_1, player_item_2, player_item_3, player_spell_1, player_spell_2, player_spell_3, 
fnt_numbers, level_error_1, level_error_2, player_atk_point, player_maxhp_point, 
player_magic_point, player_intellect_point, player_luck_point, player_atk,
player_atk_point_temp, player_maxhp_point_temp, player_magic_point_temp, 
player_intellect_point_temp, player_luck_point_temp, assigned_point, load;

player_hp = 20;
player_maxhp = 20;
magic = 10;
maxmagic = 10;
xp = 0;
maxxp =10;
level_point = 0;
assigned_point = 0;
level_up = false;
spell_menu = false;
item_menu = false;
bow = false;
coin = 0;
potion = 3;
player_item_1 = -1;
player_item_2 = -1;
player_item_3 = -1;
player_spell_1 = -1;
player_spell_2 = -1;
player_spell_3 = -1;
level_error_1 = false;
level_error_2 = false;
player_atk_point = 1;
player_maxhp_point = 1;
player_magic_point = 1;
player_intellect_point = 1;
player_luck_point = 1;
player_atk_point_temp = 0;
player_maxhp_point_temp = 0;
player_magic_point_temp = 0;
player_intellect_point_temp = 0;
player_luck_point_temp = 0;
player_atk = 1;
fnt_numbers = font_add_sprite(spr_numbers,ord("0"),true,1);
load = false;