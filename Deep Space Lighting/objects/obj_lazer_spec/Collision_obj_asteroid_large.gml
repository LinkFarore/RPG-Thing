audio_play_sound(snd_hit,1,false);

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

