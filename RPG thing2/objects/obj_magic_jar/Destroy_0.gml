/// @description Create the particles
part_particles_create(global.ps,x,y,global.pt_potm,4);
instance_create(x,y,obj_magic);
audio_play_sound(snd_pot_break,1,false);

