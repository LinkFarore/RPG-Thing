/// @description  Initialize the ship
event_inherited();
scr_ship_init(180,obj_enemy_lazer,.5,90,0,20,220,160);
shield_mask = spr_cargo;

image_speed = 0;
image_index = choose(0,1,2,3);