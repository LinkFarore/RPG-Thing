switch(rot)
{
case 0: image_angle += .35; break;
case 1: image_angle -= .35; break;
}

if hp <= 0
{
if !audio_is_playing(snd_explosion)
{
    audio_play_sound(snd_explosion,1,false);
}
    
part_particles_create(global.ps,x,y,global.pt_explosion_asteroid,1);

var blueprint = irandom(30);

if blueprint <= 6
{
    var amount = irandom(4);
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
 
if blueprint = 7 or blueprint = 8
{
    var amount = 1;
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var ore = instance_create(x,y,obj_repair);
            with (ore)
            {
                direction = rand + division*other.i
            }
        }
    }
}

if blueprint = 9
{
    var amount = 1;
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var ore = instance_create(x,y,obj_missile_pack);
            with (ore)
            {
                direction = rand + division*other.i
            }
        }
    }
}

if blueprint = 10
{
    var amount = 1;
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var ore = instance_create(x,y,obj_power_up);
            with (ore)
            {
                direction = rand + division*other.i
            }
        }
    }
}

if blueprint = 11
{
    var amount = 1;
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var ore = instance_create(x,y,obj_defense_power_up);
            with (ore)
            {
                direction = rand + division*other.i
            }
        }
    }
}


if blueprint = 12
{
    var amount = 1;
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var ore = instance_create(x,y,obj_upgrade);
            with (ore)
            {
                direction = rand + division*other.i
            }
        }
    }
}

instance_destroy();
}

height = min(height + vsp, 0)
vsp += 0.14;
speed *= 0.975;

/*if distance_to_object(obj_player) > __view_get( e__VW.WView, 0 )*3
{
    instance_destroy();
}