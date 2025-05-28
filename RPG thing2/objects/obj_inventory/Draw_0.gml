draw_set_colour(c_black);
draw_set_alpha(.65);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_gui);
draw_set_colour(c_white);

draw_sprite_stretched
(
	spr_inventory,
	0,
	x-6,
	y-6,
	12+row_length*36,12+(((INVENTORY_SLOTS-1) div row_length)+1)*36
);

// Draw inventory slots and items
for (var i = 0; i < INVENTORY_SLOTS; i++) {
    var xx = x + (i mod row_length) * 36 + 2;
    var yy = y + (i div row_length) * 36 + 2;
    draw_sprite(spr_inv_slot, 0, xx, yy);
    if (inventory[i] != -1) {
        draw_sprite(spr_spell, inventory[i], xx + 16, yy + 16);	
    }
}

// Draw selection cursor
var cursor_xx = x + (cursor_x * 36) + 2;
var cursor_yy = y + (cursor_y * 36) + 2;
draw_sprite(spr_selection_cursor, 0, cursor_xx, cursor_yy);