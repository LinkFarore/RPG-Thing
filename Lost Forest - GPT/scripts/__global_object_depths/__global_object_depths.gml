function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_ice_spell
	global.__objectDepths[1] = 0; // obj_fire_spell
	global.__objectDepths[2] = 0; // obj_water_spell
	global.__objectDepths[3] = 0; // obj_lightning_spell
	global.__objectDepths[4] = 0; // obj_leaf_spell
	global.__objectDepths[5] = 0; // obj_spell_par
	global.__objectDepths[6] = -7; // obj_player
	global.__objectDepths[7] = -10; // obj_head
	global.__objectDepths[8] = -8; // obj_cape_top
	global.__objectDepths[9] = -6; // obj_cape_middle
	global.__objectDepths[10] = -5; // obj_cape_bottom
	global.__objectDepths[11] = 0; // obj_shadow_parent
	global.__objectDepths[12] = 0; // obj_character_part_parent
	global.__objectDepths[13] = -80; // obj_tree_base
	global.__objectDepths[14] = 0; // obj_tree_leaves
	global.__objectDepths[15] = 0; // obj_player_stats
	global.__objectDepths[16] = 0; // obj_ps
	global.__objectDepths[17] = 0; // obj_spell_button_par
	global.__objectDepths[18] = -10; // obj_selected_button
	global.__objectDepths[19] = 0; // obj_leafspell_button
	global.__objectDepths[20] = 0; // obj_waterspell_button
	global.__objectDepths[21] = 0; // obj_lightningspell_button
	global.__objectDepths[22] = 0; // obj_icespell_button
	global.__objectDepths[23] = 0; // obj_firespell_button
	global.__objectDepths[24] = 0; // obj_enemy_rat
	global.__objectDepths[25] = 0; // obj_button_parent


	global.__objectNames[0] = "obj_ice_spell";
	global.__objectNames[1] = "obj_fire_spell";
	global.__objectNames[2] = "obj_water_spell";
	global.__objectNames[3] = "obj_lightning_spell";
	global.__objectNames[4] = "obj_leaf_spell";
	global.__objectNames[5] = "obj_spell_par";
	global.__objectNames[6] = "obj_player";
	global.__objectNames[7] = "obj_head";
	global.__objectNames[8] = "obj_cape_top";
	global.__objectNames[9] = "obj_cape_middle";
	global.__objectNames[10] = "obj_cape_bottom";
	global.__objectNames[11] = "obj_shadow_parent";
	global.__objectNames[12] = "obj_character_part_parent";
	global.__objectNames[13] = "obj_tree_base";
	global.__objectNames[14] = "obj_tree_leaves";
	global.__objectNames[15] = "obj_player_stats";
	global.__objectNames[16] = "obj_ps";
	global.__objectNames[17] = "obj_spell_button_par";
	global.__objectNames[18] = "obj_selected_button";
	global.__objectNames[19] = "obj_leafspell_button";
	global.__objectNames[20] = "obj_waterspell_button";
	global.__objectNames[21] = "obj_lightningspell_button";
	global.__objectNames[22] = "obj_icespell_button";
	global.__objectNames[23] = "obj_firespell_button";
	global.__objectNames[24] = "obj_enemy_rat";
	global.__objectNames[25] = "obj_button_parent";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
