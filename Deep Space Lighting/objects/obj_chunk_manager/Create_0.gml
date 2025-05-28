load_distance = 2;
active_chunks = ds_map_create(); // Map to keep track of active chunks

if (load && file_exists("save.ini")) {
	scr_load();
} else {
    instance_create_layer(0, 0, "Instances", obj_player);
}