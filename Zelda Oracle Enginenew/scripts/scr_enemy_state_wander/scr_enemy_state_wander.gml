function scr_enemy_state_wander() {

if move_timer <= 0 {
    var directions = [0, 90, 180, 270];

    // Fisher-Yates Shuffle
    for (var i = array_length(directions) - 1; i > 0; i--) {
        var j = irandom(i);
        var temp = directions[i];
        directions[i] = directions[j];
        directions[j] = temp;
    }

    move_dir = -1;
    for (var i = 0; i < 4; i++) {
        var dir = directions[i];
        var tx = x + lengthdir_x(tile_size, dir);
        var ty = y + lengthdir_y(tile_size, dir);
        if !place_meeting(tx, ty, obj_solid) {
            move_dir = dir;
            move_timer = tile_size / tile_speed;
            break;
        }
    }

    if move_dir == -1 {
        move_timer = 10; // wait and retry
    }
}


}