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
    hp -= dmg/2;
    state = "attack";
    hit = true;
    alarm[3] = 90;
    with(other)
    {
        instance_destroy();
        audio_play_sound(snd_hit,1,false);
    }
}

