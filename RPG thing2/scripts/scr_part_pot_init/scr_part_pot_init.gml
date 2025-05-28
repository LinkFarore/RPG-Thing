/// @description scr_part_leaf_init
function scr_part_pot_init() {
	global.pt_pot = part_type_create();
	var pt = global.pt_pot;

	part_type_sprite(pt, spr_pot_part, false, false, true);
	part_type_size(pt,1,1,0,0);
	part_type_speed(pt,1,2,0,0);
	part_type_direction(pt,0,180,0,0);
	part_type_life(pt, 6, 12);
	part_type_alpha2(pt,1,.75);



}
