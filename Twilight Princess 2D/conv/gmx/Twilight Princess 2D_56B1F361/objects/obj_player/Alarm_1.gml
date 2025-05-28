//Reset the player after an animation
if !audio_is_playing(snd_heart_container)
{
inv = false;
sprite_index = spr_player_idle;
}
else
{
alarm[1] = 5;
}

if audio_is_paused(snd_battle_theme)
{
    audio_resume_sound(snd_battle_theme);
}

