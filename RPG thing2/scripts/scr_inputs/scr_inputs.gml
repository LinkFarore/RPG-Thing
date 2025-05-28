function scr_inputs() {
	
//Get the player's input
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
key_sword = keyboard_check_pressed(vk_enter);
key_action_switch = keyboard_check_pressed(vk_backspace);
key_action_1 = keyboard_check_pressed(ord("J"));
key_action_2 = keyboard_check_pressed(ord("K"));
key_action_3 = keyboard_check_pressed(ord("L"));
key_select = keyboard_check_pressed(vk_tab);
key_start = keyboard_check_pressed(vk_escape);
key_potion = keyboard_check_pressed(ord("P"));
key_shield = keyboard_check(ord("Q"));
	
if gamepad_is_connected(0)
{
	if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2)
	{
	key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	}
		
	if (abs(gamepad_axis_value(0,gp_axislv)) > 0.2)
	{
	key_up =  abs(min(gamepad_axis_value(0,gp_axislv),0));
	key_down = max(gamepad_axis_value(0,gp_axislv),0);
	}
		
	key_jump = gamepad_button_check_pressed(0, gp_face1);
	key_jump_held = gamepad_button_check(0,gp_face1);
	key_sword = gamepad_button_check_pressed(0,gp_shoulderrb);
	key_action_switch = gamepad_button_check_pressed(0,gp_shoulderr);
	key_action_1 = gamepad_button_check_pressed(0,gp_face3);
	key_action_2 = gamepad_button_check_pressed(0,gp_face4);
	key_action_3 = gamepad_button_check_pressed(0,gp_face2);
	key_potion = gamepad_button_check_pressed(0,gp_shoulderl);
	key_select = gamepad_button_check_pressed(0,gp_select);
	key_start = gamepad_button_check_pressed(0,gp_start);
	key_shield = gamepad_button_check(0,gp_shoulderlb);
}
else
{
	//Get the player's input
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_down = keyboard_check(ord("S"));
	key_up = keyboard_check(ord("W"));
	key_jump = keyboard_check_pressed(vk_space);
	key_jump_held = keyboard_check(vk_space);
	key_sword = keyboard_check_pressed(vk_enter);
	key_action_switch = keyboard_check_pressed(vk_backspace);
	key_action_1 = keyboard_check_pressed(ord("J"));
	key_action_2 = keyboard_check_pressed(ord("K"));
	key_action_3 = keyboard_check_pressed(ord("L"));
	key_select = keyboard_check_pressed(vk_tab);
	key_start = keyboard_check_pressed(vk_escape);
	key_potion = keyboard_check_pressed(ord("P"));
	key_shield = keyboard_check(ord("Q"));
}
	
}