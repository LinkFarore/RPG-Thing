action_inherited();
hsp = dir * movespeed;
vsp += grav;
image_xscale = dir;

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

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
    if (fearofheights) && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+8, obj_wall)
    {
        dir *= -1;
    }
}
y += vsp;

//Health
if hp <= 0 {
    scr_enemydeath();
}


