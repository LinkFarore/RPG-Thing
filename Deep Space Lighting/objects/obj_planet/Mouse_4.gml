/// @description  Set selected
if instance_exists(obj_player)
{
    if (!pause) && (room != rm_title)
    {
		planet_color = col;
        pause = 1;
        shop = true;
        obj_player.target = id;//scr_find_planet(planetID);
        audio_play_sound(snd_select,0,false);
        instance_deactivate_all(false);
        var exit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-70,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_exit);//Exit
        var land_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+70,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-64,obj_button_land);//Land
        var edit_button = instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/4-string_height(string_hash_to_newline(name))-18,obj_edit);//Edit
		exit_button.image_xscale = 2;
		exit_button.image_yscale = 2;
		land_button.image_xscale = 2;
		land_button.image_yscale = 2;
		edit_button.image_xscale = 2;
		edit_button.image_yscale = 2;
		instance_activate_object(obj_mouse);
		instance_deactivate_object(obj_planet);
		temp_planet_name = name;
		temp_planet_desc = description;
    }
}