/// @description Health check and death

if hp <= 0
{
speed = 0;
sprite_index = spr_explode;
}

if hp2 <= 0
{
scr_enemy_death();
}

///Sprite Transformation Code

if hspeed < 0 && vspeed = 0
{
sprite_index = spr_moblinc_l
}

if hspeed > 0 && vspeed = 0
{
sprite_index = spr_moblinc_r
}

if hspeed = 0 && vspeed < 0
{
sprite_index = spr_moblinc_u
}

if hspeed = 0 && vspeed > 0
{
sprite_index = spr_moblinc_d
}

///Projectile Firing code

if hspeed < 0 && vspeed = 0
{
    if distance_to_object(obj_player) < 64
    {
        if alarm[0] = -1
        {
            alarm[0] = 1.75*room_speed;
        }
    }
}

if hspeed > 0 && vspeed = 0
{
    if distance_to_object(obj_player) < 64
    {
        if alarm[0] = -1
        {
            alarm[0] = 1.75*room_speed;
        }
    }
}

if hspeed = 0 && vspeed < 0
{
    if distance_to_object(obj_player) < 64
    {
        if alarm[0] = -1
        {
            alarm[0] = 1.75*room_speed;
        }
    }
}

if hspeed = 0 && vspeed > 0
{
    if distance_to_object(obj_player) < 64
    {
        if alarm[0] = -1
        {
            alarm[0] = 1.75*room_speed;
        }
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
__b__ = action_if_variable(hp, 0, 3);
if __b__
{
{
action_sprite_color(16777215, 1);
}
}
