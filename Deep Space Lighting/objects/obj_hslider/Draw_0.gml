draw_self();

draw_set_color(c_white);
draw_set_font(fnt_gui);
draw_set_halign(fa_center);
draw_text(x,y,string_hash_to_newline(string(percentage)));