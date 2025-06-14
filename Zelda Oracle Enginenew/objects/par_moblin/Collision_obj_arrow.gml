if !inv {
    hp -= 1; // arrow/fireball must define damage
    inv = true;

    sprite_u = sprite_hurt_u;
    sprite_d = sprite_hurt_d;
    sprite_l = sprite_hurt_l;
    sprite_r = sprite_hurt_r;
    alarm[1] = 15;

    knockback_dir = point_direction(other.x, other.y, x, y);
    knockback_speed = 4;
}

with (other) {
    instance_destroy();
}
