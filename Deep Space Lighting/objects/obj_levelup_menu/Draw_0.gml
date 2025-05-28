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

var l;
for (l = 0; l < array_length_1d(level); l += 1)
{
    draw_text(x + space*6,y + (l * space),string_hash_to_newline(string(level[l]))) 
}

draw_sprite(spr_menu,sub, x-4, (y + mpos * space)-3);

