//reverse when hit wall
if place_meeting(x,y,obj_wall) or x > room_width or x < 0 or place_meeting(x,y,par_enemy)
{ 
    retract = true;
    extend = false;
}

if distance_to_point(ox,oy) > range
{
retract = true;
extend = false;
}

if retract = true
{
    hspeed = -dir*6;
}

if extend = true
{
    hspeed = dir*6;
    if alarm[0] = -1
    {
        alarm[0] = 1;
    }
}

if attached = true
{
    hspeed = 0;
}

