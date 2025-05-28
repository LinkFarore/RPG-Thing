/// @description scr_enemy_ship_attack()
/// @function scr_enemy_ship_attack
function scr_boss_attack() {

	//Check to see if the player is dead
	if obj_player.death = true
	{
	    exit;
	}

	//Attack the player
	if (foe != -1 && point_distance(x, y, foe.x, foe.y) < 480) 
	{
	    if (alarm[0] == -1 && weapon != -1) 
	    {
	        var lazer = instance_create(x+lengthdir_x(28,image_angle-180),y+lengthdir_y(28,image_angle-180), weapon);
	        lazer.direction = point_direction(x,y,obj_player.x,obj_player.y);
	        lazer.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
	    }
    
	    if (alarm[4] == -1 && weapon != -1) 
	    {
	        var lazer2 = instance_create(x+lengthdir_x(38,image_angle-90),y+lengthdir_y(9,image_angle-90), weapon);
	        lazer2.direction = point_direction(x,y,obj_player.x,obj_player.y);
	        lazer2.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
	    }
    
	    if (alarm[5] == -1 && weapon != -1) 
	    {
	        var lazer3 = instance_create(x+lengthdir_x(38,image_angle+90),y+lengthdir_y(9,image_angle+90), weapon);
	        lazer3.direction = point_direction(x,y,obj_player.x,obj_player.y);
	        lazer3.image_angle = point_direction(x,y,obj_player.x,obj_player.y);
	        alarm[0] = rof;
	        alarm[4] = rof+irandom(5);
	        alarm[5] = rof+irandom(5);
	    }
	}

	friction = .05;

	if (instance_exists(foe) && foe != -1) 
	{
	    if (distance_to_point(foe.x, foe.y) > 480)
	    {
	        state = "idle";
	    }
	}



}
