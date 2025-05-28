draw_self();

draw_set_alpha(1);

if (hit)
{
    draw_healthbar_circular(x,y,sprite_width+4,90,hp,spr_healthbar);
}

if (crit)
{
    draw_set_halign(fa_center);
    draw_text_colour(x,y-48,string_hash_to_newline("CRITICAL"),c_yellow,c_yellow,c_red,c_red,1);
    draw_set_halign(fa_left);
}

