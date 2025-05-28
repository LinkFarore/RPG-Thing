revolve_direction = 90;

switch(rot)
{
case 0: image_angle += .15; break;
case 1: image_angle -= .15; break;
}

if hp <= 0
{
    if !audio_is_playing(snd_explosion)
    {
        audio_play_sound(snd_explosion,1,false);
    }
    
    part_particles_create(global.ps,x,y,global.pt_explosion_asteroid,10);
    {
    var amount = irandom_range(5,9);
    
    
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
                speed = random_range(1.7,2.4);
                spawn = true;
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

if (tethered) && instance_exists(parent_tethered) && !place_meeting(x,y,obj_player)
{
	direction = point_direction(x,y,parent_tethered.x,parent_tethered.y)+revolve_direction;
	motion_add(direction,.03);
}

if speed > .2
{
	speed -= .01;
}

if speed > 1.5
{
	speed -= .08;
}


if speed > 2.85
{
	speed = 2.8;
}