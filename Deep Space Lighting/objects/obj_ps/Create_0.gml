/// @description Initialize the particle system
global.ps = part_system_create();
part_system_depth(global.ps,0);

global.plasma_ps = part_system_create();
part_system_depth(global.plasma_ps,-1000);

global.temp_r_ex = 127;
global.temp_g_ex = 127;
global.temp_b_ex = 127;

global.temp_r_lz = 127;
global.temp_g_lz = 127;
global.temp_b_lz = 127;


//Create the Lazer particle
scr_part_blue_lazer_init();
scr_part_charge_lazer_init();
scr_part_red_lazer_init();
scr_part_green_lazer_init();
scr_part_yellow_lazer_init();
scr_part_star_init();
scr_part_explosion_init();
scr_part_explosion_asteroid_init();
scr_part_spark_init();
scr_part_player_exhaust_init();
scr_part_enemy_exhaust_init();
scr_part_ally_exhaust_init();
scr_part_yellow_exhaust_init();
scr_part_plasma_init();
scr_part_missile_init();
scr_part_custom_exhaust_init();
scr_part_custom_lazer_init();