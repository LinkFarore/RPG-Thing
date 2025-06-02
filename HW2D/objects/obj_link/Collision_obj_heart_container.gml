
if global.maxhealth < 120
{
global.maxhealth += 4;
health = global.maxhealth;
inv = true;
sprite_index = spr_hc_pickup;
speed = 0;
ani = true;
alarm[3] = 1*room_speed;
}

