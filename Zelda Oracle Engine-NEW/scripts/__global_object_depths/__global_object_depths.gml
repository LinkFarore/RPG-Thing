function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_sword_d
	global.__objectDepths[1] = 0; // obj_sword_l
	global.__objectDepths[2] = 0; // obj_sword_r
	global.__objectDepths[3] = 0; // obj_sword_u
	global.__objectDepths[4] = 0; // obj_moblin
	global.__objectDepths[5] = 0; // obj_darknut
	global.__objectDepths[6] = 0; // obj_moblin2
	global.__objectDepths[7] = 0; // obj_stalfos
	global.__objectDepths[8] = 0; // obj_moblin_c
	global.__objectDepths[9] = 0; // obj_octorok
	global.__objectDepths[10] = 0; // obj_octorok2
	global.__objectDepths[11] = 0; // obj_moblin_outpost
	global.__objectDepths[12] = 0; // obj_gohma
	global.__objectDepths[13] = 0; // obj_fairy
	global.__objectDepths[14] = 0; // obj_heart_container
	global.__objectDepths[15] = 0; // obj_health
	global.__objectDepths[16] = 0; // obj_rupee_g
	global.__objectDepths[17] = 0; // obj_rupee_b
	global.__objectDepths[18] = 0; // obj_rupee_r
	global.__objectDepths[19] = 0; // obj_poh
	global.__objectDepths[20] = 0; // obj_arrow_pickup
	global.__objectDepths[21] = 0; // obj_bomb_pickup
	global.__objectDepths[22] = 0; // obj_magic
	global.__objectDepths[23] = 0; // obj_bow
	global.__objectDepths[24] = 0; // obj_rupee_wallet1
	global.__objectDepths[25] = 0; // obj_rupee_wallet2
	global.__objectDepths[26] = 0; // obj_rupee_wallet3
	global.__objectDepths[27] = 0; // par_sword
	global.__objectDepths[28] = 0; // par_moblin
	global.__objectDepths[29] = 0; // par_enemy
	global.__objectDepths[30] = 0; // par_enemy_projectile
	global.__objectDepths[31] = 0; // obj_ps
	global.__objectDepths[32] = 0; // obj_credits
	global.__objectDepths[33] = 0; // obj_title
	global.__objectDepths[34] = 0; // obj_pause
	global.__objectDepths[35] = 0; // obj_variables
	global.__objectDepths[36] = 0; // obj_twilight
	global.__objectDepths[37] = 0; // par_menu
	global.__objectDepths[38] = -5; // obj_player
	global.__objectDepths[39] = 0; // obj_camera
	global.__objectDepths[40] = 0; // obj_impa
	global.__objectDepths[41] = 0; // obj_main_menu
	global.__objectDepths[42] = 0; // obj_menu
	global.__objectDepths[43] = 0; // obj_gameover
	global.__objectDepths[44] = 0; // obj_costume
	global.__objectDepths[45] = 0; // obj_solid
	global.__objectDepths[46] = -1; // obj_solid_bomb
	global.__objectDepths[47] = -1; // obj_boulder
	global.__objectDepths[48] = 0; // obj_warrior
	global.__objectDepths[49] = 0; // obj_explode
	global.__objectDepths[50] = 0; // obj_arrow
	global.__objectDepths[51] = 0; // obj_enemy_arrow
	global.__objectDepths[52] = 0; // obj_fireball
	global.__objectDepths[53] = 0; // obj_rock
	global.__objectDepths[54] = 0; // obj_door
	global.__objectDepths[55] = 0; // obj_fireball2
	global.__objectDepths[56] = 0; // obj_enemy_wall
	global.__objectDepths[57] = 0; // obj_enemybullet
	global.__objectDepths[58] = 0; // obj_bone
	global.__objectDepths[59] = 0; // obj_boomerang
	global.__objectDepths[60] = 0; // obj_boomerang_r
	global.__objectDepths[61] = 0; // obj_chest
	global.__objectDepths[62] = 0; // obj_chest_large
	global.__objectDepths[63] = 0; // obj_bush
	global.__objectDepths[64] = 20000; // obj_bush_cut
	global.__objectDepths[65] = 0; // obj_sp_fragment
	global.__objectDepths[66] = 0; // obj_xp_grinder
	global.__objectDepths[67] = -2; // obj_bomb
	global.__objectDepths[68] = 0; // obj_sa


	global.__objectNames[0] = "obj_sword_d";
	global.__objectNames[1] = "obj_sword_l";
	global.__objectNames[2] = "obj_sword_r";
	global.__objectNames[3] = "obj_sword_u";
	global.__objectNames[4] = "obj_moblin";
	global.__objectNames[5] = "obj_darknut";
	global.__objectNames[6] = "obj_moblin2";
	global.__objectNames[7] = "obj_stalfos";
	global.__objectNames[8] = "obj_moblin_c";
	global.__objectNames[9] = "obj_octorok";
	global.__objectNames[10] = "obj_octorok2";
	global.__objectNames[11] = "obj_moblin_outpost";
	global.__objectNames[12] = "obj_gohma";
	global.__objectNames[13] = "obj_fairy";
	global.__objectNames[14] = "obj_heart_container";
	global.__objectNames[15] = "obj_health";
	global.__objectNames[16] = "obj_rupee_g";
	global.__objectNames[17] = "obj_rupee_b";
	global.__objectNames[18] = "obj_rupee_r";
	global.__objectNames[19] = "obj_poh";
	global.__objectNames[20] = "obj_arrow_pickup";
	global.__objectNames[21] = "obj_bomb_pickup";
	global.__objectNames[22] = "obj_magic";
	global.__objectNames[23] = "obj_bow";
	global.__objectNames[24] = "obj_rupee_wallet1";
	global.__objectNames[25] = "obj_rupee_wallet2";
	global.__objectNames[26] = "obj_rupee_wallet3";
	global.__objectNames[27] = "par_sword";
	global.__objectNames[28] = "par_moblin";
	global.__objectNames[29] = "par_enemy";
	global.__objectNames[30] = "par_enemy_projectile";
	global.__objectNames[31] = "obj_ps";
	global.__objectNames[32] = "obj_credits";
	global.__objectNames[33] = "obj_title";
	global.__objectNames[34] = "obj_pause";
	global.__objectNames[35] = "obj_variables";
	global.__objectNames[36] = "obj_twilight";
	global.__objectNames[37] = "par_menu";
	global.__objectNames[38] = "obj_player";
	global.__objectNames[39] = "obj_camera";
	global.__objectNames[40] = "obj_impa";
	global.__objectNames[41] = "obj_main_menu";
	global.__objectNames[42] = "obj_menu";
	global.__objectNames[43] = "obj_gameover";
	global.__objectNames[44] = "obj_costume";
	global.__objectNames[45] = "obj_solid";
	global.__objectNames[46] = "obj_solid_bomb";
	global.__objectNames[47] = "obj_boulder";
	global.__objectNames[48] = "obj_warrior";
	global.__objectNames[49] = "obj_explode";
	global.__objectNames[50] = "obj_arrow";
	global.__objectNames[51] = "obj_enemy_arrow";
	global.__objectNames[52] = "obj_fireball";
	global.__objectNames[53] = "obj_rock";
	global.__objectNames[54] = "obj_door";
	global.__objectNames[55] = "obj_fireball2";
	global.__objectNames[56] = "obj_enemy_wall";
	global.__objectNames[57] = "obj_enemybullet";
	global.__objectNames[58] = "obj_bone";
	global.__objectNames[59] = "obj_boomerang";
	global.__objectNames[60] = "obj_boomerang_r";
	global.__objectNames[61] = "obj_chest";
	global.__objectNames[62] = "obj_chest_large";
	global.__objectNames[63] = "obj_bush";
	global.__objectNames[64] = "obj_bush_cut";
	global.__objectNames[65] = "obj_sp_fragment";
	global.__objectNames[66] = "obj_xp_grinder";
	global.__objectNames[67] = "obj_bomb";
	global.__objectNames[68] = "obj_sa";


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
