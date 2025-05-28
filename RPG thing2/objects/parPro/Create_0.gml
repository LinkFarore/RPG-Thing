image_speed = 0.4;

//hp removed
damage = 1;
hurt = false;

enemy = instance_place(x,y,objEnemyRng)
//Direction
if enemy.eneDir = 1 { hspeed = 6;}
if enemy.eneDir = 0 { hspeed = -6;}

audio_sound_gain(snd_rock_spit,.4,0);
audio_play_sound(snd_rock_spit,1,false);