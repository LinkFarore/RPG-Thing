/// @description Initialize the particle system
global.ps = part_system_create();

//Create the fire and spark particle types
scr_part_fire_init();
scr_part_spark_init();
scr_part_ice_init();
scr_part_lightning_init();
scr_part_bubble_init();
scr_part_water_init();
scr_part_leaf_init();
scr_part_purple_bubble_init();
scr_part_shadow_init();