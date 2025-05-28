//Draw the hull sprite
draw_sprite_ext(spr_hull2,hull_part,x,y,scale,scale,image_angle,c_white,1);

//draw the weapon sprite
draw_sprite_ext(spr_weapon2,weapon_part,x,y,scale,scale,image_angle,c_white,1);

//draw the weapon energy sprite
if weapon_part = 5
{
draw_sprite_ext(spr_weapon_energy,-1,x,y,scale,scale,image_angle,c_white,1);
}

//Draw the engine sprite
draw_sprite_ext(spr_engine2,engine_part,x,y,scale,scale,image_angle,c_white,1);

if selected
{
    draw_roundrect_colour(x-string_width(string_hash_to_newline(name))/2-10,y-string_height(string_hash_to_newline(name))/2-10,x+string_width(string_hash_to_newline(name))/2+10,y+string_height(string_hash_to_newline(name))/2+10,c_white,c_white,false);
    draw_roundrect_colour(x-string_width(string_hash_to_newline(name))/2-7,y-string_height(string_hash_to_newline(name))/2-7,x+string_width(string_hash_to_newline(name))/2+7,y+string_height(string_hash_to_newline(name))/2+7,c_blue,c_blue,false);
    draw_set_font(fnt_gui);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_text(x,y+2,string_hash_to_newline(name));
}