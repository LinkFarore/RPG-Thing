/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

scr_ship_init(5, -1);

// Only initialize globals once
if (!variable_global_exists("g_pylon_initialized")) {
    global.connection_state = "idle";
    global.first_pylon = noone;
    global.connections = ds_list_create();
    global.MAX_CONNECTION_DISTANCE = 250;
    global.g_pylon_initialized = true;
}