if !mouse_check_button(mb_right)
{
    destroy = false;
}

image_index = scr_auto_tile();

if hp <= 0
{
    if !audio_is_playing(snd_explosion)
    {
        audio_play_sound(snd_explosion,1,false);
    }
    
    part_particles_create(global.ps,x,y,global.pt_explosion,1);
    {
    amount = irandom_range(1,4);
    
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var asteroid = instance_create(x,y,obj_crystal);
            with (asteroid)
            {
                direction = rand + division*other.i
            }
        }
    }
    }
instance_destroy();
}

