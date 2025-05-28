if !audio_is_playing(snd_rock_hit)
{
audio_sound_gain(snd_rock_hit,.4,0);
audio_play_sound(snd_rock_hit,1,false);
}

instance_destroy();

