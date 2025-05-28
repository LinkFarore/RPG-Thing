/// @description Health and death
if hp <= 0
{
scr_enemydeath();
}

if (stun)
{
image_speed = 0;
}
else
{
image_speed = .35;
}

///Gravity

if (stun) or (hurt) && !(grounded)
{
    //Vertical Collision
    if (place_meeting(x,y+vsp,obj_wall))
    {
        while(!place_meeting(x,y+sign(vsp),obj_wall))
        {
            y += sign(vsp);
        }
        vsp = 0;
    }
    vsp += 2; 
}

