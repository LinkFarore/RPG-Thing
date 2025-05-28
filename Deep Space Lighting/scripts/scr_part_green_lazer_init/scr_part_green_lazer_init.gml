/// @description scr_part_green_lazer_init
function scr_part_green_lazer_init() {
	global.pt_green_lazer = part_type_create();
	var pt = global.pt_green_lazer;

	part_type_shape(pt,pt_shape_square);
	part_type_size(pt,.03,.07,.015,0);
	part_type_colour1(pt,make_colour_hsv(80,238,149));
	part_type_speed(pt,2,8,0,0);
	//part_type_direction(pt,0,0,0,0);
	part_type_life(pt,8,8);
	part_type_alpha2(pt,1,.2);



}
