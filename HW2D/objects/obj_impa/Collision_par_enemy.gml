if (floor(random(6-1))=0)
{
    if inv = false 
    {
        hp -= 1;
        inv = true;
        state = enemy_state.wander;
        sprite_u = sprite_hurt_u;
        sprite_d = sprite_hurt_d;
        sprite_l = sprite_hurt_l;
        sprite_r = sprite_hurt_r;
        alarm[1] = 15;
    }
    else 
    {
    //
    }
}
else
{
    if (floor(random(2-1))=0)
    {
    state = enemy_state.wander;
        with (other)
        {
            if inv = false 
            {
                hp2 -= 1;
                inv = true;
                sprite_u = sprite_hurt_u;
                sprite_d = sprite_hurt_d;
                sprite_l = sprite_hurt_l;
                sprite_r = sprite_hurt_r;
                alarm[1] = 15;
            }
            else 
            {
            //
            }
        }
    }
}

if inv = false
{
hspeed = -hspeed;
vspeed = -vspeed;

///Sprite Transformation Code
if hspeed < 0 && vspeed = 0
{sprite_index = sprite_l}

if hspeed > 0 && vspeed = 0
{sprite_index = sprite_r}

if hspeed = 0 && vspeed < 0
{sprite_index = sprite_u}

if hspeed = 0 && vspeed > 0
{sprite_index = sprite_d}

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
}

