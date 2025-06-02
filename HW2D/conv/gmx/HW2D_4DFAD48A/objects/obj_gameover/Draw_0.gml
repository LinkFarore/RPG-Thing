depth = -200000000
draw_set_colour(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),room_width,room_height,false);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_default);
draw_set_colour(c_white);
var m;
for (m = 0; m < array_length_1d(gameover); m += 1)
{
    draw_text(x + space,y + (m * space),string_hash_to_newline(string(gameover[m]))) 
}

draw_sprite(spr_pointer,0, x+16, y + mpos * space);

draw_set_color(c_purple);
draw_set_font(fnt_triforce);
draw_set_halign(fa_center);
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+32, string_hash_to_newline("Defeat!"));

