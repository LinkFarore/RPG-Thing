/// @description  Draw event for the planet


// Draw the label for the planet name if the mouse is over the planet
if (draw_name) 
{
	draw_set_font(fnt_menu);
	
	draw_line_width_colour(x,y,x+sprite_width/2,y+sprite_height/2,2,c_white,c_white);
	
	draw_rectangle_colour(x+sprite_width/2,y+sprite_height/2,x+(sprite_width/2)+string_width(string_hash_to_newline(name)),y+(sprite_height/2)+string_height(string_hash_to_newline(name))+1,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
	
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

/*if instance_exists(parent_tethered)
{
draw_circle_color(parent_tethered.x,parent_tethered.y,(tether_distance*2)-(sprite_width/2)+16,c_white,c_white,true);
}*/

//Draw the sprite for the moon
draw_sprite_ext(planet_base,-1,x,y,image_xscale/2,image_yscale/2,0,col,1);
draw_sprite_ext(planet_craters,-1,x,y,image_xscale/2,image_yscale/2,0,col_shade,1);