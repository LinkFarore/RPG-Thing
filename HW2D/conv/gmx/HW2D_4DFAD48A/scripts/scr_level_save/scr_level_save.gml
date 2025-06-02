if !instance_exists(obj_link)
{instance_activate_object(obj_link)}

ini_open("savedata.sav");
ini_write_real("savedata","level",obj_link.level);
ini_write_real("savedata","xp",obj_link.xp);
ini_write_real("savedata","maxxp",obj_link.maxxp);
ini_write_real("savedata","pohlvl",obj_link.pohlvl);
ini_write_real("savedata","maxhealth",global.maxhealth);
ini_close();

instance_deactivate_object(obj_link);
