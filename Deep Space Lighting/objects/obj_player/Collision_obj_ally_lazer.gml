if ricochet = false
{
    if other.ricochet = false
    {
        if irandom(500)/player_defense <= 1
        {
        other.ricochet = true;
        other.direction = other.direction-180;
        ricochet = true;
        alarm[5] = 150;
        }
    }
}

if other.ricochet = true
{
exit;
}

var dmg = other.attack - player_defense;
    
if dmg <= 0
{
dmg = 1;
}

if !shield
{
    if flash == 0
    {
    //hurt event
    hp -= dmg;
    flash = 1;
    }
}
else
{
    energy -= dmg;
}

with (other)
{
instance_destroy();
}