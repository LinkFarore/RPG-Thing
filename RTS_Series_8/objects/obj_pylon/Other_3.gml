// Only destroy once, and only from the "first" instance
if (id == instance_id[0]) {
    if (variable_global_exists("connections") && is_ds_list(global.connections)) {
        ds_list_destroy(global.connections);
    }

    variable_global_unset("connections");
    variable_global_unset("first_pylon");
    variable_global_unset("connection_state");
    variable_global_unset("MAX_CONNECTION_DISTANCE");
    variable_global_unset("g_pylon_initialized");
}
