function save_game() 
{
    array_create();
	var _array = [];
	
	with(obj_asteroid)
	{
		
		var _struct =
		{
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_speed: image_speed,
			image_index: image_index
			
		};
		
		array_push(_array,_struct);
	}
	
	with(obj_asteroid_small)
	{
		
		var _struct =
		{
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_speed: image_speed,
			image_index: image_index
			
		};
		
		array_push(_array,_struct);
	}
	
	with(obj_plasma)
	{
		
		var _struct =
		{
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index
			
		};
		
		array_push(_array,_struct);
	}
	
	with(obj_planet)
	{
		
		var _struct =
		{
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
			tether_distance: tether_distance
		};
		
		array_push(_array,_struct);
	}
	
	with(obj_sun)
	{
		
		var _struct =
		{
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index
			
		};
		
		array_push(_array,_struct);
	}
	
	with(obj_moon)
	{
		
		var _struct =
		{
			object: object_get_name(object_index),
			x: x,
			y: y,
			image_index: image_index,
			image_speed : image_speed,
			r : r,
			g : g,
			b : b,
			rad : rad,
			name : name,
			col : col,
			col_shade : col_shade,
			col_light : col_light,
			col2 : col2,
			col3 : col3,
			planet_base : planet_base,
			planet_craters : planet_craters,
			revolve_speed : revolve_speed,
			revolve_direction : revolve_direction,
			tethered : tethered,
			parent_tethered : parent_tethered,
			tether_distance : tether_distance
		};
		
		array_push(_array,_struct);
	}
	
	obj_pause.saving = true;
	obj_pause.alarm[1] = 150;
	
	var _string = json_stringify(_array);
	var _file = file_text_open_write("save.txt");
	file_text_write_string(_file,_string);
	file_text_close(_file);
}

/*function load_game()
{
		if (file_exists("save.txt"))
		{
			var _file = file_text_open_read("save.txt");
			var _json = file_text_read_string(_file);
			var _array = json_parse(_json);
			
			instance_destroy(obj_sun);
			instance_destroy(obj_planet);
			instance_destroy(obj_plasma);
			instance_destroy(obj_asteroid);
			
			for (var i = 0; i < array_length(_array); i+=1)
			{
				var _struct = _array[i];
				
				instance_create_layer(_struct.x,_struct.y,"Instances", asset_get_index(_struct.object), _struct);
			}
			
		}
		
}