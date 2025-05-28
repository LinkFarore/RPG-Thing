if keyboard_check_pressed(vk_backspace)
{
	saving = true;
	scr_save_game();
	alarm[1] = 150;
}