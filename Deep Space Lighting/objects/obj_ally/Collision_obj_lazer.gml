if (!crit)
{
    if (player_attack-irandom(25))/irandom(200) >= 1
    {
    crit = true;
    }
}

if (crit)
{
    var dmg = player_attack*3 - defense/4;
}
else
{
    var dmg = player_attack - defense;
}

if dmg <= 0
{
dmg = 1;
}

hp -= dmg/4; //set to divide by player_affinity or reputation in future
state = "attack";
hit = true;
alarm[3] = 90;
with(other)
{
    instance_destroy();
    audio_play_sound(snd_hit,1,false);
}

if (patrol)
{foe = obj_player;}