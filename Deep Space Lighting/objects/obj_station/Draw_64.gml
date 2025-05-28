if shop
{
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(fnt_gui);
}

if instance_exists(obj_material_sell_menu)
{
    draw_set_color(c_white);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(fnt_menu);
    draw_text(__view_get( e__VW.WView, 0 )/2,20,string_hash_to_newline("Sell Materials"));
}

if instance_exists(obj_store_menu)
{
    draw_set_color(c_white);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(fnt_menu);
    draw_text(__view_get( e__VW.WView, 0 )/2,20,string_hash_to_newline("Space Station Shop"));
}

