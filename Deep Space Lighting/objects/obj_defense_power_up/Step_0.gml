height = min(height + vsp, 0)
vsp += 0.14;
speed *= 0.975;

if distance_to_object(obj_player) > __view_get( e__VW.WView, 0 )*3
{
    instance_destroy();
}

