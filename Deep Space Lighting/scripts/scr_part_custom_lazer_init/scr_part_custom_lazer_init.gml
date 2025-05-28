/// @description scr_part_blue_lazer_init
function scr_part_custom_lazer_init() {
	global.pt_custom_lazer = part_type_create();
	var pt = global.pt_custom_lazer;

	part_type_shape(pt,pt_shape_square);
	part_type_size(pt,.1,.1,-.01,0);
	part_type_colour1(pt,make_colour_rgb(global.temp_r_lz,global.temp_g_lz,global.temp_b_lz));
	part_type_speed(pt,2,8,0,0);
	part_type_life(pt,8,8);
	part_type_alpha2(pt,1,.2);

	global.custom_lazer = true;

}
