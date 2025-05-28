function scr_player_death() {
	scr_level_save();
	instance_deactivate_all(false);
	instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,obj_gameover);



}
