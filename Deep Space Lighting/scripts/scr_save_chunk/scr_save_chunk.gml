function scr_save_chunk(cx, cy) {
    var chunk_x = cx * chunk_size;
    var chunk_y = cy * chunk_size;
    var instances = ds_list_create();
    
    collision_rectangle_list(chunk_x, chunk_y, chunk_x + chunk_size, chunk_y + chunk_size, all, false, true, instances, false);
    
    var object_data = [];
    
    for (var i = 0; i < ds_list_size(instances); i++) {
        var inst = ds_list_find_value(instances, i);
        var _struct;
        switch (inst.object_index) {
            case obj_moon:
                _struct = {
                    object: object_get_name(obj_moon),
                    x: inst.x,
                    y: inst.y,
                    image_index: inst.image_index,
                    image_speed: inst.image_speed,
                    r: inst.r,
                    g: inst.g,
                    b: inst.b,
                    rad: inst.rad,
                    name: inst.name,
                    col: inst.col,
                    col_shade: inst.col_shade,
                    col_light: inst.col_light,
                    col2: inst.col2,
                    col3: inst.col3,
                    planet_base: inst.planet_base,
                    planet_craters: inst.planet_craters,
                    revolve_speed: inst.revolve_speed,
                    revolve_direction: inst.revolve_direction,
                    tethered: inst.tethered,
                    parent_tethered: inst.parent_tethered,
                    tether_distance: inst.tether_distance,
                };
                break;
            case obj_planet:
                _struct = {
                    object: object_get_name(obj_planet),
                    x: inst.x,
                    y: inst.y,
                    image_speed: inst.image_speed,
                    r: inst.r,
                    g: inst.g,
                    b: inst.b,
                    rad: inst.rad,
                    name: inst.name,
                    description: inst.description,
                    faction: inst.faction,
                    planet_size: inst.planet_size,
                    planet_biome: inst.planet_biome,
                    atmos_col: inst.atmos_col,
                    water_col: inst.water_col,
                    lava_col: inst.lava_col,
                    lava_base_col: inst.lava_base_col,
                    ice_base_col: inst.ice_base_col,
                    col: inst.col,
                    col_shade: inst.col_shade,
                    col_light: inst.col_light,
                    col2: inst.col2,
                    col3: inst.col3,
                    ring_col: inst.ring_col,
                    has_moon: inst.has_moon,
                    ring: inst.ring,
                    planet_base: inst.planet_base,
                    planet_islands: inst.planet_islands,
                    planet_atmosphere: inst.planet_atmosphere,
                    atmos_alpha: inst.atmos_alpha,
                    planet_craters: inst.planet_craters,
                    planet_rivers: inst.planet_rivers,
                    planet_lake: inst.planet_lake,
                    draw_name: inst.draw_name,
                    tethered: inst.tethered,
                    parent_tethered: inst.parent_tethered,
                    revolve_speed: inst.revolve_speed,
                    revolve_direction: inst.revolve_direction,
                    tether_distance: inst.tether_distance,
                };
                break;
            case obj_ally:
                _struct = {
                    object: object_get_name(obj_ally),
                    x: inst.x,
                    y: inst.y,
                    image_speed: inst.image_speed,
                    patrol: inst.patrol,
                    // Add other ally properties as needed
                };
                break;
            case obj_player:
                continue;
            case obj_fuel_ship:
                _struct = {
                    object: object_get_name(obj_fuel_ship),
                    x: inst.x,
                    y: inst.y,
                    image_speed: inst.image_speed,
                    patrol: inst.patrol,
                    to_origin: inst.to_origin,
                    to_patrol: inst.to_patrol,
                    origin_x: inst.origin_x,
                    origin_y: inst.origin_y,
                    patrol_x: inst.patrol_x,
                    patrol_y: inst.patrol_y,
                    // Add other fuel ship properties as needed
                };
                break;
            default:
                _struct = {
                    object: object_get_name(inst.object_index),
                    x: inst.x,
                    y: inst.y,
                    image_speed: inst.image_speed,
                    image_index: inst.image_index,
                    image_blend: inst.image_blend,
                    // Add other default properties as needed
                };
                break;
        }
        array_push(object_data, _struct);
    }
    
    // Encode object_data to JSON
    var json_data = json_stringify(object_data);
    
    // Write JSON data to file
    var file_name = string(cx) + "," + string(cy) + ".txt";
    var file = file_text_open_write(file_name);
    file_text_write_string(file, json_data);
    file_text_close(file);
    
    ds_list_destroy(instances);
}