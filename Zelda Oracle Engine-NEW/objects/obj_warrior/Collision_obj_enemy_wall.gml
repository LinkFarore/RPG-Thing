hspeed = -hspeed;
vspeed = -vspeed;

if place_snapped(16,16)
{
    if (hspeed == 0)
    {
        if (random(3)<1 && place_free(x-1.2,y,))
        { hspeed = -1.2; vspeed = 0;}
        if (random(3)<1 && place_free(x+1.2,y,))
        { hspeed = 1.2; vspeed = 0;}
    }
    else
    {
        if (random(3)<1 && place_free(x,y-1.2,))
        { hspeed = 0; vspeed = -1.2;}
        if (random(3)<1 && place_free(x,y+1.2,))
        { hspeed = 0; vspeed = 1.2;}
    }
}

//Sprite Transformation Code

if hspeed < 0 && vspeed = 0
{
sprite_index = sprite_l;
}

if hspeed > 0 && vspeed = 0
{
sprite_index = sprite_r;
}

if hspeed = 0 && vspeed < 0
{
sprite_index = sprite_u;
}

if hspeed = 0 && vspeed > 0
{
sprite_index = sprite_d;
}

