// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_part_fire_aoe_init()
{
	global.pt_fire_aoe = part_type_create();
	var pt = global.pt_fire_aoe;

	part_type_shape(pt, pt_shape_square);
	part_type_size(pt,.08,.1,-.005,0);
	part_type_color3(pt, c_yellow, c_orange, c_red);
	part_type_speed(pt,1,3,0,0);
	part_type_direction(pt,90,90,0,20);
	part_type_life(pt, 10, 30);
	part_type_alpha2(pt,1,.5);
}