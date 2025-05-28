if keyboard_check_pressed(vk_f4) || gamepad_button_check_pressed(0,gp_select)
{
    if window_get_fullscreen()
    {
    window_set_fullscreen(false);
    }
    else
    {
    window_set_fullscreen(true);
    }
}

if keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0,gp_start)
{
    if room = rm_menu {exit}
    if room = rm_initialize {exit}
    if room = rm_title {exit}
    if room = rm_credits {exit}
    if room = rm_costume {exit}
    
    if (!pause)
    {
        pause = 1
        instance_deactivate_all(true);
        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/4,obj_menu);
    }
    else
    {
        pause = 0
        instance_activate_all();
    }
}

