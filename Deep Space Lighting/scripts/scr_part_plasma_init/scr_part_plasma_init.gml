/// @description scr_part_spark_init
function scr_part_plasma_init()
{
	global.pt_plasma = part_type_create();
	var pt = global.pt_plasma;
	
	part_type_shape(pt,pt_shape_cloud);
	part_type_size(pt,.60,4.5,.08,.02);
	part_type_speed(pt,.30,1,.02,0);
	part_type_colour3(pt,c_blue,c_green,c_red);
	part_type_blend(pt,true);
	part_type_direction(pt,0,360,0,5);
	part_type_life(pt,75,145);
	part_type_alpha3(pt,.0045,.5,.015);
	
	global.plasma_field = part_emitter_create(global.plasma_ps);
}