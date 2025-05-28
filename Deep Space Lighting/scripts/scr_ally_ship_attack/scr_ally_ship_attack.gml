/// @description scr_enemy_ship_attack()
function scr_ally_ship_attack() {

//Check to see if the player is dead
if instance_exists(obj_player)
{
	if obj_player.death = true
	{
		exit;
	}
}

if !instance_exists(foe)
{exit;}

//Turning
if (foe != -1) && instance_exists(foe)
{
	var pd = point_direction(x, y, foe.x, foe.y);
	var dd = angle_difference(image_angle, pd);
	direction -= min(abs(dd),4) * sign(dd);
	image_angle = direction;
}

// Face the direction you are moving
if (foe != -1 && point_distance(x, y, foe.x, foe.y) <= attack_distance+sprite_width) 
{
	if (alarm[0] == -1 && weapon != -1) 
	{
	    switch(weapon)
	    {
	        case 0:
	        var lazer = instance_create(x, y,obj_ally_lazer);
	        lazer.direction = image_angle;
	        lazer.image_angle = image_angle;
	        lazer.attack = attack;
	        alarm[0] = rof;
	        break;
            
	        case 1:
	        var lazer1 = instance_create(x+lengthdir_x(5,image_angle+90), y+lengthdir_y(5,image_angle+90), obj_ally_lazer);
	        var lazer2 = instance_create(x+lengthdir_x(5,image_angle-90), y+lengthdir_y(5,image_angle-90), obj_ally_lazer);
	        lazer1.direction = image_angle;
	        lazer2.direction = image_angle;
	        alarm[0] = rof;
	        break;
            
	        case 2:
	        var lazer1 = instance_create(x, y,obj_ally_lazer);
	        var lazer2 = instance_create(x+lengthdir_x(8,image_angle+90), y+lengthdir_y(8,image_angle+90), obj_ally_lazer);
	        var lazer3 = instance_create(x+lengthdir_x(8,image_angle-90), y+lengthdir_y(8,image_angle-90), obj_ally_lazer);
	        lazer1.direction = image_angle;
	        lazer2.direction = image_angle;
	        lazer3.direction = image_angle;
	        alarm[0] = rof;
	        break;
            
	        case 3:
	        var lazer1 = instance_create(x+lengthdir_x(5,image_angle+90), y+lengthdir_y(5,image_angle+90), obj_ally_lazer);
	        var lazer2 = instance_create(x+lengthdir_x(5,image_angle-90), y+lengthdir_y(5,image_angle-90), obj_ally_lazer);
	        lazer1.direction = image_angle+15;
	        lazer2.direction = image_angle-15;
	        lazer1.wave = 1;
	        lazer2.wave = -1;
	        lazer1.alarm[0] = 5;
	        lazer2.alarm[0] = 5;
	        alarm[0] = rof;
	        break;
	    }
	}
}

friction = .5;

if (instance_exists(foe) && foe != -1) 
{
	if (distance_to_point(foe.x, foe.y) >= attack_distance)
	{
	    state = "chase";
	}
}

if (instance_exists(foe) && foe != -1) 
{
	if foe.cloak == true
	{
	    state = "idle";
	}
}

}