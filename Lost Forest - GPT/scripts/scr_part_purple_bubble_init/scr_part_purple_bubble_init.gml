/// @description scr_part_bubble_init
function scr_part_purple_bubble_init() {
	global.pt_shadow_bubble = part_type_create();
	var pt = global.pt_shadow_bubble;

	part_type_shape(pt, pt_shape_ring);
	part_type_size(pt,.075,.25,0,0);
	part_type_color2(pt, c_purple,c_black);
	part_type_speed(pt,1,3,0,0);
	part_type_direction(pt,0,360,0,0);
	part_type_blend(pt,true);
	part_type_life(pt, 6, 8);
	part_type_alpha2(pt,1,.5);



}
