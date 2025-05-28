if direction <= 180
{
    dir += irandom(180)+image_angle;
}

if direction > 180 
{
    dir -= irandom(180)+image_angle;
}

alarm[4] = room_speed*irandom_range(2,4);