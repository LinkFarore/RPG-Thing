function scr_level_save() {
	if !instance_exists(obj_player)
	{instance_activate_object(obj_player)}

	ini_open("savedata.sav");
	ini_write_real("savedata","level",obj_player.level);
	ini_write_real("savedata","xp",obj_player.xp);
	ini_write_real("savedata","maxxp",obj_player.maxxp);
	ini_write_real("savedata","pohlvl",obj_player.pohlvl);
	ini_write_real("savedata","maxhealth",global.maxhealth);
	ini_close();

	instance_deactivate_object(obj_player);



}
