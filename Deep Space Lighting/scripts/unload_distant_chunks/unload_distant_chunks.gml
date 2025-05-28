function unload_distant_chunks(_player_x, _player_y, _unload_distance) {
    var _chunk_keys = ds_map_keys(obj_chunk_manager.active_chunks);
    var _num_chunks = array_length_1d(_chunk_keys);

    for (var i = 0; i < _num_chunks; i++) {
        var _key = _chunk_keys[i];
        var _coords = string_split(_key, "_");
        var _chunk_x = real(_coords[0]);
        var _chunk_y = real(_coords[1]);
        
        var _distance = point_distance(_player_x, _player_y, _chunk_x * chunk_size, _chunk_y * chunk_size);
        
        if (_distance > _unload_distance) {
            // Unload the chunk
            unload_chunk(_chunk_x, _chunk_y);
            ds_map_delete(obj_chunk_manager.active_chunks, _key);
        }
    }
}