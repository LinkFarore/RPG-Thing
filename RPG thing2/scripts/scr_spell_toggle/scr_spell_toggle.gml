/// @description scr_item_toggle()
function scr_spell_toggle() {
	if (keyboard_check_pressed(ord("1")))
	{
	spell -= 1;
	audio_play_sound(snd_menu_select,1,false);
	}

	if (keyboard_check_pressed(ord("3")))
	{
	spell += 1;
	audio_play_sound(snd_menu_select,1,false);
	}

	if spell < s_min 
	{
	spell = s_max;
	}

	if spell > s_max
	{
	spell = s_min;
	}
}
