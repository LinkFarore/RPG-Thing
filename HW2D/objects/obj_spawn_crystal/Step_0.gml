if (place_meeting(x,y,obj_keep_enemy))
{
image_index = 0;
}

if (place_meeting(x,y,obj_keep_allied))
{
image_index = 1;
}

if (!place_meeting(x,y,obj_keep_allied)) && (!place_meeting(x,y,obj_keep_enemy))
{
image_index = 2;
}

