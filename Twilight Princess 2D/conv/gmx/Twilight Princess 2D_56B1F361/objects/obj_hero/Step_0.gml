/// @description Handle Player Movement

//Move the player

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
if ( keyboard_check(ord("A")) && !moving && (!place_meeting(x-grid,y,obj_wall)) && x-grid > 0) 
{
    moving = true;
    target_x -= grid;
    image_speed = 0.3;
    sprite_index = spr_player_o_l;
}
if ( keyboard_check(ord("D")) && !moving && (!place_meeting(x+grid,y,obj_wall)) && x+grid < room_width) 
{
    moving = true;
    target_x += grid;
    image_speed = 0.3;
    sprite_index = spr_player_o_r;
}
if ( keyboard_check(ord("W")) && !moving && (!place_meeting(x,y-grid,obj_wall)) && y-grid > 0 ) {
    moving = true;
    target_y -= grid;
    image_speed = 0.3;
    sprite_index = spr_player_o_u;
}
if ( keyboard_check(ord("S")) && !moving && (!place_meeting(x,y+grid,obj_wall)) && y+grid < room_height ) {
    moving = true;
    target_y += grid;
    image_speed = 0.3;
    sprite_index = spr_player_o_d;
}

///Random encounter
if alarm[0] == -1
{
    alarm[0] = irandom_range(200,500);
}

