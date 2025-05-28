draw_sprite(spr_base,spr_sub_base,x,y);
draw_sprite(spr_cross,spr_sub_cross,x,y);

// Draw the label for the planet name if the mouse is over the planet
if (draw_name) 
{
	draw_set_font(fnt_menu);
	
	draw_line_width_colour(x,y,x+sprite_width/2,y+sprite_height/2,2,c_white,c_white);
	
	if label == true
	{
		draw_rectangle_colour(x+sprite_width/2,y+sprite_height/2,x+(sprite_width/2)+string_width(string_hash_to_newline(name_num)),y+(sprite_height/2)+string_height(string_hash_to_newline(name_num))+1,c_green,c_green,c_green,c_green,false);	
	}
	else
	{
		draw_rectangle_colour(x+sprite_width/2,y+sprite_height/2,x+(sprite_width/2)+string_width(string_hash_to_newline(name_num)),y+(sprite_height/2)+string_height(string_hash_to_newline(name_num))+1,c_red,c_red,c_red,c_red,false);	
	}
	
	
	draw_rectangle_colour(x+sprite_width/2,y+sprite_height/2,x+(sprite_width/2)+string_width(string_hash_to_newline(name_num))+1,y+(sprite_height/2)+string_height(string_hash_to_newline(name_num))+1,c_white,c_white,c_white,c_white,true); 

	draw_set_font(fnt_menu);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_colour(c_white);
	draw_text(x+sprite_width/2+3,y+sprite_height/2+2,string_hash_to_newline(name_num));
}
else
{
	//don't draw the name box
}