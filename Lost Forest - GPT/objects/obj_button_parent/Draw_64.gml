//Draw the button
draw_set_alpha(image_alpha);
draw_roundrect_colour(x-width/2,y-height/2,x+width/2,y+height/2,c_white,c_white,false);
draw_set_alpha(1);

//Set the font
draw_set_font(fnt_buttons);

//Draw the text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x-2,y-2,string_hash_to_newline(text));
draw_text(x+2,y+2,string_hash_to_newline(text));
draw_text(x+2,y-2,string_hash_to_newline(text));
draw_text(x-2,y+2,string_hash_to_newline(text));
draw_text_colour(x,y,string_hash_to_newline(text),c_white,c_white,c_white,c_white,1);

