// Handle knockback immunity timer
if inv_timer > 0 {
    inv_timer--;
    if inv_timer == 0 inv = false;
}

// Only move if snapped to grid
if x mod tile_size == 0 && y mod tile_size == 0 {
    hspeed = 0;
    vspeed = 0;

    switch (state) {
        case "wander":
            scr_enemy_state_wander();
            break;
        case "chase":
            scr_enemy_state_chase();
            break;
    }
}

// Move in chosen direction
if move_dir != -1 {
    hspeed = lengthdir_x(tile_speed, move_dir);
    vspeed = lengthdir_y(tile_speed, move_dir);
    move_timer--;
    if move_timer <= 0 {
        hspeed = 0;
        vspeed = 0;
        move_dir = -1;
    }
}

// Switch to chase if close to player
if instance_exists(obj_player) {
    if point_distance(x, y, obj_player.x, obj_player.y) < 96 {
        state = "chase";
    } else {
        state = "wander";
    }
}
