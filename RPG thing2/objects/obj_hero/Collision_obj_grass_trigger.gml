if (encounter)
{
    room_goto(choose(rm_grass,rm_grass2));
    encounter = false;
    audio_pause_sound(snd_forest);
}

