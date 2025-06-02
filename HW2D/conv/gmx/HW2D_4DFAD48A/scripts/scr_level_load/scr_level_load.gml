ini_open("savedata.sav");
level = ini_read_real("savedata","level",1);
xp = ini_read_real("savedata","xp",0);
maxxp = ini_read_real("savedata","maxxp",10);
pohlvl = ini_read_real("savedata","polvl",0);
global.maxhealth = ini_read_real("savedata","maxhealth",32);
ini_close();
