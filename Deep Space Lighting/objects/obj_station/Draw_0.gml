/// @description  Draw event for the station
draw_self();

if shop = true
{
    draw_set_colour(c_black);
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);
}

if selected && !shop && obj_player.target == id
{
    draw_roundrect_colour(x-string_width(string_hash_to_newline(name))/2-10,y-string_height(string_hash_to_newline(name))/2-10,x+string_width(string_hash_to_newline(name))/2+10,y+string_height(string_hash_to_newline(name))/2+10,c_white,c_white,false);
    draw_roundrect_colour(x-string_width(string_hash_to_newline(name))/2-7,y-string_height(string_hash_to_newline(name))/2-7,x+string_width(string_hash_to_newline(name))/2+7,y+string_height(string_hash_to_newline(name))/2+7,c_blue,c_blue,false);
    draw_set_font(fnt_gui);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_text(x,y+2,string_hash_to_newline(name));
}

if key_prompt
{
    draw_sprite(spr_space_icon,2,x-sprite_width/4,y-120)
}

