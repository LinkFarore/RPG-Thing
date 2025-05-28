/// @description scr_part_leaf_init
function scr_part_leaf_init() {
	global.pt_leaf = part_type_create();
	var pt = global.pt_leaf;

	part_type_sprite(pt, spr_leaf3, true, true, true);
	part_type_size(pt,1,1,0,.01);
	part_type_speed(pt,1,3,0,0);
	part_type_direction(pt,0,360,0,0);
	part_type_life(pt, 4, 8);
	part_type_alpha2(pt,1,.5);



}
