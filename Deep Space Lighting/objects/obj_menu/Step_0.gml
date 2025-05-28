var move = 0;
move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),gamepad_button_check_pressed(0,gp_padu),mouse_wheel_up(),0);
move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),gamepad_button_check_pressed(0,gp_padd),mouse_wheel_down(),0);

if (move != 0)
{
    mpos += move;
    if (mpos < menu_min) mpos = array_length_1d(menu) - 1;
    if (mpos > array_length_1d(menu) - 1) mpos = menu_min;
    audio_play_sound(snd_select,0,false);
}

var push;
push = max(keyboard_check_pressed(vk_enter),keyboard_check_pressed(vk_space),gamepad_button_check_pressed(0,gp_face1),0);
if (push == 1) scr_menu();

sub += 1;

if sub < 0
{
    sub = 19;
}

if sub > 19 
{
    sub = 0;
}

