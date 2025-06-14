global.grid = mp_grid_create(0, 0, room_width div 16, room_height div 16, 16, 16);
mp_grid_add_instances(global.grid, obj_solid, false);
mp_grid_add_instances(global.grid, obj_enemy_wall, false);