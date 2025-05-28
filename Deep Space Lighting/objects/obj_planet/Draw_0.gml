/// @description  Draw event for the planet



// Draw the label for the planet name if the mouse is over the planet
if (draw_name) 
{
	draw_set_font(fnt_menu);
	
	draw_line_width_colour(x,y,x+sprite_width/2,y+sprite_height/2,2,c_white,c_white);
	
	if has_moon == true
	{
		draw_rectangle_colour(x+sprite_width/2,y+sprite_height/2,x+(sprite_width/2)+string_width(string_hash_to_newline(name)),y+(sprite_height/2)+string_height(string_hash_to_newline(name))+1,c_green,c_green,c_green,c_green,false);	
	}
	else
	{
		draw_rectangle_colour(x+sprite_width/2,y+sprite_height/2,x+(sprite_width/2)+string_width(string_hash_to_newline(name)),y+(sprite_height/2)+string_height(string_hash_to_newline(name))+1,c_red,c_red,c_red,c_red,false);	
	}
	
	//draw_rectangle_colour(x+sprite_width/2,y+sprite_height/2,x+(sprite_width/2)+string_width(string_hash_to_newline(name)),y+(sprite_height/2)+string_height(string_hash_to_newline(name))+1,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
	
	draw_rectangle_colour(x+sprite_width/2,y+sprite_height/2,x+(sprite_width/2)+string_width(string_hash_to_newline(name))+1,y+(sprite_height/2)+string_height(string_hash_to_newline(name))+1,c_white,c_white,c_white,c_white,true); 

	draw_set_font(fnt_menu);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_colour(c_white);
	draw_text(x+sprite_width/2+3,y+sprite_height/2+2,string_hash_to_newline(name));
}
else
{
	//don't draw the name box
}

if instance_exists(parent_tethered)
{
draw_set_circle_precision(32);
draw_circle_color(parent_tethered.x,parent_tethered.y,tether_distance+sprite_width+(parent_tethered.sprite_width/2),c_white,c_white,true);
}

//Draw the sprite for the planet
switch(planet_biome)
{
	case "lava":
		draw_sprite_ext(planet_base,-1,x,y,image_xscale,image_yscale,0,lava_base_col,1);
		draw_sprite_ext(planet_craters,-1,x,y,image_xscale,image_yscale,0,col_shade,1);
		draw_sprite_ext(planet_rivers,-1,x,y,image_xscale,image_yscale,0,lava_col,1);
	
	break;
	
	case "island":
		draw_sprite_ext(planet_base,-1,x,y,image_xscale,image_yscale,0,water_col,1);
		draw_sprite_ext(planet_islands,-1,x,y,image_xscale,image_yscale,0,col,1);
		draw_sprite_ext(planet_atmosphere,-1,x,y,image_xscale,image_yscale,0,atmos_col,atmos_alpha);
	
	break;
	
	case "river":
		draw_sprite_ext(planet_base,-1,x,y,image_xscale,image_yscale,0,col,1);
		draw_sprite_ext(planet_rivers,-1,x,y,image_xscale,image_yscale,0,water_col,1);
		draw_sprite_ext(planet_atmosphere,-1,x,y,image_xscale,image_yscale,0,atmos_col,atmos_alpha);
	
	break;
	
	case "barren":
		draw_sprite_ext(planet_base,-1,x,y,image_xscale,image_yscale,0,col,1);
		draw_sprite_ext(planet_craters,-1,x,y,image_xscale,image_yscale,0,col_shade,1);
	
	break;
	
	case "ice":
		draw_sprite_ext(planet_base,-1,x,y,image_xscale,image_yscale,0,ice_base_col,1);
		draw_sprite_ext(planet_lake,-1,x,y,image_xscale,image_yscale,0,make_colour_hsv(colour_get_hue(ice_base_col)+irandom_range(-20,20),colour_get_saturation(ice_base_col)+10,colour_get_value(ice_base_col)-10),1);
		draw_sprite_ext(planet_atmosphere,-1,x,y,image_xscale,image_yscale,0,atmos_col,atmos_alpha);
	
	break;
	
	case "gas":
		draw_sprite_ext(planet_base,-1,x,y,image_xscale,image_yscale,0,water_col,1);
		draw_sprite_ext(planet_islands,-1,x,y,image_xscale,image_yscale,0,col2,1);
		draw_sprite_ext(planet_atmosphere,-1,x,y,image_xscale,image_yscale,0,atmos_col,atmos_alpha);
	
	break;
}

if shop = true
{
    draw_set_colour(c_black);
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);
}

if selected && !shop && obj_player.target == id
{
    draw_roundrect_colour(x-string_width(string_hash_to_newline(name))/2-10,y-string_height(string_hash_to_newline(name))/2-10,x+string_width(string_hash_to_newline(name))/2+10,y+string_height(string_hash_to_newline(name))/2+10,c_white,c_white,false);
    draw_roundrect_colour(x-string_width(string_hash_to_newline(name))/2-7,y-string_height(string_hash_to_newline(name))/2-7,x+string_width(string_hash_to_newline(name))/2+7,y+string_height(string_hash_to_newline(name))/2+7,c_blue,c_blue,false);
    draw_set_font(fnt_gui);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_text(x,y+2,string_hash_to_newline(name));
}

//If the planet has a ring draw the ring sprite
/*if (ring)
{
    switch(image_index)
    {
        case 0: draw_sprite_ext(spr_planet_ring_dark,0,x,y,image_xscale,image_yscale,0,col2,1);
                draw_sprite_ext(spr_planet_ring_light,0,x,y,image_xscale,image_yscale,0,col3,1); break;
        case 6: draw_sprite_ext(spr_planet_ring2_dark,0,x,y,image_xscale,image_yscale,0,col2,1);
                draw_sprite_ext(spr_planet_ring2_light,0,x,y,image_xscale,image_yscale,0,col3,1); break;
    }
}

//Draw the water sprite
if image_index = 1
{
   draw_sprite_ext(spr_planet_water,0,x,y,image_xscale,image_yscale,0,water_col,1);
}

if image_index = 2
{
   draw_sprite_ext(spr_planet_water,1,x,y,image_xscale,image_yscale,0,water_col,1);
}

if image_index = 7
{
   draw_sprite_ext(spr_planet_water,2,x,y,image_xscale,image_yscale,0,water_col,1);
}

if image_index = 9
{
   draw_sprite_ext(spr_planet_water,3,x,y,image_xscale,image_yscale,0,water_col,1);
}*/