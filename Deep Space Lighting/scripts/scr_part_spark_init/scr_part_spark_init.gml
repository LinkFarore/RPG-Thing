/// @description scr_part_spark_init
function scr_part_spark_init() {
	global.pt_spark = part_type_create();
	var pt = global.pt_spark;

	part_type_shape(pt,pt_shape_pixel);
	part_type_size(pt,1,1,0,0);
	part_type_colour3(pt,c_white,c_white,c_yellow);
	part_type_speed(pt,3,4,0,0);
	part_type_direction(pt,0,360,0,0);
	part_type_life(pt,15,20);
	part_type_alpha2(pt,1,.7);



}
