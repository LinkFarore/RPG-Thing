audio_falloff_set_model(audio_falloff_linear_distance_clamped);
audio_play_sound_at(snd_hit, x, y, 0, 100, 10000, 1, false,1);

var amount = irandom_range(5,9);  
    
if (amount > 0)
{
    var division = 360 / amount;
    var rand = random(360);
    for (i = 0; i < amount; i++)
    {
        var asteroid = instance_create(x,y,obj_asteroid_spec);
        with (asteroid)
        {
            direction = rand + division*other.i
        }
    }
}

instance_destroy();

