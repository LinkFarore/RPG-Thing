var move = 0;
move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),gamepad_button_check_pressed(0,gp_padu),0)
move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),gamepad_button_check_pressed(0,gp_padd),0)

if (move != 0)
{
    mpos += move;
    if (mpos < 0) mpos = array_length_1d(gameover) - 1;
    if (mpos > array_length_1d(gameover) - 1) mpos = 0;
}

var push;
push = max(keyboard_check_pressed(vk_enter),keyboard_check_pressed(vk_shift),keyboard_check_pressed(vk_space),gamepad_button_check_pressed(0,gp_start),gamepad_button_check_pressed(0,gp_face1),0);
if (push == 1) scr_gameover();

