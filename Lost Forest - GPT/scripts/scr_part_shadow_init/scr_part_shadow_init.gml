/// @description scr_part_fire_init
function scr_part_shadow_init() {
	global.pt_shadow = part_type_create();
	var pt = global.pt_shadow;

	part_type_shape(pt, pt_shape_cloud);
	part_type_size(pt,.075,.25,0,0);
	part_type_color3(pt, c_purple, c_maroon, c_black);
	part_type_speed(pt,1,3,0,0);
	part_type_direction(pt,0,360,0,0);
	part_type_blend(pt,true);
	part_type_life(pt, 5, 10);
	part_type_alpha2(pt,1,.5);



}
