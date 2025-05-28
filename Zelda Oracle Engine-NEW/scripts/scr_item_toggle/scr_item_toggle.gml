/// @description scr_item_toggle()
/// @function scr_item_toggle
function scr_item_toggle() {
	scr_inputs();

	if (keyboard_check_pressed(vk_right)) || gamepad_button_check_pressed(0,gp_shoulderr) || keyboard_check_pressed(ord("E"))
	{
	item += 1;
	}

	if (keyboard_check_pressed(vk_left)) || gamepad_button_check_pressed(0,gp_shoulderl) || keyboard_check_pressed(ord("Q"))
	{
	item -= 1;
	}

	if item < i_min 
	{
	item = i_max;
	}

	if item > i_max
	{
	item = i_min;
	}



}
