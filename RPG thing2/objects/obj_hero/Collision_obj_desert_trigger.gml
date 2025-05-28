if (encounter)
{
    room_goto(rm_desert);
    encounter = false;
    audio_pause_sound(snd_forest);
}