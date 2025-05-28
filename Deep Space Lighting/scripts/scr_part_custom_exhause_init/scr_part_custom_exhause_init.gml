/// @description scr_part_blue_lazer_init
function scr_part_custom_exhaust_init() {
	global.pt_custom_exhaust = part_type_create();
	var pt = global.pt_custom_exhaust;

	part_type_shape(pt,pt_shape_square);
	part_type_size(pt,.0015,.0015,.003,0);
	part_type_colour1(pt,make_colour_rgb(global.temp_r_ex,global.temp_g_ex,global.temp_b_ex));
	part_type_speed(pt,1,2,0,0);
	part_type_life(pt,30,55);
	part_type_alpha2(pt,1,.05);

	global.custom_exhaust = true;

}