if shop && !instance_exists(obj_button) && !instance_exists(obj_button_back_part)
{
	draw_set_color(c_white);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(fnt_menu);
	
	draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,string_hash_to_newline(temp_planet_desc));
	draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/4+16,string_hash_to_newline(temp_planet_name));
}