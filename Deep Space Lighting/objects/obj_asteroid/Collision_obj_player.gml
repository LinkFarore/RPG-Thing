if !spawn
{
//x = xprevious;
//y = yprevious;
motion_set(point_direction(other.x, other.y, x, y), 8);
alarm[0] = 120;
tethered = false;
}