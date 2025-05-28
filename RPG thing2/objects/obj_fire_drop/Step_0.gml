//remove when pawn is hit
if place_meeting(x,y,obj_player) 
{ 
    pawnHit = instance_place(x,y,obj_player);
    player_hp -= damage;
}

if (place_meeting(x,y+1,obj_wall))
{
    vspeed = 0;
    if alarm[0] == -1
    {
    alarm[0] = 45;
    }
}

