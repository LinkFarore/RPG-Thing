var dmg = player_attack - defense;
    
if dmg <= 0
{
dmg = .5;
}

hp -= dmg/2;
state = "attack";
hit = true;
alarm[3] = 90;
with(other)
{
    instance_destroy();
    audio_play_sound(snd_hit,1,false);
}

