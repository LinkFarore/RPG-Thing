/// @description scr_enemydeath()
effect_create_above(ef_firework,x,y,0,c_maroon);
instance_create(x,y,obj_heart_container);
audio_play_sound(snd_boss_die,1,false);
instance_destroy();
