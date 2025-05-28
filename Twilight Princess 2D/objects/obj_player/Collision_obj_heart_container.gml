if audio_is_playing(snd_heart_container) || (ani) || (pulled)
{exit}

with(other)
{
    instance_destroy();
}

if audio_is_playing(snd_battle_theme)
{
    audio_pause_sound(snd_battle_theme);
}

maxhealth += 4;
hp = maxhealth;
inv = true;
sprite_index = spr_player_ani;
audio_play_sound(snd_heart_container,2,false);

alarm[1] = 60;

