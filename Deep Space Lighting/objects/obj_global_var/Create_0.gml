// Initialize Global Variables
globalvar 
    planet_load, temp_planet_name, temp_planet_desc, planet_color, player_current_chunk, 
    crystals, level, shop, pause, finish, 
    selected, buy, levelup, hpfull, player_attack, 
    player_defense, player_maxhp, maxenergy, level_error_1, level_error_2, 
    level_error_3, xp, maxxp, energyfull, music, 
    page, missile, bomb, scrap, load, 
    levelpoint, rate_of_fire, levelup, weapon_str_point, weapon_spd_point, 
    engine_point, hull_point, def_point, energy_point, stun_blast, 
    player_spd, weapon_str_point_temp, weapon_spd_point_temp, engine_point_temp, hull_point_temp, 
    def_point_temp, energy_point_temp, assigned_point, hull_part, engine_part, 
    weapon_part, player_reputation;

// Default Values for Global Variables
planet_load = false;
temp_planet_name = "none";
temp_planet_desc = "none";
planet_color = c_white;
player_current_chunk = "none";
crystals = 0;
shop = false;
pause = false;
finish = false;
selected = false;
buy = false;
levelup = false;
hpfull = false;
player_attack = 1;
player_defense = 1;
player_maxhp = 12;
maxenergy = 350;
level_error_1 = false;
level_error_2 = false;
level_error_3 = false;
xp = 0;
maxxp = 10;
energyfull = false;
music = 0;
page = 1;
missile = 10;
bomb = 10;
scrap = 0;
load = false;
levelpoint = 0;
rate_of_fire = 30;
weapon_str_point = 1;
weapon_spd_point = 1;
engine_point = 1;
hull_point = 1;
def_point = 1;
energy_point = 1;
weapon_str_point_temp = 0;
weapon_spd_point_temp = 0;
engine_point_temp = 0;
hull_point_temp = 0;
def_point_temp = 0;
energy_point_temp = 0;
assigned_point = 0;
stun_blast = false;
hull_part = 0;
engine_part = 0;
weapon_part = 0;
player_reputation = 1;

global.build_menu_release = true;

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