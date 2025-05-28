if instance_number(obj_fire_drop) <= 1 && distance_to_object(obj_wall) > 48
{
    if irandom_range(0,9) = 5
    {
        instance_create(x,y,obj_fire_drop);
    }
}

