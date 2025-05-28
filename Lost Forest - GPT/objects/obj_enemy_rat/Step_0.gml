/// @description Control the states
script_execute(state);

//Constrain to the room
//x = median(0,x,room_width);
//y = median(0,y,room_height);

//Rotate the sprite to face the direction
image_angle = direction;

//Kill the rat
if (hp <= 0)
{
instance_destroy();
}

