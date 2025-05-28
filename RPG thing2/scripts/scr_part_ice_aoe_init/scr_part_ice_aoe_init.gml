// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_part_ice_aoe_init()
{
	global.pt_ice_aoe = part_type_create();
	var pt = global.pt_ice_aoe;

	part_type_shape(pt, pt_shape_snow);
	part_type_size(pt,.1,.12,-.001,0);
	part_type_color3(pt, c_white, c_aqua, c_aqua);
	part_type_speed(pt,.5,.8,0,0);
	part_type_direction(pt,90,90,0,90);
	part_type_life(pt,42,48);
	part_type_alpha2(pt,1,.2);
}