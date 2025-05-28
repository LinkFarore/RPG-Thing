movespeed = 1;


if !audio_is_playing(snd_swamp)
{   
    if keyboard_check(ord("A"))
    {
        audio_play_sound(snd_swamp,0,true);
    }
    
    if keyboard_check(ord("D"))
    {
        audio_play_sound(snd_swamp,0,true);
    }
}

if audio_is_playing(snd_swamp)
{   
    if keyboard_check_released(ord("A"))
    {
        audio_stop_sound(snd_swamp);
    }
    
    if keyboard_check_released(ord("D"))
    {
        audio_stop_sound(snd_swamp);
    }
    
    if keyboard_check(ord("D")) && keyboard_check(ord("A"))
    {
        audio_stop_sound(snd_swamp);
    }
}

