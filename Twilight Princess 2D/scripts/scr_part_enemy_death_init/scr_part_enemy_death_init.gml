/// @description scr_part_spectral_init
function scr_part_enemy_death_init() {
	global.pt_ed = part_type_create();
	var pt = global.pt_ed;

	part_type_shape(pt, pt_shape_pixel);
	part_type_size(pt,.1,1.2,-.05,0);
	part_type_color2(pt, c_black, c_black);
	part_type_speed(pt,1,3,0,0);
	part_type_direction(pt,0,360,0,0);
	part_type_life(pt, 10, 30);
	part_type_alpha2(pt,1,.5);



}
