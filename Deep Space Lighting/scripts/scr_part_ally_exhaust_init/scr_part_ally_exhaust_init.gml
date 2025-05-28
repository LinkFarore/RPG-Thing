function scr_part_ally_exhaust_init() 
{
	global.pt_ally_exhaust = part_type_create();
	var pt = global.pt_ally_exhaust;

	part_type_shape(pt,pt_shape_square);
	part_type_size(pt,.0015,.0015,.003,0);
	part_type_colour1(pt,make_colour_hsv(80,238,149));
	part_type_speed(pt,1,2,0,0);
	part_type_life(pt,30,30);
	part_type_alpha2(pt,1,.2);
}