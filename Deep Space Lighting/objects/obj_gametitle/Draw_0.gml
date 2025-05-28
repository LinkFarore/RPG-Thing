__background_set( e__BG.VSpeed, 0, .25 );
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_title);
draw_text_ext_colour(room_width/2,room_height/2-142,string_hash_to_newline(title),string_height(string_hash_to_newline(title))/3,string_width(string_hash_to_newline(title)),c_dkgray,c_dkgray,c_dkgray,c_dkgray,a);
draw_text_ext_colour(room_width/2,room_height/2-150,string_hash_to_newline(title),string_height(string_hash_to_newline(title))/3,string_width(string_hash_to_newline(title)),c_white,c_white,c_gray,c_gray,a);
draw_set_font(fnt_menu);
draw_text_ext_colour(room_width/2,room_height/2-58,string_hash_to_newline(title2),string_height(string_hash_to_newline(title2))/3,string_width(string_hash_to_newline(title2)),c_black,c_black,c_black,c_black,a);
draw_text_ext_colour(room_width/2,room_height/2-60,string_hash_to_newline(title2),string_height(string_hash_to_newline(title2))/3,string_width(string_hash_to_newline(title2)),c_white,c_white,c_gray,c_gray,a);

if (!cont)
{
    draw_set_font(fnt_menu);
	if gamepad_is_connected(0)
	{
		draw_text_colour(room_width/2,room_height/2+150,string_hash_to_newline("Press Start"),c_white,c_white,c_gray,c_gray,aa); 
	}
	else
	{
	    draw_text_colour(room_width/2,room_height/2+150,string_hash_to_newline("Press Space"),c_white,c_white,c_gray,c_gray,aa);
	}
}

draw_set_colour(c_black);

