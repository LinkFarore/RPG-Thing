draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_text_ext(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )-48,string_hash_to_newline(desc[mpos]),16,(__view_get( e__VW.WView, 0 )/2));

draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_menu);

draw_text(__view_get( e__VW.WView, 0 )/2,32,string_hash_to_newline("Choose your upgrade"));
draw_set_font(fnt_gui);
draw_text(__view_get( e__VW.WView, 0 )/2,96,string_hash_to_newline("Points left to assign: " + string(levelpoint)));
    
if (level_error_1)
{
    draw_set_color(c_red);
	draw_set_font(fnt_gui);
    draw_text(__view_get( e__VW.WView, 0 )/2,128,string_hash_to_newline("You do not meet the minimum Health level requirement for this upgrade"));
}
    
if (level_error_2)
{
    draw_set_color(c_red);
	draw_set_font(fnt_gui);
    draw_text(__view_get( e__VW.WView, 0 )/2,128,string_hash_to_newline("You have reached the max level for this upgrade"));
}

 if (level_error_3)
{
    draw_set_color(c_red);
	draw_set_font(fnt_gui);
    draw_text(__view_get( e__VW.WView, 0 )/2,128,string_hash_to_newline("Insufficient level points"));
}