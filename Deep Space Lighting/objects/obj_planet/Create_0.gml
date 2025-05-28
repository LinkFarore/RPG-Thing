cx = floor(x/chunk_size);
cy = floor(y/chunk_size);

was_loaded = false;
	
if file_exists(string(cx)+","+string(cy)+".txt")
{
	var _file = file_text_open_read(string(cx)+","+string(cy)+".txt");
	var _json = file_text_read_string(_file);
	var _array = json_parse(_json);
			
	for (var i = 0; i < array_length(_array); i+=1)
	{
		var _struct = _array[i];
		if _struct.object == obj_planet && _struct.x == x && _struct.y == y
		{
			image_speed = _struct.image_speed;
			r = _struct.r;
			g = _struct.g;
			b = _struct.b;
			rad = _struct.rad;
			name = _struct.name;
			description = _struct.description;
			faction = _struct.faction;
			planet_size = _struct.planet_size;
			planet_biome = _struct.planet_biome;
			atmos_col = _struct.atmos_col;
			water_col = _struct.water_col;
			lava_col = _struct.lava_col;
			lava_base_col = _struct.lava_base_col;
			ice_base_col = _struct.ice_base_col;
			col = _struct.col;
			col_shade = _struct.col_shade;
			col_light = _struct.col_light;
			col2 = _struct.col2;
			col3 = _struct.col3;
			ring_col = _struct.ring_col;
			has_moon = _struct.has_moon;
			ring = _struct.ring;
			planet_base = _struct.planet_base;
			planet_islands = _struct.planet_islands;
			planet_atmosphere = _struct.planet_atmosphere;
			atmos_alpha = _struct.atmos_alpha;
			planet_craters = _struct.planet_craters;
			planet_rivers = _struct.planet_rivers;
			planet_lake = _struct.planet_lake;
			draw_name = _struct.draw_name;
			tethered = _struct.tethered;
			parent_tethered = _struct.parent_tethered;
			revolve_speed = _struct.revolve_speed;
			revolve_direction = _struct.revolve_direction;
			tether_distance = _struct.tether_distance;
			was_loaded = true;
			alarm[1] = 1;
		}
	}
	file_text_close(_file);
}
else
{
	//state = "idle";
	image_speed = .3;
	r = irandom(255);
	g = irandom(255);
	b = irandom(255);
	rad = choose(120,100,80,60);
	name = "???";
	description = "This is a test."
	faction = 0;

	planet_size = "large";//choose("small", "medium", "large");
	planet_biome = choose("lava", "island", "river", "barren", "ice", "gas");
	if planet_biome = "gas"
	{
		ring = choose(true, false);	
	}
	else
	{
		ring = false;	
	}
		
	atmos_col = make_colour_hsv(irandom(255),irandom_range(64,128),irandom_range(192,255));
	water_col = make_colour_hsv(irandom_range(60,192),irandom_range(75,255),irandom_range(75,255));
	lava_col = make_colour_hsv(irandom_range(0,60),irandom_range(90,255),irandom_range(90,255));
	lava_base_col = make_colour_hsv(irandom_range(0,255),irandom_range(0,192),irandom_range(30,90));
	ice_base_col = make_colour_hsv(irandom_range(128,192),irandom_range(0,60),irandom_range(192,255));
	col = make_colour_rgb(r,g,b);
	col_shade = make_colour_hsv(colour_get_hue(col),colour_get_saturation(col),colour_get_value(col)/1.5);
	col_light = make_colour_hsv(colour_get_hue(col),colour_get_saturation(col),colour_get_value(col)*1.5);
	col2 = make_colour_hsv(colour_get_hue(col)-irandom_range(20,45),colour_get_saturation(col),colour_get_value(col)*1.25);
	col3 = make_colour_hsv(colour_get_hue(col)+irandom_range(20,45),colour_get_saturation(col),colour_get_value(col)/1.25);
	ring_col = make_colour_hsv(colour_get_hue(col),colour_get_saturation(col)/4,colour_get_value(col)/2);
	has_moon = false;

	switch(planet_biome)
	{
		case "lava":
		planet_base = choose(spr_base_large7,spr_base_large8,spr_base_large9);
		planet_craters = choose(spr_craters_large1,spr_craters_large2,spr_craters_large3,spr_craters_large4,spr_craters_large5);
		planet_rivers = choose(spr_river_large1,spr_river_large2,spr_river_large3,spr_river_large4,spr_river_large5,spr_river_large6,spr_river_large7,spr_river_large8,spr_river_large9);
		//These won't be used.
		planet_islands = choose(spr_islands_large1,spr_islands_large2,spr_islands_large3);
		planet_atmosphere = choose(spr_planet_atmos_large1,spr_planet_atmos_large2,spr_planet_atmos_large3,spr_planet_atmos_large4,spr_planet_atmos_large5,spr_planet_atmos_large6,spr_planet_atmos_large7);
		atmos_alpha = choose(1,.75,.5,.25);
		planet_lake = choose(spr_lake_large1,spr_lake_large2,spr_lake_large3,spr_lake_large4,spr_lake_large5);
				
		break;
				
		case "island":
		planet_base = choose(spr_base_large1,spr_base_large2,spr_base_large3);
		planet_islands = choose(spr_islands_large1,spr_islands_large2,spr_islands_large3);
		planet_atmosphere = choose(spr_planet_atmos_large1,spr_planet_atmos_large2,spr_planet_atmos_large3,spr_planet_atmos_large4,spr_planet_atmos_large5,spr_planet_atmos_large6,spr_planet_atmos_large7);
		atmos_alpha = choose(1,.75,.5,.25);
		//These won't be used.
		planet_craters = choose(spr_craters_large1,spr_craters_large2,spr_craters_large3,spr_craters_large4,spr_craters_large5);
		planet_rivers = choose(spr_river_large1,spr_river_large2,spr_river_large3,spr_river_large4,spr_river_large5,spr_river_large6,spr_river_large7,spr_river_large8,spr_river_large9);
		planet_lake = choose(spr_lake_large1,spr_lake_large2,spr_lake_large3,spr_lake_large4,spr_lake_large5);
				
		break;
				
		case "river":
		planet_base = choose(spr_base_large1,spr_base_large2,spr_base_large3);
		planet_rivers = choose(spr_river_large1,spr_river_large2,spr_river_large3,spr_river_large4,spr_river_large5,spr_river_large6,spr_river_large7,spr_river_large8,spr_river_large9);
		planet_atmosphere = choose(spr_planet_atmos_large1,spr_planet_atmos_large2,spr_planet_atmos_large3,spr_planet_atmos_large4,spr_planet_atmos_large5,spr_planet_atmos_large6,spr_planet_atmos_large7);
		atmos_alpha = choose(1,.75,.5,.25);
		//These won't be used.
		planet_craters = choose(spr_craters_large1,spr_craters_large2,spr_craters_large3,spr_craters_large4,spr_craters_large5);
		planet_islands = choose(spr_islands_large1,spr_islands_large2,spr_islands_large3);
		planet_lake = choose(spr_lake_large1,spr_lake_large2,spr_lake_large3,spr_lake_large4,spr_lake_large5);
				
		break;
				
		case "barren":
		planet_base = choose(spr_base_large10,spr_base_large11,spr_base_large12);
		planet_craters = choose(spr_craters_large1,spr_craters_large2,spr_craters_large3,spr_craters_large4,spr_craters_large5);
		//These won't be used.
		planet_rivers = choose(spr_river_large1,spr_river_large2,spr_river_large3,spr_river_large4,spr_river_large5,spr_river_large6,spr_river_large7,spr_river_large8,spr_river_large9);
		planet_islands = choose(spr_islands_large1,spr_islands_large2,spr_islands_large3);
		planet_atmosphere = choose(spr_planet_atmos_large1,spr_planet_atmos_large2,spr_planet_atmos_large3,spr_planet_atmos_large4,spr_planet_atmos_large5,spr_planet_atmos_large6,spr_planet_atmos_large7);
		atmos_alpha = choose(1,.75,.5,.25);
		planet_lake = choose(spr_lake_large1,spr_lake_large2,spr_lake_large3,spr_lake_large4,spr_lake_large5);
				
		break;
				
		case "ice":
		planet_base = choose(spr_base_large4,spr_base_large5,spr_base_large6);
		planet_lake = choose(spr_lake_large1,spr_lake_large2,spr_lake_large3,spr_lake_large4,spr_lake_large5);
		planet_atmosphere = choose(spr_planet_atmos_large1,spr_planet_atmos_large2,spr_planet_atmos_large3,spr_planet_atmos_large4,spr_planet_atmos_large5,spr_planet_atmos_large6,spr_planet_atmos_large7);
		atmos_alpha = choose(1,.75,.5,.25);
		//These won't be used.
		planet_craters = choose(spr_craters_large1,spr_craters_large2,spr_craters_large3,spr_craters_large4,spr_craters_large5);
		planet_rivers = choose(spr_river_large1,spr_river_large2,spr_river_large3,spr_river_large4,spr_river_large5,spr_river_large6,spr_river_large7,spr_river_large8,spr_river_large9);
		planet_islands = choose(spr_islands_large1,spr_islands_large2,spr_islands_large3);
				
		break;
				
		case "gas":
		planet_base = choose(spr_base_large1,spr_base_large2,spr_base_large3);
		planet_islands = choose(spr_islands_large1,spr_islands_large2,spr_islands_large3);
		planet_atmosphere = choose(spr_planet_atmos_large1,spr_planet_atmos_large2,spr_planet_atmos_large3,spr_planet_atmos_large4,spr_planet_atmos_large5,spr_planet_atmos_large6,spr_planet_atmos_large7);
		atmos_alpha = choose(1,.75,.5,.25);
		//These won't be used.
		planet_lake = choose(spr_lake_large1,spr_lake_large2,spr_lake_large3,spr_lake_large4,spr_lake_large5);
		planet_craters = choose(spr_craters_large1,spr_craters_large2,spr_craters_large3,spr_craters_large4,spr_craters_large5);
		planet_rivers = choose(spr_river_large1,spr_river_large2,spr_river_large3,spr_river_large4,spr_river_large5,spr_river_large6,spr_river_large7,spr_river_large8,spr_river_large9);
				
		break;
	}

	scr_name_generator();
	
	tethered = false;
	parent_tethered = noone;
	revolve_speed = .05;
	revolve_direction = choose(90,-90);
	tether_distance = 0;
}

sprite_index = planet_base;
draw_name = false;
alarm[1] = 1;
show_debug_message(name+" is running it's create event");