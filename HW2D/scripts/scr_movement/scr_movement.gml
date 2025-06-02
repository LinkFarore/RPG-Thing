/// @description scr_movement()
function scr_movement() {
	//Movement Code
	if instance_exists(par_sword) {exit}

	if keyboard_check(ord("S")){
	    direction = 270;
	    vspeed = move * spd;
	    hspeed = move * 0;
	    sprite_index = sprite_d;
	}
	if keyboard_check(ord("A")){
	    direction = 180;
	    hspeed = move * -spd;
	    vspeed = move * 0;
	    sprite_index = sprite_l;
	}
	if keyboard_check(ord("W")){
	    direction = 90;
	    vspeed = move * -spd;
	    hspeed = move * 0;
	    sprite_index = sprite_u;
	}
	if keyboard_check(ord("D")){
	    direction = 0;
	    hspeed = move * spd;
	    vspeed = move * 0;
	    sprite_index = sprite_r;
	}

	if speed != 0
	{
	image_speed = 0.25;
	}

	if keyboard_check(ord("A")) && keyboard_check(ord("D"))
	{
	image_speed = 0;
	hspeed = 0;
	}

	if keyboard_check(ord("W")) && keyboard_check(ord("S"))
	{
	image_speed = 0;
	vspeed = 0;
	}


	if keyboard_check_released(ord("S")){
	    hspeed = 0;
	    vspeed = 0;
	    direction = 270;
	    image_speed = 0;
	    image_index = 0;
	}
	if keyboard_check_released(ord("A")){
	    hspeed = 0;
	    vspeed = 0;
	    direction = 180;
	    image_speed = 0;
	    image_index = 0;
	}
	if keyboard_check_released(ord("W")){
	    hspeed = 0;
	    vspeed = 0;
	    direction = 90;
	    image_speed = 0;
	    image_index = 0;
	}
	if keyboard_check_released(ord("D")){
	    hspeed = 0;
	    vspeed = 0;
	    direction = 0;
	    image_speed = 0;
	    image_index = 0;
	}



}
