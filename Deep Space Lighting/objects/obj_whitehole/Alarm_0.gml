//if still colliding with player, teleport them to the nearest black hole
if place_meeting(x,y,obj_player)
{
    with (obj_player)
    {
        warp = false;
    }
}