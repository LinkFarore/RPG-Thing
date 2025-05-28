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