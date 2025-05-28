/// @description scr_cave_tile()
image_speed = 0;

//Cave ceiling
if place_meeting(x,y-1,obj_cave_wall)
{
image_index = 2;
}

//Cave floor
if place_meeting(x,y+1,obj_cave_wall)
{
image_index = 0;
}

//Cave Fill
if place_meeting(x,y+1,obj_cave_wall) && place_meeting(x,y-1,obj_cave_wall)
{
image_index = 1;
}

//Cave single Tile
if !place_meeting(x,y+1,obj_cave_wall) && !place_meeting(x,y-1,obj_cave_wall)
{
image_index = 3;
}
