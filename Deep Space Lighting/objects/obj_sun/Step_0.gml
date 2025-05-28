// obj_sun Step Event

//Gravity
var star_distance, toward_star, star_pull;
var factor = 400;

player_distance = point_distance(x,y,obj_player.x,obj_player.y);

if player_distance < 200
{
	player_distance = 200;	
}
 
toward_star = point_direction(obj_player.x,obj_player.y,x,y);
star_pull = factor*(1/power(player_distance,1.45));
star_pull = star_pull*star_gravity;

with obj_player
{
	motion_add(toward_star,star_pull);	
}