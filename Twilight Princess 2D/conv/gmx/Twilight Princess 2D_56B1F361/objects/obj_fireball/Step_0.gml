//remove when pawn is hit
if place_meeting(x,y,obj_player) { 
    pawnHit = instance_place(x,y,obj_player);
    instance_destroy();
    obj_player.hp -= damage;
}

//remove when wall is hit / outside the room
if place_meeting(x,y,obj_wall) or x > room_width or x < 0 { 
    instance_destroy();
}

