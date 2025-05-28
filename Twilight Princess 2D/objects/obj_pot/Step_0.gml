if carried = false
{
if (vsp < 10) vsp += grav;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
}
else
{
x= obj_player.x
y = obj_player.y-14
}

