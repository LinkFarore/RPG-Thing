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
	player_size += .3;
	border_size = player_size/12;
}

var food_eat_large = collision_circle(x,y,player_size,obj_food_large,true,true);
if food_eat_large != noone
{
	if food_eat_large.speed <= 1
	{
		with food_eat_large
		{
			instance_destroy();	
		}
		player_size += 8;
		border_size = player_size/12;
	}
}

if player_size >= 16 && keyboard_check_pressed(ord("W"))
{
    var spawn_dist = player_size; // distance from center to edge
    var spawn_x = x + lengthdir_x(spawn_dist, image_angle);
    var spawn_y = y + lengthdir_y(spawn_dist, image_angle);

    instance_create_depth(spawn_x, spawn_y, 0, obj_food_large);
	player_size -= 8;
	border_size = player_size/12;
}

if instance_number(obj_food) < 1000
{
	var x_spawn;
	var y_spawn;
	
	x_spawn = x+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	y_spawn = y+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	
	if place_empty(x_spawn,y_spawn)
	{
		instance_create_layer(x_spawn+(choose(-1,1)*player_size),y_spawn+(choose(-1,1)*player_size),0,obj_food);
	}
}

if instance_number(obj_enemy) < 4
{
	var x_spawn;
	var y_spawn;
	
	x_spawn = x+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	y_spawn = y+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	
	if place_empty(x_spawn,y_spawn)
	{
		instance_create_layer(x_spawn+(choose(-1,1)*player_size),y_spawn+(choose(-1,1)*player_size),0,obj_enemy);
	}
}

if instance_number(obj_enemy_aggro) < 4
{
	var x_spawn;
	var y_spawn;
	
	x_spawn = x+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	y_spawn = y+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	
	if place_empty(x_spawn,y_spawn)
	{
		instance_create_layer(x_spawn+(choose(-1,1)*player_size),y_spawn+(choose(-1,1)*player_size),0,obj_enemy_aggro);
	}
}

if instance_number(obj_enemy_flee) < 4
{
	var x_spawn;
	var y_spawn;
	
	x_spawn = x+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	y_spawn = y+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	
	if place_empty(x_spawn,y_spawn)
	{
		instance_create_layer(x_spawn+(choose(-1,1)*player_size),y_spawn+(choose(-1,1)*player_size),0,obj_enemy_flee);
	}
}

if instance_number(obj_enemy_smart) < 4
{
	var x_spawn;
	var y_spawn;
	
	x_spawn = x+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	y_spawn = y+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	
	if place_empty(x_spawn,y_spawn)
	{
		instance_create_layer(x_spawn+(choose(-1,1)*player_size),y_spawn+(choose(-1,1)*player_size),0,obj_enemy_smart);
	}
}

if instance_number(obj_virus) < 12
{
	var x_spawn;
	var y_spawn;
	
	x_spawn = x+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	y_spawn = y+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	
	if place_empty(x_spawn,y_spawn)
	{
		instance_create_layer(x_spawn+(choose(-1,1)*player_size),y_spawn+(choose(-1,1)*player_size),0,obj_virus);
	}
}