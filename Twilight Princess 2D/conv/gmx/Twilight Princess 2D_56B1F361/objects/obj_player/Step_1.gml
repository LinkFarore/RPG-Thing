/// @description Hookshot movement code
if (pulled)
{
inv = true;
hsp = obj_hookshot_head.dir*6;

var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

//Horizontal Collision
if (place_meeting(x+hsp_final,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp_final),y,obj_wall))
    {
        x += sign(hsp_final);
    }
    hsp_final = 0;
    hsp = 0;
}

if !(crouch) && !(attack){x += hsp_final;}
}
else
{
//
}

