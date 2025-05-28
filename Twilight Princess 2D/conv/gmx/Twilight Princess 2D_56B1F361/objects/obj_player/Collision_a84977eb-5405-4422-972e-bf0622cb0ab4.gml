if inv = false 
{
if instance_exists(obj_hookshot_head)
{
    with(obj_hookshot_head)
    {
        instance_destroy();
    }
}

    hp -= 1;
    hurt = true;
    audio_play_sound(snd_hurt,1,false);
    alarm[0] = 24;
    inv = true;
}
else 
{
//
}

