// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_part_holy_aoe_init()
{
	global.pt_holy_aoe = part_type_create();
	var pt = global.pt_holy_aoe;

	part_type_shape(pt, pt_shape_line);
	part_type_orientation(pt,90,90,0,0,false);
	part_type_size(pt,.14,.2,-.001,0);
	part_type_color3(pt, c_white, c_orange, c_white);
	part_type_speed(pt,.45,.7,0,0);
	part_type_direction(pt,90,90,0,10);
	part_type_life(pt,38,42);
	part_type_alpha2(pt,1,.2);
}