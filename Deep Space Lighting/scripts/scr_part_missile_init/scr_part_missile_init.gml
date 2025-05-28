/// @description scr_part_spark_init
function scr_part_missile_init() {
	global.pt_missile = part_type_create();
	var pt = global.pt_missile;

	part_type_shape(pt,pt_shape_square);
	part_type_size(pt,.05,.05,-.005,0);
	part_type_colour3(pt,c_white,c_yellow,c_orange);
	part_type_speed(pt,3,4,0,0);
	part_type_life(pt,8,10);
	part_type_alpha2(pt,1,.7);



}
