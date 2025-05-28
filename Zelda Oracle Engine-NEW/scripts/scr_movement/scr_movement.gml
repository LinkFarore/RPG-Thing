/// @description scr_movement()
/// @function scr_movement
function scr_movement() {
	scr_inputs();

	//Movement Code
	if instance_exists(par_sword) {exit}

	if key_down
	{
	    direction = 270;
	    vspeed = move * spd;
	    hspeed = move * 0;
	    sprite_index = sprite_d;
	}

	if key_left
	{
	    direction = 180;
	    hspeed = move * -spd;
	    vspeed = move * 0;
	    sprite_index = sprite_l;
	}

	if key_up
	{
	    direction = 90;
	    vspeed = move * -spd;
	    hspeed = move * 0;
	    sprite_index = sprite_u;
	}

	if key_right
	{
	    direction = 0;
	    hspeed = move * spd;
	    vspeed = move * 0;
	    sprite_index = sprite_r;
	}

	if speed > 0
	{
	image_speed = 0.25;
	}

	if key_left && key_right
	{
	image_speed = 0;
	hspeed = 0;
	}

	if key_up && key_down
	{
	image_speed = 0;
	vspeed = 0;
	}


	if keyboard_check_released(ord("S")) || gamepad_button_check_released(0,gp_padd)
	{
	    speed = 0;
	    direction = 270;
	    image_speed = 0;
	    image_index = 0;
	}

	if keyboard_check_released(ord("A")) || gamepad_button_check_released(0,gp_padl)
	{
	    speed = 0;
	    direction = 180;
	    image_speed = 0;
	    image_index = 0;
	}

	if keyboard_check_released(ord("W")) || gamepad_button_check_released(0,gp_padu)
	{
	    speed = 0;
	    direction = 90;
	    image_speed = 0;
	    image_index = 0;
	}

	if keyboard_check_released(ord("D")) || gamepad_button_check_released(0,gp_padr)
	{
	    speed = 0;
	    direction = 0;
	    image_speed = 0;
	    image_index = 0;
	}



}
