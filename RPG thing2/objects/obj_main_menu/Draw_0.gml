draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);
draw_set_colour(c_white);

var m;
for (m = 0; m < array_length_1d(menu); m += 1)
{
    draw_text(x + space,y + (m * space),string_hash_to_newline(string(menu[m]))) 
}

draw_sprite(spr_menu,0, x, (y + mpos * space));