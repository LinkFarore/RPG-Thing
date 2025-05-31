depth = -10000;

draw_sprite_stretched(spr_inventory,0,x-6,y-96,((12+row_length*36)*2)-52,((((4) div row_length)+1*36)*2)+3);

for (var i = 0; i < 5; i++) {
    var xx = x + (i mod row_length) * 64;
    var yy = y + (i div row_length) * 36 - 56;
    var hover = (obj_mouse.inventory_hover == id) && (obj_mouse.slot_hover == i);

    // Draw slot
    draw_sprite_ext(spr_inv_slot, hover, xx, yy-34,2,2,0,c_white,1);

    // Draw spell in the slot
    if (spell_bar_temp[i] != -1) {
        draw_sprite_ext(spr_spell_new, spell_bar_temp[i], xx + 1, yy - 33,2,2,0,c_white,1);
    }
	
	//var d_xx = x + (i mod row_length) * 36;
	//var d_yy = y + (i div row_length) * 36 - 56;

	draw_set_alpha(.8);
	//draw_rectangle_color(d_xx,d_yy,d_xx+32,d_yy+32,c_red,c_yellow,c_blue,c_green,false);
	//draw_rectangle_color(x - 6, y - 64, x - 6 + 12 + row_length * 36, y - 64 + 12 + (((4) div row_length) + 1) * 36,c_purple,c_purple,c_red,c_red,false);
	
	var d_xx = x + (i mod row_length) * icon_size;
    var d_yy = y - icon_size + (i div row_length) * icon_size;

    //draw_rectangle_color(d_xx, d_yy-27, d_xx + icon_size, d_yy + 35,c_aqua,c_yellow,c_red,c_green,false);
	
	//draw_rectangle_color(d_xx, d_yy-27, d_xx + icon_size, d_yy + 35,c_red,c_red,c_red,c_red,false);
	
	draw_set_color(c_black);
	draw_circle(mouse_x,mouse_y,10,false);
	
	//draw_rectangle_color(xx, yy, xx + 32, yy + 32,c_aqua,c_aqua,c_green,c_green,false);
	draw_set_alpha(1);
}

