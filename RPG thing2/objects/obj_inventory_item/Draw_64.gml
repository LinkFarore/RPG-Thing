//Draw the Menu name
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_menu);

draw_text(__view_get( e__VW.WView, 0 )/2,20,string_hash_to_newline("Items"));

draw_set_font(fnt_gui);
draw_text(__view_get( e__VW.WView, 0 )/3+16,64,string_hash_to_newline("Current Items"));

draw_sprite(spr_inv_slot,0,__view_get( e__VW.WView, 0 )/2+8,48);
draw_sprite(spr_item,current_item_1,__view_get( e__VW.WView, 0 )/2+24,64);


draw_sprite(spr_inv_slot,0,__view_get( e__VW.WView, 0 )/2+48,48);
draw_sprite(spr_item,current_item_2,__view_get( e__VW.WView, 0 )/2+64,64);

draw_sprite(spr_inv_slot,0,__view_get( e__VW.WView, 0 )/2+88,48);
draw_sprite(spr_item,current_item_3,__view_get( e__VW.WView, 0 )/2+104,64);


if gamepad_is_connected(0)
{
	draw_sprite(spr_controller_buttons,0,__view_get( e__VW.WView, 0 )/2+24,88);
	draw_sprite(spr_controller_buttons,1,__view_get( e__VW.WView, 0 )/2+64,88);
	draw_sprite(spr_controller_buttons,2,__view_get( e__VW.WView, 0 )/2+104,88);
}
else
{
	draw_sprite(spr_keys,0,__view_get( e__VW.WView, 0 )/2+24,89);
	draw_sprite(spr_keys,1,__view_get( e__VW.WView, 0 )/2+64,89);
	draw_sprite(spr_keys,2,__view_get( e__VW.WView, 0 )/2+104,89);
}