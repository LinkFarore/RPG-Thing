//Play the music if not already playing
if !audio_is_playing(snd_music_wander)
{
//audio_play_sound(snd_music_wander,0,true);
//audio_play_sound(snd_music_battle,0,true);
}

//Create the player object and the generation object
instance_create(0,0,obj_chunk_manager);