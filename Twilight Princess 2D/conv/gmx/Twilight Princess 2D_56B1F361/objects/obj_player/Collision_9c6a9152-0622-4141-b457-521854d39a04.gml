if hp < global.maxhealth
{
hp += 4;
}

if !audio_is_playing(snd_heart)
{
    audio_play_sound(snd_heart,1,false);
}

with (other)
{
instance_destroy();
}

