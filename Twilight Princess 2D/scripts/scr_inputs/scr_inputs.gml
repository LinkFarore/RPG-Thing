function scr_inputs() {
	//Get the player's input
	key_right = keyboard_check(ord("D"));
	key_left = -keyboard_check(ord("A"));
	key_jump = keyboard_check_pressed(ord("W"));
	key_jump_held = keyboard_check(ord("W"));
	key_down_held = keyboard_check(ord("S"));
	key_down = keyboard_check_pressed(ord("S"))
	key_sword = keyboard_check_pressed(vk_space);
	key_item = keyboard_check_pressed(vk_enter);


	if gamepad_is_connected(0)
	{
	    key_right = gamepad_button_check(0, gp_padr);
	    key_left = -gamepad_button_check(0, gp_padl);
	    key_down = gamepad_button_check_pressed(0, gp_padd);
	    key_jump = gamepad_button_check_pressed(0, gp_face1);
	    key_jump_held = gamepad_button_check(0,gp_face1);
	    key_down_held = gamepad_button_check(0,gp_padd);
	    key_sword = gamepad_button_check_pressed(0,gp_face2);
	    key_item = gamepad_button_check_pressed(0,gp_face3); 
	}



}
