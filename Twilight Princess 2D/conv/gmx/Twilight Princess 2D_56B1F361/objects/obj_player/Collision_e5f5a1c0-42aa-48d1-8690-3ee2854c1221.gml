rupee += other.value;
if !audio_is_playing(snd_rupee)
{
    audio_play_sound(snd_rupee,1,false);
}

with (other)
{
instance_destroy();
}

