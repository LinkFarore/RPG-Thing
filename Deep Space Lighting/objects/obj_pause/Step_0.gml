//Fullscreen toggle
if keyboard_check_pressed(vk_f4)
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

if keyboard_check_pressed(vk_f5)
{
    if file_exists("cosmicruins.ini")
    {
        file_delete("cosmicruins.ini");
    }
}

//general pause
if keyboard_check_pressed(vk_escape) && (room != rm_title)
{
    if (!pause)
    {
        pause = 1
        instance_deactivate_all(true);
        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3,obj_pause_menu);
    }
    else
    {
        pause = 0
        instance_activate_all();
        if instance_exists(obj_pause_menu)
        {
            with(obj_pause_menu)
            {
                instance_destroy();
            }
        }
        
        if instance_exists(obj_levelup_menu)
        {
            with(obj_levelup_menu)
            {
                instance_destroy();
            }
        }
    }
}

//follow the player
if instance_exists(obj_player)
{
x = obj_player.x;
y = obj_player.y;
}

//Error checking
if level_error_1 or level_error_2
{
    if alarm[0] = -1
    {
        alarm[0] = room_speed*3;
    }
}

