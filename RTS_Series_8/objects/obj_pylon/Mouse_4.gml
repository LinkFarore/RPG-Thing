// Ensure the connection list is valid and initialized
if (!variable_global_exists("connections")) {
    global.connections = ds_list_create();
}

// Start connection if idle
if (global.connection_state == "idle") {
    global.first_pylon = id;
    global.connection_state = "connecting";
}
else if (global.connection_state == "connecting") {
    var other_pylon = global.first_pylon;

    if (instance_exists(other_pylon) && id != other_pylon) {
        var dist = point_distance(x, y, other_pylon.x, other_pylon.y);
        if (dist <= global.MAX_CONNECTION_DISTANCE && !connection_exists(other_pylon, id)) {
            ds_list_add(global.connections, [other_pylon, id]);
        }
    }

    // Always reset
    global.first_pylon = noone;
    global.connection_state = "idle";
}