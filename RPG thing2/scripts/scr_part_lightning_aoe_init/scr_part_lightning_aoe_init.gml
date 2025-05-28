// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_part_lightning_aoe_init()
{
	global.pt_lightning_aoe = part_type_create();
	var pt = global.pt_lightning_aoe;

	//part_type_shape(pt, pt_shape_line);
	part_type_sprite(pt,spr_lightning_part,false,false,false);
	part_type_orientation(pt,90,90,0,0,false);
	part_type_size(pt,.25,.25,-.002,0);
	part_type_color3(pt, c_white, c_yellow, c_lime);
	part_type_speed(pt,.8,1.2,0,0);
	part_type_direction(pt,90,90,0,20);
	part_type_life(pt,38,42);
	part_type_alpha2(pt,1,.2);
}