function scr_unload_chunk(cx, cy) {
    var chunk_x = cx * chunk_size;
    var chunk_y = cy * chunk_size;
    var instances = ds_list_create(); // Creating a list to hold instances
    
    // Getting all instances in the chunk
    collision_rectangle_list(chunk_x, chunk_y, chunk_x + chunk_size, chunk_y + chunk_size, all, false, true, instances, false);
    
    // Destroying all instances in the chunk
    for (var i = 0; i < ds_list_size(instances); i++) {
        instance_destroy(instances[| i]);
    }
    
    ds_list_destroy(instances); // Destroying the list after use
}
