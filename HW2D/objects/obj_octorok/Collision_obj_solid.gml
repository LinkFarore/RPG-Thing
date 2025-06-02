action_reverse_xdir();
action_reverse_ydir();
///Sprite Transformation Code

if hspeed < 0 && vspeed = 0
{
sprite_index = spr_octorok_l
}

if hspeed > 0 && vspeed = 0
{
sprite_index = spr_octorok_r
}

if hspeed = 0 && vspeed < 0
{
sprite_index = spr_octorok_u
}

if hspeed = 0 && vspeed > 0
{
sprite_index = spr_octorok_d
}

var __b__;
__b__ = action_if_aligned(16, 16);
if __b__
{
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

}
