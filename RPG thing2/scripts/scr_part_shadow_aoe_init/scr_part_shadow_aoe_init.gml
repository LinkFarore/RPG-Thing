// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_part_shadow_aoe_init()
{
	global.pt_shadow_aoe = part_type_create();
	var pt = global.pt_shadow_aoe;

	part_type_shape(pt, pt_shape_ring);
	part_type_size(pt,.14,.2,-.001,0);
	part_type_color3(pt, c_black, c_purple, c_black);
	part_type_speed(pt,.45,.7,0,0);
	part_type_direction(pt,90,90,0,30);
	part_type_life(pt,38,42);
	part_type_alpha2(pt,1,.2);
}