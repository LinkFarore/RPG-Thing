if !audio_is_playing(snd_explosion_small)
{
audio_play_sound(snd_explosion_small,0,false);
}

if !audio_is_playing(snd_explosion)
    {
        audio_play_sound(snd_explosion,1,false);
    }
    
    part_particles_create(global.ps,x,y,global.pt_explosion,1);
    {
    amount = irandom_range(5,5);
    
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var asteroid = instance_create(x,y,obj_scrap);
            with (asteroid)
            {
                direction = rand + division*other.i
            }
        }
    }
    }
instance_destroy();

