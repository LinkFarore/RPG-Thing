var move = 0;
move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),mouse_wheel_up(),gamepad_button_check_pressed(0,gp_padu),0)
move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),mouse_wheel_down(),gamepad_button_check_pressed(0,gp_padd),0)

if (move != 0)
{
    mpos += move;
    if (mpos < 0) mpos = array_length_1d(menu) - 1;
    if (mpos > array_length_1d(menu) - 1) mpos = 0;
    audio_play_sound(snd_menu_select,0,false);
}

var push;

push = max(keyboard_check_pressed(vk_enter),keyboard_check_pressed(vk_space),gamepad_button_check_pressed(0,gp_face1),0);

if (push == 1) 
{
    scr_main_menu();
	audio_play_sound(snd_menu_push,0,false);
}