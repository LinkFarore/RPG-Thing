/// @description scr_sword_control()
function scr_sword_control() {

	speed = 0;

	switch(direction)
	{
	    case 0: sprite_index = sprite_sword_r; image_speed = .35; break;
	    case 90: sprite_index = sprite_sword_u; image_speed = .35; break;
	    case 180: sprite_index = sprite_sword_l; image_speed = .35; break;
	    case 270: sprite_index = sprite_sword_d; image_speed = .35; break;
	}



}
