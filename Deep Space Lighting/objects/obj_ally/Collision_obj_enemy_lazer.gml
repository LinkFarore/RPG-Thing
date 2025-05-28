var dmg = 2 - defense;

if dmg <= 0
{
dmg = 1;
}

hp -= dmg;
state = "attack";
hit = true;
alarm[3] = 90;
with(other)
{
    instance_destroy();
    audio_falloff_set_model(audio_falloff_linear_distance_clamped);
	audio_play_sound_at(snd_hit, x, y, 0, 100, 10000, 1, false,1);
}

if (instance_exists(obj_enemy_ship))
{foe = instance_nearest(x, y, obj_enemy_ship)}