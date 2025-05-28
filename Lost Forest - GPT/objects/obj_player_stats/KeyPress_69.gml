/// @description Handle moving to and from spell room.
/*if (room != rm_spells) 
{
    room_persistent = true;
    global.previous_room = room;
    room_goto(rm_spells);
}
else
{
    room_goto(global.previous_room);
}

