// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function split_into_cells(count){
///@arg count

	var num = argument0;
	var angle_step = 360 / num;
	var new_size = enemy_size / num;

	for (var i = 0; i < num; i++) {
		var ang = angle_step * i;
		var dist = new_size * 4;
		var spawn_x = x + lengthdir_x(dist, ang);
		var spawn_y = y + lengthdir_y(dist, ang);

		var new_cell = instance_create_layer(spawn_x, spawn_y, layer, object);
		new_cell.enemy_size = new_size;
		new_cell.border_size = new_size / 12;
		new_cell.image_angle = ang;
		new_cell.owner = owner; // share the same owner
	}

	// Destroy the original (optional if you want it to become 1 of the cells)
	instance_destroy();

}