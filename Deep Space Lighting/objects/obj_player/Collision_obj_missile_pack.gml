missile += 3;
audio_play_sound(snd_pickup,1,false);
with(other)
{
    instance_destroy();
}

