target = instance_nearest(x,y,obj_food);

threat = instance_nearest(x,y,par_enemy);

//Turning
var pd = point_direction(x, y, target.x, target.y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), turn_speed) * sign(dd);

//Get the direction the enemy is facing
dir = image_angle;

//Movement
motion_add(dir,.25);

//Speed Cap
if speed > enemy_spd
{
	speed = enemy_spd;
}

var food_eat = collision_circle(x,y,enemy_size+border_size,obj_food,true,true);
if food_eat != noone
{
	with food_eat
	{
		instance_destroy();	
	}
	enemy_size += .3;
	border_size = enemy_size/12;
}

var enemy_eat = collision_circle(x,y,enemy_size+border_size,par_enemy,true,true);
if enemy_eat != noone
{
	if enemy_eat.enemy_size < enemy_size-enemy_size/4
	{
		enemy_size += enemy_eat.enemy_size;
		border_size = enemy_size/12;
		with enemy_eat
		{
			instance_destroy();	
		}
	}
}

if instance_number(obj_food) < 800
{
	var x_spawn;
	var y_spawn;
	
	x_spawn = x+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	y_spawn = y+irandom_range(choose(-1,1)*500,choose(-1,1)*1000);
	
	if place_empty(x_spawn,y_spawn)
	{
		instance_create_layer(x_spawn+(choose(-1,1)*enemy_size),y_spawn+(choose(-1,1)*enemy_size),0,obj_food);
	}
}