cx = floor(x/chunk_size);
cy = floor(y/chunk_size);

planet_base = choose(spr_base_large10,spr_base_large11,spr_base_large12);
planet_craters = choose(spr_craters_large1,spr_craters_large2,spr_craters_large3,spr_craters_large4,spr_craters_large5);
	
if file_exists(string(cx)+","+string(cy)+".txt")
{
	var _file = file_text_open_read(string(cx)+","+string(cy)+".txt");
	var _json = file_text_read_string(_file);
	var _array = json_parse(_json);
			
	for (var i = 0; i < array_length(_array); i+=1)
	{
		var _struct = _array[i];
		if _struct.object == obj_moon && _struct.x == x && _struct.y == y
		{
			image_speed = _struct.image_speed;
			
			r = _struct.r;
			g = _struct.g;
			b = _struct.b;
			rad = _struct.rad;
			name = _struct.name;
			faction = 0;

			col = _struct.col;
			col_shade = _struct.col_shade;
			col_light = _struct.col_light;
			col2 = _struct.col2;
			col3 = _struct.col3;
			
			planet_base = _struct.planet_base;
			planet_craters = _struct.planet_craters;
			draw_name = _struct.draw_name;
			tethered = _struct.tethered;
			parent_tethered = _struct.parent_tethered;
			revolve_speed = _struct.revolve_speed;
			revolve_direction = _struct.revolve_direction;
			tether_distance = _struct.tether_distance;
			alarm[1] = 1;
		}
		//Adding an else statement here to test
		else
		{
			image_speed = .3;
			r = irandom(255);
			g = irandom(255);
			b = irandom(255);
			rad = choose(120,100,80,60);
			name = "???";
		
			col = make_colour_rgb(r,g,b);
			col_shade = make_colour_hsv(colour_get_hue(col),colour_get_saturation(col),colour_get_value(col)/1.5);
			col_light = make_colour_hsv(colour_get_hue(col),colour_get_saturation(col),colour_get_value(col)*1.5);
			col2 = make_colour_hsv(colour_get_hue(col)-irandom_range(20,45),colour_get_saturation(col),colour_get_value(col)*1.25);
			col3 = make_colour_hsv(colour_get_hue(col)+irandom_range(20,45),colour_get_saturation(col),colour_get_value(col)/1.25);
	
			planet_base = choose(spr_base_large10,spr_base_large11,spr_base_large12);
			planet_craters = choose(spr_craters_large1,spr_craters_large2,spr_craters_large3,spr_craters_large4,spr_craters_large5);

			scr_name_generator();
	
			tethered = false;
			parent_tethered = noone;
			revolve_speed = .05;
			revolve_direction = choose(90,-90);
			tether_distance = 0;
		}
	}
	file_text_close(_file);
}
else
{
	image_speed = .3;
	r = irandom(255);
	g = irandom(255);
	b = irandom(255);
	rad = choose(120,100,80,60);
	name = "???";
		
	col = make_colour_rgb(r,g,b);
	col_shade = make_colour_hsv(colour_get_hue(col),colour_get_saturation(col),colour_get_value(col)/1.5);
	col_light = make_colour_hsv(colour_get_hue(col),colour_get_saturation(col),colour_get_value(col)*1.5);
	col2 = make_colour_hsv(colour_get_hue(col)-irandom_range(20,45),colour_get_saturation(col),colour_get_value(col)*1.25);
	col3 = make_colour_hsv(colour_get_hue(col)+irandom_range(20,45),colour_get_saturation(col),colour_get_value(col)/1.25);
	
	planet_base = choose(spr_base_large10,spr_base_large11,spr_base_large12);
	planet_craters = choose(spr_craters_large1,spr_craters_large2,spr_craters_large3,spr_craters_large4,spr_craters_large5);

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