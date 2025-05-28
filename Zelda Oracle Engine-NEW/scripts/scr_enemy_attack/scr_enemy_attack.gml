/// @description scr_enemy_attack()
/// @function scr_enemy_attack
function scr_enemy_attack() {
	if instance_exists(target)
	{
	    dir = point_direction(x, y, target.x, target.y);
	    if dir < 45 or dir >= 315 { //Right
	        hspeed = 1.5;
	        vspeed = 0;
	        sprite_index = sprite_r;
	    } else if dir < 135 { //Up
	        hspeed = 0;
	        vspeed = -1.5;
	        sprite_index = sprite_u;
	    } else if dir < 225 { //Left
	        hspeed = -1.5;
	        vspeed = 0;
	        sprite_index = sprite_l;
	    } else { //Down
	        hspeed = 0;
	        vspeed = 1.5;
	        sprite_index = sprite_d;
	    }
	}



}
