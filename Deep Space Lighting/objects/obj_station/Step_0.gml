//Death
if hp <= 0
{
    scr_enemy_death(85,150,35,60);
}

if instance_exists(obj_levelup_menu)
{
    upgrade = true;
}
else
{
    upgrade = false;
}

//Error checking
if level_error_1 or level_error_2 or level_error_3
{
    if alarm[1] = -1
    {
        alarm[1] = room_speed*3;
    }
}

if place_meeting(x,y,obj_player)
{
//Show key prompt
key_prompt = true;
}
else
{
key_prompt = false;
}

if keyboard_check_pressed(vk_control)
{
	if key_prompt
	{
	    if (!selected)
	    {
	        selected = true;
	        audio_play_sound(snd_select,0,false);
	        pause = 1;
	        shop = true;
	        instance_deactivate_all(true);
	        instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3-16,obj_store_menu);
	    }
	}
}