/// @description Health and death and Gravity
event_inherited();

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