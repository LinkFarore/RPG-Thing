/// @description scr_part_explosion_init()
/// @function scr_part_explosion_init
function scr_part_explosion_asteroid_init() {
	global.pt_explosion_asteroid = part_type_create();
	var pt = global.pt_explosion_asteroid;

	part_type_shape(pt,pt_shape_pixel);
	part_type_size(pt,2,3.5,.1,0);
	part_type_colour2(pt,c_white,c_black);
	part_type_life(pt,40,60);
	part_type_alpha2(pt,.8,.45);
	part_type_speed(pt,1,2,0,0);
	part_type_direction(pt,0,360,0,0);


}
