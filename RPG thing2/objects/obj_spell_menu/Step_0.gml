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

var pushleft, pushright, push;

push = max(keyboard_check_pressed(vk_enter),keyboard_check_pressed(vk_space),gamepad_button_check_pressed(0,gp_face1),0);
pushleft = max(keyboard_check_pressed(vk_left),keyboard_check_pressed(ord("A")),gamepad_button_check_pressed(0,gp_padl),0);
pushright = max(keyboard_check_pressed(vk_right),keyboard_check_pressed(ord("D")),gamepad_button_check_pressed(0,gp_padr),0);

if (push == 1) 
{
    scr_level_up_menu();
	audio_play_sound(snd_menu_push,0,false);
}
if (pushleft == 1)
{
    scr_level_up_minus();
	audio_play_sound(snd_menu_push,0,false);
}
if (pushright == 1) 
{
    scr_level_up_plus();
    audio_play_sound(snd_menu_push,0,false);
}

level[0] = "Level: " + string(player_atk_point) + "   +   " + string(player_atk_point_temp);
level[1] = "Level: " + string(player_maxhp_point) + "   +   " + string(player_maxhp_point_temp);
level[2] = "Level: " + string(player_magic_point) + "   +   " + string(player_magic_point_temp);
level[3] = "Level: " + string(player_intellect_point) + "   +   " + string(player_intellect_point_temp);
level[4] = "Level: " + string(player_luck_point) + "   +   " + string(player_luck_point_temp);

if keyboard_check_pressed(vk_escape)
{
    level_up = false;
    instance_destroy();
    instance_activate_all();
    audio_play_sound(snd_menu_open,0,false);
}

if level_error_1 or level_error_2
{
    if alarm[0] = -1
    {
    alarm[0] = 90;
    }
}