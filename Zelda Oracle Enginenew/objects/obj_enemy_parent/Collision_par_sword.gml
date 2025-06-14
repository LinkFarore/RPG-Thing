if !inv {
    hp -= obj_player.attack_power + obj_player.sword_str;
    inv = true;
    inv_timer = 15;

    // Optional: knockback (simple)
    var kb_dir = point_direction(other.x, other.y, x, y);
    x += lengthdir_x(4, kb_dir);
    y += lengthdir_y(4, kb_dir);

    if hp <= 0 instance_destroy();
}