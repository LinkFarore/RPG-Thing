drop = irandom(100);
 
if blueprint <= 20
{
    var amount = irandom(2);
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var ore = instance_create(x,y,obj_xp_orb);
            with (ore)
            {
                direction = rand + division*other.i
            }
        }
    }
}

if blueprint >= 20
{
    var amount = 1;
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var ore = instance_create(x,y,obj_);
            with (ore)
            {
                direction = rand + division*other.i
            }
        }
    }
}

instance_destroy();