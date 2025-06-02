draw_self(); // Draw the pylon sprite

// Only first instance draws global connections
if (variable_global_exists("connections") && ds_exists(global.connections, ds_type_list)) {
    var i = 0;
    while (i < ds_list_size(global.connections)) {
        var pair = global.connections[| i];

        if (is_array(pair) && instance_exists(pair[0]) && instance_exists(pair[1])) {
            draw_set_color(c_lime);
            draw_set_alpha(1);
            draw_line(pair[0].x, pair[0].y, pair[1].x, pair[1].y);
            i++;
        } else {
            ds_list_delete(global.connections, i); // Remove invalid connection
        }
    }
}

// Draw temporary line if this is the active pylon
if (global.connection_state == "connecting" && global.first_pylon == id) {
    var hovered = instance_position(mouse_x, mouse_y, obj_pylon);
    var temp_color = c_yellow;

    if (hovered != noone && hovered != id) {
        var dist = point_distance(x, y, hovered.x, hovered.y);
        temp_color = (dist <= global.MAX_CONNECTION_DISTANCE) ? c_lime : c_red;
    }

    draw_set_color(temp_color);
    draw_set_alpha(0.6);
    draw_line(x, y, mouse_x, mouse_y);
}

if (selected) {
    draw_set_alpha(.25);
    draw_circle_color(x, y, 16, c_lime, c_lime, true);
    draw_set_alpha(.1);
    draw_circle_color(x, y, 16, c_lime, c_lime, false);
    draw_set_alpha(1);
}
