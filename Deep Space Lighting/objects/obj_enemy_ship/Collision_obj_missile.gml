if shield
{
with(other)
    {
        instance_destroy();
        audio_play_sound(snd_hit,1,false);
    }
}
else
{
hp -= 5;
hit = true;
alarm[3] = 90;
}

