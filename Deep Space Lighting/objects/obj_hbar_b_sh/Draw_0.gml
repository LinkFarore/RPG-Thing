draw_self();

draw_set_color(c_blue);
draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_text(x+sprite_width-64,y,string_hash_to_newline("B"));
draw_text(x+sprite_width,y,string(global.temp_b_sh));