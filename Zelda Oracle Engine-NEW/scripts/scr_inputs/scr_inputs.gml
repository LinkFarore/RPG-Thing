function scr_inputs() {
	//Get the player's input
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_enter = keyboard_check_pressed(vk_enter);
	key_item = keyboard_check_pressed(vk_backspace);
	key_esc = keyboard_check_pressed(vk_escape);
	key_f4 = keyboard_check_pressed(vk_f4);
	key_space = keyboard_check_pressed(vk_space);
	key_up_a = keyboard_check_pressed(vk_up);
	key_down_a = keyboard_check_pressed(vk_down);
	key_left_a = keyboard_check_pressed(vk_left);
	key_right_a = keyboard_check_pressed(vk_right);


	if gamepad_is_connected(0)
	{
	    key_up = gamepad_button_check_pressed(0,gp_padu);
	    key_down = gamepad_button_check_pressed(0,gp_padd);
	    key_left = gamepad_button_check_pressed(0,gp_padl);
	    key_right = gamepad_button_check_pressed(0,gp_padr);
	    key_enter = gamepad_button_check_pressed(0,gp_face2);
	    key_item = gamepad_button_check_pressed(0,gp_face3);
	    key_esc = gamepad_button_check_pressed(0,gp_start);
	    key_f4 = gamepad_button_check_pressed(0,gp_select);
	    key_space = gamepad_button_check_pressed(0,gp_face1);
	}



}
