color = c_black
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_default);

var m;
for (m = 0; m < array_length_1d(menu); m += 1)
{
    draw_text_colour(x + space,y + (m * space),string_hash_to_newline(string(menu[m])),color,color,color,color,1) 
}

draw_sprite(spr_pointer,0, x+16, y + mpos * space);

if global.costume = 0
{draw_sprite(spr_link_d,0, 192, 32)}

if global.costume = 1
{draw_sprite(spr_link_dt,0, 192, 32)}

