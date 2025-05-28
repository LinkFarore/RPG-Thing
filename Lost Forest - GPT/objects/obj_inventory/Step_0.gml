if keyboard_check_pressed(vk_tab) && spell_menu == true {
    spell_menu = false;
    instance_activate_all();

    with obj_player {
        can_pause = false;
        alarm[1] = 5;
		
		camera_set_view_angle(view_camera[0],camera_angle_saved);

        // Update spell bar data from the temp array
        spell_bar[0] = obj_spell_bar.spell_bar_temp[0];
        spell_bar[1] = obj_spell_bar.spell_bar_temp[1];
        spell_bar[2] = obj_spell_bar.spell_bar_temp[2];
        spell_bar[3] = obj_spell_bar.spell_bar_temp[3];
        spell_bar[4] = obj_spell_bar.spell_bar_temp[4];
    }

    with obj_spell_bar instance_destroy();
    instance_destroy();
}