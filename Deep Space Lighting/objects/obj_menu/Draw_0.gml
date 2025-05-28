depth = -20
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu2);
draw_set_colour(c_white);

var m;
for (m = menu_min; m < array_length_1d(menu); m += 1)
{
    draw_text(x + space,y + (m * space),string_hash_to_newline(string(menu[m]))) 
}

draw_sprite_ext(spr_menu,sub, x+16, (y + mpos * space)-4,2,2,0,c_white,1);

