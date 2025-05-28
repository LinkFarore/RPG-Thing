/// @description scr_part_lightning_init()
function scr_part_lightning_init() {
	global.pt_lightning = part_type_create();
	var pt = global.pt_lightning;

	part_type_shape(pt, pt_shape_line);
	part_type_size(pt,.075,.25,0,0);
	part_type_alpha3(pt, c_white, c_white, c_yellow);
	part_type_orientation(pt,0,0,0,0,true);
	part_type_speed(pt,1,3,0,0);
	part_type_direction(pt,0,360,15,0);
	part_type_blend(pt,true);
	part_type_life(pt, 4, 8);
	part_type_alpha2(pt,1,.5);



}
