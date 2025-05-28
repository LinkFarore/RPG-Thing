function unload_chunk(cx, cy) {
    var chunk_x = cx * chunk_size;
    var chunk_y = cy * chunk_size;
    var instances = ds_list_create(); // Creating a list to hold instances
    
    var _array = [];
    
    // Getting all instances in the chunk
    collision_rectangle_list(chunk_x, chunk_y, chunk_x + chunk_size, chunk_y + chunk_size, all, false, true, instances, false);
    
    for (var i = 0; i < ds_list_size(instances); i++) {
        var inst = ds_list_find_value(instances, i);
        with (inst) {
            var _struct;
            switch (inst.object_index) {
                case obj_moon:
                    _struct = {
                        object: object_get_name(object_index),
                        x: x,
                        y: y,
                        image_index: image_index,
                        image_speed: image_speed,
                        r: r,
                        g: g,
                        b: b,
                        rad: rad,
                        name: name,
                        col: col,
                        col_shade: col_shade,
                        col_light: col_light,
                        col2: col2,
                        col3: col3,
                        planet_base: planet_base,
                        planet_craters: planet_craters,
                        revolve_speed: revolve_speed,
                        revolve_direction: revolve_direction,
                        tethered: tethered,
                        parent_tethered: parent_tethered,
                        tether_distance: tether_distance,
                    };
                    break;
                
                case obj_planet:
                    _struct = {
                        object: object_get_name(object_index),
                        x: x,
                        y: y,
                        image_speed: image_speed,
                        r: r,
                        g: g,
                        b: b,
                        rad: rad,
                        name: name,
                        description: description,
                        faction: faction,
                        planet_size: planet_size,
                        planet_biome: planet_biome,
                        atmos_col: atmos_col,
                        water_col: water_col,
                        lava_col: lava_col,
                        lava_base_col: lava_base_col,
                        ice_base_col: ice_base_col,
                        col: col,
                        col_shade: col_shade,
                        col_light: col_light,
                        col2: col2,
                        col3: col3,
                        ring_col: ring_col,
                        has_moon: has_moon,
                        ring: ring,
                        planet_base: planet_base,
                        planet_islands: planet_islands,
                        planet_atmosphere: planet_atmosphere,
                        atmos_alpha: atmos_alpha,
                        planet_craters: planet_craters,
                        planet_rivers: planet_rivers,
                        planet_lake: planet_lake,
                        draw_name: draw_name,
                        tethered: tethered,
                        parent_tethered: parent_tethered,
                        revolve_speed: revolve_speed,
                        revolve_direction: revolve_direction,
                        tether_distance: tether_distance,
                    };
                    break;
                
                case obj_ally:
                    _struct = {
                        object: object_get_name(object_index),
                        x: x,
                        y: y,
                        image_speed: image_speed,
                        patrol: patrol,
                    };
                    break;
                
                case obj_player:
                    // Do not save the player
                    continue;
                
                case obj_fuel_ship:
                    _struct = {
                        object: object_get_name(object_index),
                        x: x,
                        y: y,
                        image_speed: image_speed,
                        patrol: patrol,
                        to_origin: to_origin,
                        to_patrol: to_patrol,
                        origin_x: origin_x,
                        origin_y: origin_y,
                        patrol_x: patrol_x,
                        patrol_y: patrol_y,
                    };
                    break;
                
                default:
                    _struct = {
                        object: object_get_name(object_index),
                        x: x,
                        y: y,
                        image_speed: image_speed,
                        image_index: image_index,
                        image_blend: image_blend,
                    };
                    break;
            }
            array_push(_array, _struct);
        }
    }
    
    var _string = json_stringify(_array);
    var _file = file_text_open_write(string(cx) + "," + string(cy) + ".txt");
    file_text_write_string(_file, _string);
    file_text_close(_file);
    
    // Destroying all instances in the chunk
    for (var i = 0; i < ds_list_size(instances); i++) {
        instance_destroy(instances[| i]);
    }
    
    ds_list_destroy(instances); // Destroying the list after use
}
