if !spawn
{
//x = xprevious;
//y = yprevious;
motion_add(point_direction(other.x, other.y, x, y), .15);
alarm[0] = 120;
tethered = false;
}