height = min(height + vsp, 0)
vsp += 0.14;
speed *= 0.975;

if (height == 0) && (instance_exists(obj_player))
{
    if (distance_to_object(obj_player) < 64)
    {
        move_towards_point(obj_player.x,obj_player.y,1)
    }
    else
    {
        speed = 0;
    }
}

if distance_to_object(obj_player) > __view_get( e__VW.WView, 0 )*3
{
    instance_destroy();
}

