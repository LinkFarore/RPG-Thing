image_angle += rot/12

if hp <= 0
{
    if !audio_is_playing(snd_explosion)
    {
        audio_play_sound(snd_explosion,1,false);
    }
    
    part_particles_create(global.ps,x,y,global.pt_explosion_asteroid,1);
    {
    var amount = irandom_range(14,18);
    
    
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var asteroid = instance_create(x,y,obj_asteroid_small);
            with (asteroid)
            {
                direction = rand + division*other.i
                spawn = true;
                speed = random_range(1.7,2.4);
                alarm[1] = 100;
            }
        }
    }
    }
instance_destroy();
}

if can_mine
{
    if mine
    {
        var amount2 = irandom_range(1,2);    
    
        if (amount2 > 0)
        {
            var division = 360 / amount2;
            var rand = random(360);
            for (i = 0; i < amount2; i++)
            {
                var ore = instance_create(x,y,par_crystal);
                with (ore)
                {
                    direction = rand + division*other.i
                }
            }
        }
        mine = false;
        hp -= .1;
        can_mine = false;
        alarm[3] = irandom_range(5,25);
    }
}