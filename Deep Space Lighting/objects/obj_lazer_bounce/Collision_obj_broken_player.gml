audio_play_sound(snd_hit,1,false);

/// Collide code
motion_set(point_direction(other.x, other.y, x, y), 8);
hp -= 1;

