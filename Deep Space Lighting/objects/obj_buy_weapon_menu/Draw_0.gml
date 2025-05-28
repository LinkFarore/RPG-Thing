draw_set_colour(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_gui);
draw_set_colour(c_white);

var m;
for (m = 0; m < array_length_1d(menu); m += 1)
{
    draw_text(x + space,y + (m * space),string_hash_to_newline(string(menu[m]))) 
}

var p;
for (p = 0; p < array_length_1d(price); p += 1)
{
    draw_text(x + space*6,y + (p * space),string_hash_to_newline(string(price[p]))) 
}

draw_sprite(spr_menu,0, x, y + mpos * space);

