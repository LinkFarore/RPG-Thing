if death = true
{
    if (keyboard_check_pressed(vk_anykey))
    {
        //game_restart();
    }
    //exit;
}


key_move = keyboard_check(vk_space);

//Turning
var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), turn_speed) * sign(dd);

//Get the direction the player is facing
dir = image_angle;

//Movement
if key_move
{  
    motion_add(dir,.25);
}

//Speed Cap
if speed > player_spd
{
	speed = player_spd;
}

//Health
if hp <= 0
{
    death = true;
}

//toggle the debug
if keyboard_check_pressed(vk_f3)
{
    if debug = false
    {
        debug = true;
    }
    else
    {
        debug = false;
    }
}


var food_eat = collision_circle(x,y,player_size,obj_food,true,true);
if food_eat != noone
{
	with food_eat
	{
		instance_destroy();	
	}
	player_size += 1;
}

if instance_number(obj_food) < 300
{
	instance_create_layer(x+irandom_range(choose(-1,1)*500,choose(-1,1)*1000),y+irandom_range(choose(-1,1)*500,choose(-1,1)*1000),0,obj_food);
}