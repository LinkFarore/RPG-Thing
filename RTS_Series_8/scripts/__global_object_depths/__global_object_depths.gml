function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_view_controller
	global.__objectDepths[1] = 0; // obj_ps
	global.__objectDepths[2] = 0; // obj_ship
	global.__objectDepths[3] = 0; // obj_player_ship
	global.__objectDepths[4] = 0; // obj_enemy_ship
	global.__objectDepths[5] = 0; // obj_player_worker
	global.__objectDepths[6] = 0; // obj_player_fighter
	global.__objectDepths[7] = 0; // obj_enemy_fighter
	global.__objectDepths[8] = 0; // obj_target
	global.__objectDepths[9] = -100; // obj_mouse
	global.__objectDepths[10] = 0; // obj_weapon
	global.__objectDepths[11] = 0; // obj_laser
	global.__objectDepths[12] = 0; // obj_enemy_weapon
	global.__objectDepths[13] = 0; // obj_enemy_laser
	global.__objectDepths[14] = 0; // obj_rock
	global.__objectDepths[15] = 1; // obj_station
	global.__objectDepths[16] = 0; // obj_globals
	global.__objectDepths[17] = -90; // obj_ship_creation_button_parent
	global.__objectDepths[18] = -90; // obj_worker_button
	global.__objectDepths[19] = -90; // obj_fighter_button


	global.__objectNames[0] = "obj_view_controller";
	global.__objectNames[1] = "obj_ps";
	global.__objectNames[2] = "obj_ship";
	global.__objectNames[3] = "obj_player_ship";
	global.__objectNames[4] = "obj_enemy_ship";
	global.__objectNames[5] = "obj_player_worker";
	global.__objectNames[6] = "obj_player_fighter";
	global.__objectNames[7] = "obj_enemy_fighter";
	global.__objectNames[8] = "obj_target";
	global.__objectNames[9] = "obj_mouse";
	global.__objectNames[10] = "obj_weapon";
	global.__objectNames[11] = "obj_laser";
	global.__objectNames[12] = "obj_enemy_weapon";
	global.__objectNames[13] = "obj_enemy_laser";
	global.__objectNames[14] = "obj_rock";
	global.__objectNames[15] = "obj_station";
	global.__objectNames[16] = "obj_globals";
	global.__objectNames[17] = "obj_ship_creation_button_parent";
	global.__objectNames[18] = "obj_worker_button";
	global.__objectNames[19] = "obj_fighter_button";


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
