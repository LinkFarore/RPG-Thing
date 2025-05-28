if (!crit)
{
    if player_attack/irandom(50) >= 1
    {
    crit = true;
    }
}

if (crit)
{
    var dmg = player_attack*2.5*other.charge - defense/4;
}
else
{
    var dmg = player_attack*other.charge - defense;
}

if dmg <= 0
{
dmg = 1;
}

hp -= dmg;
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