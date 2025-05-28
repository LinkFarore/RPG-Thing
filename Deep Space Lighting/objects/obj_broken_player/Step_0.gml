if hp <= 0
{ 
    var power_up_item = instance_create(x,y,obj_power_up);
    power_up_item.power_up = power_temp;
    power_up_item.image_index = power_temp;
    power_up_item.direction = 0;
    
    var defense_item = instance_create(x,y,obj_defense_power_up);
    defense_item.power_up = defense_temp;
    defense_item.image_index = defense_temp;
    defense_item.direction = 180;
    
    var amount = floor(repair_temp/2+repair_temp/4);
    
    if (amount > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var pill = instance_create(x,y,obj_repair);
            with (pill)
            {
                direction = rand + division*other.i
            }
        }
    }
    
    var amount2 = floor(xp_temp/2+xp_temp/4);
    
    if (amount2 > 0)
    {
        var division = 360 / amount;
        var rand = random(360);
        for (i = 0; i < amount; i++)
        {
            var pill2 = instance_create(x,y,obj_xp_orb);
            with (pill2)
            {
                direction = rand + division*other.i
            }
        }
    }
    
    audio_play_sound(snd_explosion_small,1,false);
    part_particles_create(global.ps,x,y,global.pt_explosion,1);
    instance_destroy();
}

