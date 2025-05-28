var move = 0;
move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),mouse_wheel_up(),gamepad_button_check_pressed(0,gp_padu),0)
move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),mouse_wheel_down(),gamepad_button_check_pressed(0,gp_padd),0)

if (move != 0)
{
    mpos += move;
    if (mpos < 0) mpos = array_length_1d(menu) - 1;
    if (mpos > array_length_1d(menu) - 1) mpos = 0;
    audio_play_sound(snd_select,0,false);
}

var pushleft, pushright, push, pushconfirm;

push = max(keyboard_check_pressed(vk_enter),keyboard_check_pressed(vk_space),0);
pushleft = max(keyboard_check_pressed(vk_left),keyboard_check_pressed(ord("A")),0);
pushright = max(keyboard_check_pressed(vk_right),keyboard_check_pressed(ord("D")),0);
pushconfirm = max(keyboard_check_pressed(vk_backspace),0);

if (push == 1) scr_level_up_menu();
if (pushleft == 1) scr_level_up_minus();
if (pushright == 1) scr_level_up_plus();
if (pushconfirm == 1) scr_level_up_confirm();

level[0] = "Level: " + string(weapon_str_point) + "   +   " + string(weapon_str_point_temp);
level[1] = "Level: " + string(weapon_spd_point)  + "   +   " + string(weapon_spd_point_temp);
level[2] = "Level: " + string(hull_point) + "   +   " + string(hull_point_temp);
level[3] = "Level: " + string(def_point) + "   +   " + string(def_point_temp);
level[4] = "Level: " + string(engine_point) + "   +   " + string(engine_point_temp);
level[5] = "Level: " + string(energy_point) + "   +   " + string(energy_point_temp);

sub += 1;

if sub < 0
{
    sub = 19;
}

if sub > 19 
{
    sub = 0;
}

if gamepad_button_check_pressed(0,gp_face2)
{
    selected = false;
    finish = true;
    shop = false;
    instance_activate_all();
    scr_save();
    instance_destroy();
    audio_play_sound(snd_select2,0,false);
}

