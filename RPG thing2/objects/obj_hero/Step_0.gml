/// @description Handle Player Movement

//Move the player

//Get the player's input
scr_inputs();

if saving
{exit;}

if ( target_x > x ) { x += spd } //right
if ( target_x < x ) { x -= spd } //left
if ( target_y > y ) { y += spd } //down
if ( target_y < y ) { y -= spd } //up

//Check for destination
if ( target_x == x && target_y == y ) {
    moving = false;
    image_speed = 0;
}

//Handle input
if (key_left && !moving && (!place_meeting(x-grid,y,obj_wall)) && x-grid > 0) 
{
    moving = true;
    target_x -= grid;
    image_speed = 0.15;
    sprite_index = spr_player_o_l;
}
if (key_right && !moving && (!place_meeting(x+grid,y,obj_wall)) && x+grid < room_width) 
{
    moving = true;
    target_x += grid;
    image_speed = 0.15;
    sprite_index = spr_player_o_r;
}
if (key_up && !moving && (!place_meeting(x,y-grid,obj_wall)) && y-grid > 0 ) {
    moving = true;
    target_y -= grid;
    image_speed = 0.15;
    sprite_index = spr_player_o_u;
}
if (key_down && !moving && (!place_meeting(x,y+grid,obj_wall)) && y+grid < room_height ) {
    moving = true;
    target_y += grid;
    image_speed = 0.15;
    sprite_index = spr_player_o_d;
}

///Random encounter
if alarm[0] == -1
{
    alarm[0] = irandom_range(200,500);
}

//tilemap_get_at_pixel()

if keyboard_check_pressed(vk_shift) && !saving
{
	scr_load_game();	
}