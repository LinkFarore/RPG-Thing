/// @description  Set selected
/*if instance_exists(obj_player)
{
    if (!pause) && (room != rm_title)
    {
        pause = 1;
        shop = true;
        obj_player.target = scr_find_planet(planetID);
        audio_play_sound(snd_select,0,false);
        instance_deactivate_all(true);
        instance_create(view_xview[0]+view_wview[0]/2-35,view_yview[0]+view_hview[0]-32,obj_button_exit);//Exit
        instance_create(view_xview[0]+view_wview[0]/2+35,view_yview[0]+view_hview[0]-32,obj_button_land);//Land
        instance_create(view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]/4-string_height(name)-18,obj_edit);
    }
}

/* */
/*  */
