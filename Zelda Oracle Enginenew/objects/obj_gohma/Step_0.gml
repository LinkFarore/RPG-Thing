/// @description Projectile Firing code

if distance_to_object(obj_player) < 120
    {
        if alarm[0] = -1
        {
            alarm[0] = 2.5*room_speed;
        }
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
///Death

if (hp <= 0)
{
speed = 0;
sprite_index = spr_explode_big;
}

