// Draw semi-transparent black background
draw_set_colour(c_black);
draw_set_alpha(0.65);
draw_rectangle(
    camera_get_view_x(0) + __view_get(e__VW.XView, 0),
    camera_get_view_y(0) + __view_get(e__VW.YView, 0),
    camera_get_view_x(0) + __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0),
    camera_get_view_y(0) + __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0),
    false
);
draw_set_alpha(1);

// Draw the inventory background
draw_sprite_stretched(
    spr_inventory, 0,
    x - 6, y - 6,
    ((12 + row_length * 36)*2)-60,
    ((12 + (((INVENTORY_SLOTS - 1) div row_length) + 1) * 36)*2)-37
);

// Draw inventory slots and their items
for (var i = 0; i < INVENTORY_SLOTS; i++) {
    /*var xx = x + (i mod row_length) * 36 + 1;
    var yy = y + (i div row_length) * 36 + 1;*/
	
	var xx = x + ((i mod row_length) * 32)*2;
    var yy = y + ((i div row_length) * 32)*2;
	
    var hover = (obj_mouse.inventory_hover == id) && (obj_mouse.slot_hover == i);

    // Draw slot
    draw_sprite_ext(spr_inv_slot, hover, xx, yy,2,2,0,c_white,1);
	//draw_sprite_ext(spr_inv_slot, hover, xx, yy,2,2,0,c_white,1);

    // Draw item in slot
    if (inventory[i] != -1) {
        var alpha = 1;
        if ((obj_mouse.inventory_drag == id) && (obj_mouse.slot_drag == i)) alpha = 0.5;
        draw_set_alpha(alpha);
        draw_sprite_ext(spr_spell_new, inventory[i], xx+2, yy+2 ,2,2,0,c_white,alpha);
		//draw_sprite_ext(spr_spell, inventory[i], xx + 1, yy + 1,2,2,0,c_white,1);
        draw_set_alpha(1);
    }
}