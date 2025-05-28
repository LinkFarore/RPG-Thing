image_speed = 0.4;

//hp removed
damage = 1;

enemy = instance_place(x,y,obj_lizalfos) || instance_place(x,y,obj_lizalfos2)
//Direction
if enemy.eneDir = 1 { hspeed = 6; image_xscale = 1;}
if enemy.eneDir = 0 { hspeed = -6; image_xscale = -1;}

audio_play_sound(snd_rock_spit,1,false);

