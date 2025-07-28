friction = 0.03;

enemy_size = 8;
border_size = enemy_size / 10;
enemy_spd = 2;
turn_speed = 5;

dir = image_angle;

// Behavior state
mode = "hunt"; // or "flee"
target = noone;
previous_target = noone;
chase_timer = 0;

// Constants
sight_range = 800;
flee_range = 600;
chase_timeout = 240; // frames

threat = noone;
virus = noone;
food = noone;
prey = noone;
avoid_virus = false;
target = noone;
mode = "hunt";

alarm[0] = 60;

object = obj_enemy_smart;
owner = id; // default to self

color = choose("cvar_red", "cvar_orange", "cvar_yellow", "cvar_green", "cvar_violet", "cvar_blue");