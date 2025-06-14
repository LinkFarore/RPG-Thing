function scr_enemy_state_chase() {

if instance_exists(obj_player) {
    var dx = obj_player.x - x;
    var dy = obj_player.y - y;

    if abs(dx) > abs(dy) {
        move_dir = (dx > 0) ? 0 : 180;
    } else {
        move_dir = (dy > 0) ? 270 : 90;
    }

    var tx = x + lengthdir_x(tile_size, move_dir);
    var ty = y + lengthdir_y(tile_size, move_dir);

    if !place_meeting(tx, ty, obj_solid) {
        move_timer = tile_size / tile_speed;
    } else {
        move_dir = -1;
        move_timer = 10;
    }
}


}
