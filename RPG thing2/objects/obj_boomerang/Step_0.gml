if distance_to_point(ox,oy) > range
{
    reverse = true;
}

if reverse = true
{
    speed = 5; 
    move_towards_point(obj_player.x,obj_player.y,8);
} 

