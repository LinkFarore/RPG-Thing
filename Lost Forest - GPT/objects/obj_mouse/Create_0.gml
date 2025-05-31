/// @desc Initialize obj_mouse variables

// General hover and drag variables
inventory_hover = -1;
slot_hover = -1;
inventory_drag = -1;
slot_drag = -1;
item_drag = -1;

// Scale factor for inventory icons
var scale_factor = 2;
var icon_size = 32 * scale_factor; // Adjusted icon size for scaling

// Initialize sbid (spell bar instance ID) safely
if (instance_exists(obj_spell_bar)) {
    sbid = instance_nearest(x, y, obj_spell_bar);
} else {
    sbid = -1; // Default value if no spell bar exists
}

// Define mouse_over function
mouse_over = function() {
    // Reset hover variables
    slot_hover = -1;
    inventory_hover = -1;

    // Get mouse coordinates
    var mx = mouse_x;
    var my = mouse_y;

    // Check for inventory slot hover
    with (obj_inventory) {
        if (point_in_rectangle(mx, my, x, y, x + row_length * icon_size, y + (((INVENTORY_SLOTS - 1) div row_length) + 1) * icon_size)) {
            for (var i = 0; i < INVENTORY_SLOTS; i += 1) {
                var xx = x + (i mod row_length) * icon_size;
                var yy = y + (i div row_length) * icon_size;

                if (point_in_rectangle(mx, my, xx, yy, xx + icon_size, yy + icon_size)) {
                    other.slot_hover = i;
                    other.inventory_hover = id;
                }
            }
        }
    }

    // Corrected hover check for spell bar
    if (sbid != -1 && instance_exists(sbid)) {
        with (sbid) {
            var bar_top = y - icon_size; // Adjust for spell bar's relative position
            var bar_bottom = bar_top + 12 + (((4) div row_length) + 1) * icon_size;

            if (point_in_rectangle(mx, my, x - 6, bar_top, x - 6 + 12 + row_length * icon_size, bar_bottom)) {
                for (var i = 0; i < 5; i += 1) { // Assuming 5 spell bar slots
                    var xx = x + (i mod row_length) * icon_size;
                    var yy = bar_top + (i div row_length) * icon_size;

                    if (point_in_rectangle(mx, my, xx, yy, xx + icon_size, yy + icon_size)) {
                        other.slot_hover = i;
                        other.inventory_hover = id;
                    }
                }
            }
        }
    }
};

// Define state_free function
state_free = function() {
    mouse_over();

    // Dragging items
    if (inventory_hover != sbid) {
        if (mouse_check_button(mb_left)) {
            if (slot_hover != -1 && instance_exists(inventory_hover)) {
                if (inventory_hover.inventory != undefined && inventory_hover.inventory[slot_hover] != -1) {
                    // Start dragging
                    state = state_drag;
                    item_drag = inventory_hover.inventory[slot_hover];
                    inventory_drag = inventory_hover;
                    slot_drag = slot_hover;
                }
            }
        }
    }

    // Dropping items into the spell bar
    if (inventory_hover == sbid) {
        if (mouse_check_button_pressed(mb_left)) { // Use mouse_check_button_pressed for precise dropping
            if (item_drag != -1) {
                with (sbid) {
                    if (slot_hover != -1) {
                        // Update the spell bar with the dragged item
                        spell_bar_temp[slot_hover] = item_drag;

                        // Remove the item from its original inventory slot
                        inventory_drag.inventory[slot_drag] = -1;

                        // Reset dragging variables
                        item_drag = -1;
                        inventory_drag = -1;
                        slot_drag = -1;
                        state = state_free;

                        // Debug output (optional)
                        show_debug_message("Spell added to slot: " + string(slot_hover));
                    }
                }
            }
        }
    }
};

// Define state_drag function
state_drag = function() {
    mouse_over();

    // Dropping items
    if (!mouse_check_button(mb_left)) { // Detect mouse release
        if (slot_hover != -1) {
            // Dropping into the spell bar
            if (inventory_hover == sbid) {
                with (sbid) {
                    var mx = mouse_x;
                    var my = mouse_y;

                    if (point_in_rectangle(mx, my, x, y, x + row_length * icon_size, y + (((INVENTORY_SLOTS - 1) div row_length) + 1) * icon_size)) {
                        for (var i = 0; i < 5; i += 1) { // Assuming 5 spell bar slots
                            var xx = x + (i mod row_length) * icon_size;
                            var yy = y - icon_size + (i div row_length) * icon_size;

                            if (point_in_rectangle(mx, my, xx, yy-27, xx + icon_size, yy + 35)) {
                                other.slot_hover = i;
                                other.inventory_hover = id;
                            }
                        }
                    }
                }

                if (slot_hover != -1) {
                    inventory_hover.spell_bar_temp[slot_hover] = item_drag; // Assign dragged item to spell bar slot
                }
            } else if (inventory_hover == inventory_drag) {
                var temp = inventory_hover.inventory[slot_hover];
            } else if (inventory_hover != -1) {
                // Assign dragged item to the new inventory
            }
        }

        // Reset drag state
        state = state_free;
        item_drag = -1;
        inventory_drag = -1;
        slot_drag = -1;
    }
};

// Initialize the state to free
state = state_free;