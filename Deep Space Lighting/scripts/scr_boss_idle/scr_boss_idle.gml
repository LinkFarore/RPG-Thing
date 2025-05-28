/// @description scr_enemy_ship_idle
function scr_boss_idle() {

	// Set some friction
	friction = .05;

	if (foe != -1 && instance_exists(foe)) {
	    if (distance_to_point(foe.x, foe.y) <= 240) 
	    {
	        state = "attack";
	    }
	}




}
