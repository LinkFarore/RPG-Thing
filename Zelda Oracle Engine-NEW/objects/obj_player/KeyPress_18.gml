if ani = true
{exit}

if global.mana >= 50
{
inv = true;
global.mana -= 50;
sprite_index = spr_link_spirit;
instance_create(x,y,obj_sa);
alarm[3] = 1*room_speed;
ani = true;
}

