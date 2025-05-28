// Current chunk where the player is located
var _player_chunk_x = floor(obj_player.x / chunk_size);
var _player_chunk_y = floor(obj_player.y / chunk_size);

// Load chunks around the player
for (var _x = _player_chunk_x - load_distance; _x <= _player_chunk_x + load_distance; _x++) {
    for (var _y = _player_chunk_y - load_distance; _y <= _player_chunk_y + load_distance; _y++) {
        var key = string(_x) + "_" + string(_y);
        if (!ds_map_exists(active_chunks, key)) {
            scr_load_chunk(_x, _y);
            active_chunks[? key] = true;
        }
    }
}

// Unload distant chunks
var key = ds_map_find_first(active_chunks);
while (key != undefined) {
    var parts = string_split(key, "_");
    var cx = real(parts[0]);
    var cy = real(parts[1]);
    
    if (abs(cx - _player_chunk_x) > load_distance || abs(cy - _player_chunk_y) > load_distance) {
        scr_unload_chunk(cx, cy);
        ds_map_delete(active_chunks, key);
    }
    
    key = ds_map_find_next(active_chunks, key);
}
