function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_hero
	global.__objectDepths[1] = 0; // obj_player
	global.__objectDepths[2] = 0; // obj_grass_trigger
	global.__objectDepths[3] = 0; // obj_forest_trigger
	global.__objectDepths[4] = 0; // obj_desert_trigger
	global.__objectDepths[5] = 0; // obj_ruin_trigger
	global.__objectDepths[6] = 0; // obj_wall
	global.__objectDepths[7] = 0; // obj_portal
	global.__objectDepths[8] = 0; // obj_cave
	global.__objectDepths[9] = 0; // obj_grass
	global.__objectDepths[10] = 0; // obj_cave_wall
	global.__objectDepths[11] = 0; // obj_crate
	global.__objectDepths[12] = 0; // obj_lowder
	global.__objectDepths[13] = 0; // obj_bot
	global.__objectDepths[14] = 0; // obj_snake
	global.__objectDepths[15] = 0; // obj_rathead
	global.__objectDepths[16] = 0; // obj_octorok
	global.__objectDepths[17] = 0; // obj_fireball
	global.__objectDepths[18] = 0; // obj_fireball2
	global.__objectDepths[19] = -1; // parPro
	global.__objectDepths[20] = 0; // obj_rat
	global.__objectDepths[21] = 0; // obj_lizalfos2
	global.__objectDepths[22] = 0; // obj_lizalfos
	global.__objectDepths[23] = 0; // obj_sword_c
	global.__objectDepths[24] = 0; // par_sword
	global.__objectDepths[25] = 0; // par_enemy
	global.__objectDepths[26] = 0; // par_rupee
	global.__objectDepths[27] = 0; // parEnemy
	global.__objectDepths[28] = 0; // par_enemy_nofall
	global.__objectDepths[29] = 0; // par_enemy_nojump
	global.__objectDepths[30] = 0; // objEnemyRng
	global.__objectDepths[31] = 0; // obj_enemy
	global.__objectDepths[32] = 0; // obj_boomerang
	global.__objectDepths[33] = 0; // obj_bomb
	global.__objectDepths[34] = 0; // obj_arrow
	global.__objectDepths[35] = 0; // obj_pot
	global.__objectDepths[36] = 0; // obj_magic_jar
	global.__objectDepths[37] = 0; // obj_heart_container
	global.__objectDepths[38] = 0; // obj_rupee_g
	global.__objectDepths[39] = 0; // obj_rupee_b
	global.__objectDepths[40] = 0; // obj_rupee_r
	global.__objectDepths[41] = 0; // obj_health
	global.__objectDepths[42] = 0; // obj_bomb_explode
	global.__objectDepths[43] = 0; // obj_chest
	global.__objectDepths[44] = 0; // obj_magic
	global.__objectDepths[45] = 0; // obj_camera
	global.__objectDepths[46] = 0; // obj_moveplatform
	global.__objectDepths[47] = 0; // obj_platform
	global.__objectDepths[48] = 0; // obj_variables
	global.__objectDepths[49] = 0; // obj_warp
	global.__objectDepths[50] = 0; // obj_checkpoint
	global.__objectDepths[51] = 0; // obj_kaylin
	global.__objectDepths[52] = 0; // obj_music
	global.__objectDepths[53] = 0; // obj_hookshot_chain
	global.__objectDepths[54] = 0; // obj_hookshot_head
	global.__objectDepths[55] = 0; // obj_ps
	global.__objectDepths[56] = 0; // obj_spawner_grass
	global.__objectDepths[57] = 0; // obj_spawner_forest
	global.__objectDepths[58] = 0; // obj_spawner_desert
	global.__objectDepths[59] = 0; // obj_zsv


	global.__objectNames[0] = "obj_hero";
	global.__objectNames[1] = "obj_player";
	global.__objectNames[2] = "obj_grass_trigger";
	global.__objectNames[3] = "obj_forest_trigger";
	global.__objectNames[4] = "obj_desert_trigger";
	global.__objectNames[5] = "obj_ruin_trigger";
	global.__objectNames[6] = "obj_wall";
	global.__objectNames[7] = "obj_portal";
	global.__objectNames[8] = "obj_cave";
	global.__objectNames[9] = "obj_grass";
	global.__objectNames[10] = "obj_cave_wall";
	global.__objectNames[11] = "obj_crate";
	global.__objectNames[12] = "obj_lowder";
	global.__objectNames[13] = "obj_bot";
	global.__objectNames[14] = "obj_snake";
	global.__objectNames[15] = "obj_rathead";
	global.__objectNames[16] = "obj_octorok";
	global.__objectNames[17] = "obj_fireball";
	global.__objectNames[18] = "obj_fireball2";
	global.__objectNames[19] = "parPro";
	global.__objectNames[20] = "obj_rat";
	global.__objectNames[21] = "obj_lizalfos2";
	global.__objectNames[22] = "obj_lizalfos";
	global.__objectNames[23] = "obj_sword_c";
	global.__objectNames[24] = "par_sword";
	global.__objectNames[25] = "par_enemy";
	global.__objectNames[26] = "par_rupee";
	global.__objectNames[27] = "parEnemy";
	global.__objectNames[28] = "par_enemy_nofall";
	global.__objectNames[29] = "par_enemy_nojump";
	global.__objectNames[30] = "objEnemyRng";
	global.__objectNames[31] = "obj_enemy";
	global.__objectNames[32] = "obj_boomerang";
	global.__objectNames[33] = "obj_bomb";
	global.__objectNames[34] = "obj_arrow";
	global.__objectNames[35] = "obj_pot";
	global.__objectNames[36] = "obj_magic_jar";
	global.__objectNames[37] = "obj_heart_container";
	global.__objectNames[38] = "obj_rupee_g";
	global.__objectNames[39] = "obj_rupee_b";
	global.__objectNames[40] = "obj_rupee_r";
	global.__objectNames[41] = "obj_health";
	global.__objectNames[42] = "obj_bomb_explode";
	global.__objectNames[43] = "obj_chest";
	global.__objectNames[44] = "obj_magic";
	global.__objectNames[45] = "obj_camera";
	global.__objectNames[46] = "obj_moveplatform";
	global.__objectNames[47] = "obj_platform";
	global.__objectNames[48] = "obj_variables";
	global.__objectNames[49] = "obj_warp";
	global.__objectNames[50] = "obj_checkpoint";
	global.__objectNames[51] = "obj_kaylin";
	global.__objectNames[52] = "obj_music";
	global.__objectNames[53] = "obj_hookshot_chain";
	global.__objectNames[54] = "obj_hookshot_head";
	global.__objectNames[55] = "obj_ps";
	global.__objectNames[56] = "obj_spawner_grass";
	global.__objectNames[57] = "obj_spawner_forest";
	global.__objectNames[58] = "obj_spawner_desert";
	global.__objectNames[59] = "obj_zsv";


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
