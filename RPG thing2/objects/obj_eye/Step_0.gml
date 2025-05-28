if stun || inv
{exit;}

if obj_player.x < x-128
{
dir = -1;
image_xscale = -1;
}

if obj_player.x > x+128
{
dir = 1;
image_xscale = 1;
}


x += dir*spd;
y += wave;

if alarm[1] = -1
{
    alarm[1] = 45;
}

if distance_to_point(obj_player.x,y) < 16
{
    if alarm[2] = -1
    {
        alarm[2] = 15;
    }
}

