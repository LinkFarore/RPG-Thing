instance_activate_object(obj_player);

with(obj_player.target)
{
    name = get_string("Name the planet","???");
}

instance_deactivate_object(obj_player);