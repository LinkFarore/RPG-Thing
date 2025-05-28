image_speed = 0;
image_index = 4;

if !instance_exists(obj_player)
{
    instance_activate_object(obj_player)
    planet_room = string(obj_player.target.id);
    instance_deactivate_object(obj_player);
}