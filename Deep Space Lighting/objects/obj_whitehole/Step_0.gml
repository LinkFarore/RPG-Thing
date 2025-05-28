//Gravity
var star_distance, toward_star, star_pull;
var factor = 400;

player_distance = point_distance(x,y,obj_player.x,obj_player.y);

if player_distance < 200
{
	player_distance = 200;	
}
 
toward_star = point_direction(x,y,obj_player.x,obj_player.y);
star_pull = factor*(1/power(player_distance,1.6));
star_pull = star_pull*star_gravity;

with obj_player
{
	motion_add(toward_star,star_pull);	
}


/*if distance_to_object(obj_player) <= traction && obj_player.death == false
with (obj_player)
{
	if (key_move)
	{
		motion_add(point_direction(x, y, other.x, other.y), -.20);
	}
	else
	{
		motion_add(point_direction(x, y, other.x, other.y), -.15);
	}
}*/

if alarm[1] == -1
{
	alarm[1] = irandom_range(130,360);
}