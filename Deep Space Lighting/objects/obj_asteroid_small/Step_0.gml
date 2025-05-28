revolve_direction = 90;

if spawn
{
height = min(height + vsp, 0)
vsp += 0.14;
speed *= .98;
}

switch(rot)
{
case 0: image_angle += .5; break;
case 1: image_angle -= .5; break;
}

if hp <= 0
{
    if !audio_is_playing(snd_explosion_small)
    {
        audio_play_sound(snd_explosion_small,1,false);
    }
    
    part_particles_create(global.ps,x,y,global.pt_explosion_asteroid,10);
    {
    amount = irandom_range(1,2);
    
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

if (distance_to_object(obj_blackhole) < 210)
{
	var inst_tract = instance_nearest(x,y,obj_blackhole);
    motion_add(point_direction(x,y,inst_tract.x,inst_tract.y),.02);
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


if speed > 3
{
	speed = 3;
}