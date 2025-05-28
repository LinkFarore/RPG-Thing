/// @description scr_part_star_init()
/// @function scr_part_star_init
function scr_part_star_init() {
	global.pt_star = part_type_create();
	var pt = global.pt_star;

	part_type_shape(pt,pt_shape_pixel);
	part_type_size(pt,.5,1,0,0);
	part_type_colour3(pt,c_white,c_white,c_white);
	part_type_speed(pt,2,3,0,0);
	part_type_direction(pt,0,360,0,0);
	part_type_life(pt,2,2.5);
	part_type_alpha2(pt,1,.5);



}
