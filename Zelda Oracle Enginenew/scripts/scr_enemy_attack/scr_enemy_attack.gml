function scr_enemy_attack() {

	if instance_exists(target) {
	    if mp_grid_path(global.grid, path, x, y, target.x, target.y, true) {
	        path_start(path, 1.5, path_action_stop, false);
	    }
	}

}