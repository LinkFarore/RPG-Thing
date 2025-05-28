// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_chunk(cx, cy){
	var chunk_x = cx * chunk_size;
	var chunk_y = cy * chunk_size;
	var chunk_center_x = chunk_x + chunk_size / 2;
	var chunk_center_y = chunk_y + chunk_size / 2;
	
	for (var i = 0; i < 30; i += 1)
	{
		instance_create(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), obj_tree_base);
	}
	
	for (var r = 0; r < 3; r += 1)
	{
		instance_create(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), obj_enemy_rat);
	}
}