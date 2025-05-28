height = min(height + vsp, 0)
vsp += 0.14;
speed *= 0.95;

switch(rot)
{
case 0: image_angle += .75; break;
case 1: image_angle -= .75; break;
}

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

