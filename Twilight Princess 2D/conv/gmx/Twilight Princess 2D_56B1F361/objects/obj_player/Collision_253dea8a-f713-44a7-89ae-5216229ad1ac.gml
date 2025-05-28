if (hurt) || (ani) || (pulled)
{exit}

    if keyboard_check(vk_shift)
    {
        with(other)
        {
            if !(opened)
{
    instance_create(x,y,object);
    opened = true;
    if !audio_is_playing(snd_chest_open)
    {
        audio_play_sound(snd_chest_open,1,false);
    }
}
else
{
//
}
        }
    }

