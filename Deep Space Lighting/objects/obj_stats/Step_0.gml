var push;
push = max(keyboard_check_pressed(vk_enter),keyboard_check_pressed(vk_space),0);

if (push == 1)
{
    instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_pause_menu);
    instance_deactivate_object(obj_player);
    instance_destroy();
}

if pause = 0 
{
    instance_destroy();
}

