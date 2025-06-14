// Health check
if hp <= 0 {
    scr_enemy_death();
    exit;
}

// Apply knockback if active
if knockback_speed > 0 {
    var knockback_x = lengthdir_x(knockback_speed, knockback_dir);
    var knockback_y = lengthdir_y(knockback_speed, knockback_dir);
    x += knockback_x;
    y += knockback_y;
    knockback_speed = max(0, knockback_speed - 0.3);
} else {
    hspeed = 0;
    vspeed = 0;

    if place_snapped(16, 16) {
        if distance_to_object(obj_player) <= 128 && !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true) {
            state = enemy_state.attack;
        } else {
            state = enemy_state.wander;
        }

        switch (state) {
            case enemy_state.wander:
                scr_enemy_wander();
                break;
            case enemy_state.attack:
                scr_enemy_attack();
                break;
        }
    }

    if state == enemy_state.wander && alarm[0] == -1 {
        alarm[0] = 90;
    } else {
        move_snap(16, 16);
    }
}

// Update sprite direction
scr_enemy_update_sprite_dir();