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

with (other) {
hsp = dir * movespeed;
vsp += grav;
image_xscale = dir;

//Exiting the Step event
if (stun) || (hurt)
{
exit
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
    
    dir = -dir;
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
        dir = -dir;
    }
}
y += vsp;

//Shooting
if (can_shoot) && instance_exists(obj_player)
{

    target = collision_line(x,y,x+range*dir,y,obj_player,false,true);
    if distance_to_object(target) <= range
    {
        instance_create(x,y,parPro);
        can_shoot = false;
        alarm[1] = 45;
    }
}

}
