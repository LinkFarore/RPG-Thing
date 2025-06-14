// Grid and Movement
tile_size = 16;
tile_speed = 1.5;
move_dir = -1;
move_timer = 0;
retry_count = 0;

// Health
hp = 3;
inv = false;
inv_timer = 0;

// States
state = "wander";
target = obj_player;

// Snap to grid on spawn
x = round(x / tile_size) * tile_size;
y = round(y / tile_size) * tile_size;