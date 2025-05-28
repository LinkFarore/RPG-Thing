healing_amount -= 1;
player_hp += 1;
if !audio_is_playing(snd_heart)
{
    audio_play_sound(snd_heart,1,false);
}