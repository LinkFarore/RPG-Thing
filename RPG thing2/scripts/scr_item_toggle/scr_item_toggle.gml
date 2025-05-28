/// @description scr_item_toggle()
function scr_item_toggle() {
	if (keyboard_check_pressed(ord("Q")))
	{
	item += 1;
	audio_play_sound(snd_menu_select,1,false);
	}

	if (keyboard_check_pressed(ord("E")))
	{
	item -= 1;
	audio_play_sound(snd_menu_select,1,false);
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
