function load_chunk(cx, cy) {
    var chunk_x = cx * chunk_size;
    var chunk_y = cy * chunk_size;
    var chunk_center_x = chunk_x + chunk_size / 2;
    var chunk_center_y = chunk_y + chunk_size / 2;
	
	
	if (file_exists(string(cx) + "," + string(cy) + ".txt")) {
		var _file = file_text_open_read(string(cx) + "," + string(cy) + ".txt");
		var _json = file_text_read_string(_file);
		var _array = json_parse(_json);
			
		for (var i = 0; i < array_length(_array); i += 1) {
			var _struct = _array[i];
			
			var inst = instance_create_layer(_struct.x, _struct.y, "Instances", asset_get_index(_struct.object), _struct);
			inst.image_speed = _struct.image_speed;
			
			if (_struct.object == obj_moon) {
				with (inst) {
					image_speed = _struct.image_speed;
					r = _struct.r;
					g = _struct.g;
					b = _struct.b;
					rad = _struct.rad;
					name = _struct.name;
					faction = _struct.faction;
					col = _struct.col;
					col_shade = _struct.col_shade;
					col_light = _struct.col_light;
					col2 = _struct.col2;
					col3 = _struct.col3;
					planet_base = _struct.planet_base;
					planet_craters = _struct.planet_craters;
					revolve_speed = _struct.revolve_speed;
					revolve_direction = _struct.revolve_direction;
				}
			}
			
			if (_struct.object == obj_ally) {
				with (inst) {
					patrol = _struct.patrol;
				}
			}
			
			if (_struct.object == obj_fuel_ship) {
				with (inst) {
					patrol = _struct.patrol;
					to_origin = _struct.to_origin;
					to_patrol = _struct.to_patrol;
					origin_x = _struct.origin_x;
					origin_y = _struct.origin_y;
					patrol_x = _struct.patrol_x;
					patrol_y = _struct.patrol_y;
				}
			}
		}
		
		file_text_close(_file);
		scr_enemy_spawn(cx, cy);
		scr_patrol_spawn(cx, cy);
			
	}
	else {
	    // Randomly determine the type of chunk
	    var chunk_type = irandom(6); // 0: Solar System, 1: Asteroid Field, 2: Plasma Storm, 3: Station, 4: Blackhole, 5: Whitehole, 6: Debris Field

	    switch (chunk_type) {
	        case 0: // Solar System Chunk
	            // Script: create_solar_system

	            /// Create Solar System
	            var numLayers = irandom(3) + 2; // Vary the number of layers between 3 and 5
	            var layerSpacing = 1000; // 1000 pixels spacing between layers
	            var maxSystemWidth = 10000; // Total width of the solar system

	            // Create the sun
	            instance_create(chunk_center_x, chunk_center_y, obj_sun);

	            // Calculate the maximum radius for the "deadzone"
	            var deadzoneRadius = 1000;

	            for (var i = 0; i < numLayers; i++) {
	                // Determine if the layer should have planets or asteroid rings
	                var hasPlanets = irandom_range(0, 3) < 3;
	    
	                if (hasPlanets) {
	                    // Create planets
	                    var layerWidth = irandom_range(200, 500); // Vary the width of each layer
	                    var layerRadius = deadzoneRadius + (i * layerSpacing) + (layerWidth / 2);
	        
	                    // Ensure the total system width does not exceed maxSystemWidth
	                    if (layerRadius + (layerWidth / 2) > maxSystemWidth) {
	                        layerRadius = maxSystemWidth - (layerWidth / 2);
	                    }
	        
	                    var numPlanets = 1; // Vary the number of planets in the layer
	        
	                    for (var j = 0; j < numPlanets; j++) {
	                        var angle = random(360);
	                        var xx = layerRadius * dcos(angle);
	                        var yy = layerRadius * dsin(angle);
	            
	                        // Create planets
	                        var temp_planet = instance_create(chunk_center_x + xx, chunk_center_y + yy, obj_planet);
	                        var has_moon = irandom_range(0, 3) < 3;
	                        
	                        if (has_moon) {
	                            instance_create(temp_planet.x + temp_planet.sprite_width * 2, temp_planet.y + temp_planet.sprite_height * 2, obj_moon);
	                            temp_planet.has_moon = true;
	                        }
	                    }
	                } else {
	                    // Create asteroid rings
	                    var layerRadius = deadzoneRadius + (i * layerSpacing);
	                    var numAsteroids = irandom(70) + 3; // Vary the number of asteroids in the layer
	        
	                    for (var k = 0; k < numAsteroids; k++) {
	                        var angle = random(360);
	                        var xx = layerRadius * dcos(angle);
	                        var yy = layerRadius * dsin(angle);
	            
	                        // Create asteroids
	                        if (random(2) < 1) {
	                            instance_create((xx + choose(-40, -30, -20, -10, 0, 10, 20, 30, 40)) + chunk_center_x, (yy + choose(-40, -30, -20, -10, 0, 10, 20, 30, 40)) + chunk_center_y, obj_asteroid);
	                        } else {
	                            instance_create((xx + choose(-40, -30, -20, -10, 0, 10, 20, 30, 40)) + chunk_center_x, (yy + choose(-40, -30, -20, -10, 0, 10, 20, 30, 40)) + chunk_center_y, obj_asteroid_small);
	                        }
	                    }
	                }
	            }
	            
	            scr_enemy_spawn(cx, cy);
	            scr_patrol_spawn(cx, cy);
				scr_save_chunk(cx, cy);
	            break;
	        
	        case 1: // Asteroid Field
	            for (var i = 0; i < 20; i += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_asteroid_small);
	            }
	            
	            for (var i = 0; i < 8; i += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_asteroid);
	            }
	            
	            scr_enemy_spawn(cx, cy);
	            //scr_patrol_spawn(cx, cy);
				scr_save_chunk(cx, cy);
	            break;
	        
	        case 2: // Plasma Storm
	            for (var i = 0; i < 50; i += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_asteroid_small);
	            }
	            
	            for (var i = 0; i < 50; i += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_plasma);
	            }
	            
	            scr_enemy_spawn(cx, cy);
	            //scr_patrol_spawn(cx, cy);
				scr_save_chunk(cx, cy);
	            break;
	        
	        case 3: // Space Station
	            instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_station);
	            
	            for (var i = 0; i < 15; i += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_asteroid_small);
	            }
	            
	            for (var i = 0; i < 5; i += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_asteroid);
	            }
	            
	            scr_enemy_spawn(cx, cy);
	            scr_patrol_spawn(cx, cy);
				scr_save_chunk(cx, cy);
	            break;
	        
	        case 4: // Blackhole
	            instance_create_layer(chunk_center_x + irandom(chunk_size / 2) * choose(-1, 1), chunk_center_y + irandom(chunk_size / 2) * choose(-1, 1), "Instances", obj_blackhole);
	            
	            for (var i = 0; i < 10; i += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_asteroid_small);
	            }
	            
	            scr_enemy_spawn(cx, cy);
	            //scr_patrol_spawn(cx, cy);
				scr_save_chunk(cx, cy);
	            break;
	        
	        case 5: // Whitehole
	            instance_create_layer(chunk_center_x + irandom(chunk_size / 2) * choose(-1, 1), chunk_center_y + irandom(chunk_size / 2) * choose(-1, 1), "Instances", obj_whitehole);
	            
	            for (var i = 0; i < 10; i += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_asteroid_small);
	            }
	            
	            scr_enemy_spawn(cx, cy);
	            //scr_patrol_spawn(cx, cy);
				scr_save_chunk(cx, cy);
	            break;
	            
	        case 6: // Debris field
	            for (var i = 0; i < 20; i += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_asteroid);
	            }
	            
	            for (var j = 0; j < 40; j += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_asteroid_small);
	            }
	            
	            for (var k = 0; k < 40; k += 1) {
	                instance_create_layer(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size), "Instances", obj_gib);
	            }
	            
	            scr_enemy_spawn(cx, cy);
	            //scr_patrol_spawn(cx, cy);
				scr_save_chunk(cx, cy);
	            break;
	    }
		
	    //unload_chunk(cx, cy);
	    instance_activate_object(obj_player);
	}
}