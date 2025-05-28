if (pause) && !instance_exists(obj_levelup_menu)
{
    draw_text(__view_get( e__VW.WView, 0 )/2,20,string_hash_to_newline("Game Paused"));
}

if (saving)
{
    draw_set_font(fnt_menu);
    draw_set_color(c_white);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_left);
    draw_text(__view_get( e__VW.WView, 0 )-string_width(string_hash_to_newline("Saving..."))-8,16,string_hash_to_newline("Saving..."));
}