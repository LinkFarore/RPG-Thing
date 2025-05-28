if level_up
{exit}

if other.hurt
{exit}

if inv = false 
{
    player_hp -= 1;
    hurt = true;
    audio_play_sound(snd_hurt,1,false);
    alarm[0] = 24;
    inv = true;
}
else 
{
//
}

