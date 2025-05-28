//Gravity
var star_distance, toward_star, star_pull;
var factor = 400;

player_distance = point_distance(x,y,obj_player.x,obj_player.y);

if player_distance < 200
{
	player_distance = 200;	
}
 
toward_star = point_direction(obj_player.x,obj_player.y,x,y);
star_pull = factor*(1/power(player_distance,1.6));
star_pull = star_pull*star_gravity;

with obj_player
{
	motion_add(toward_star,star_pull);	
}

/*if distance_to_object(obj_player) <= traction && obj_player.death == false
with (obj_player)
{
    motion_add(point_direction(x, y, other.x, other.y), .1);
    
    //Give the player the succ
    if (x == other.x && y == other.y) {
        if(id > other.id) {
            x+=.3;
        } else {
            x-=.3;
        }
    }
}