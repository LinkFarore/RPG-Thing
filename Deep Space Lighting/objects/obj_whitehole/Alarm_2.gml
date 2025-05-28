if !audio_is_playing(snd_explosion_small)
    {
        audio_play_sound(snd_explosion_small,1,false);
    }
    
    part_particles_create(global.ps,x,y,global.pt_explosion_asteroid,20);
    {
    amount = irandom_range(4,8);
    
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var crystal = instance_create(x,y,par_ore);
            with (crystal)
            {
                direction = rand + division*other.i
            }
        }
    }
    }
instance_destroy();