/// @description scr_part_spectral_init
function scr_part_magic_init() {
	global.pt_magic = part_type_create();
	var pt = global.pt_magic;

	part_type_shape(pt, pt_shape_square);
	part_type_size(pt,.015,.015,0,0);
	part_type_color2(pt, c_green, c_lime);
	part_type_speed(pt,.5,.75,0,0);
	part_type_direction(pt,0,360,0,0);
	part_type_life(pt, 8, 16);
	part_type_alpha2(pt,1,.5);



}
