/// @description scr_item_toggle()
if (keyboard_check_pressed(ord("Q"))) || gamepad_button_check_pressed(0,gp_shoulderr)
{
item += 1;
magic += 5;
audio_play_sound(snd_menu_select,1,false);
}

if (keyboard_check_pressed(ord("E"))) || gamepad_button_check_pressed(0,gp_shoulderl)
{
item -= 1;
magic -= 5;
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
