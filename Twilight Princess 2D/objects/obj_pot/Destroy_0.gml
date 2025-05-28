/// @description Create the particles
part_particles_create(global.ps,x,y,global.pt_pot,4);

if (floor(random(3-1))=0){ //Tests the chance of it happening
instance_create(self.x,self.y,obj_rupee_g)
}
else
if (floor(random(3-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_magic)
}
else
if (floor(random(4-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_b)
}
else
if (floor(random(5-1))=0){ //Arbitrarily changing the odds
instance_create(self.x,self.y,obj_rupee_r)
}

audio_play_sound(snd_pot_break,1,false);

