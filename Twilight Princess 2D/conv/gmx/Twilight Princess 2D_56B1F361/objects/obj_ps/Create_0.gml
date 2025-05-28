/// @description Initialize the particle system
global.ps = part_system_create();

//Create the fire and spark particle types
scr_part_pot_init();
scr_part_spectral_init();
scr_part_enemy_death_init();
scr_part_magic_init();
scr_part_potm_init();

