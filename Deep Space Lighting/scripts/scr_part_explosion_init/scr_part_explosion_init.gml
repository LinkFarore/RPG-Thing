/// @description scr_part_explosion_init()
/// @function scr_part_explosion_init
function scr_part_explosion_init() {
	global.pt_explosion = part_type_create();
	var pt = global.pt_explosion;

	part_type_shape(pt,pt_shape_square);
	part_type_size(pt,.1,.75,.05,0);
	part_type_colour3(pt,c_yellow,c_orange,c_red);
	part_type_direction(pt,0,360,0,0);
	part_type_life(pt,20,30);
	part_type_alpha2(pt,1,.5);
	part_type_speed(pt,0.4,0.75,-.07,0);


}
