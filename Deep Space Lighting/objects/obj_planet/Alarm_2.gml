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