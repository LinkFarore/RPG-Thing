mask_index = spr_platformH;

hsp = dir * movespeed;

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
    
    dir *= -1;
}
x += hsp;

if (instance_exists(obj_player))
{
    if (round(obj_player.y + (obj_player.sprite_height/2)) > y) || (obj_player.key_down) mask_index = -1;
    else 
    {
        mask_index = spr_platform;
        if place_meeting(x,y-1,obj_player)
        {
            obj_player.hsp_carry = hsp;
        }
    }
}


