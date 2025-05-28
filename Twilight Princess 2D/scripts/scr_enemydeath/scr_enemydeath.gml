/// @description scr_enemydeath()
function scr_enemydeath() {
	//effect_create_above(ef_firework,x,y,0,c_black);
	part_particles_create(global.ps,x,y,global.pt_ed,40);
	audio_play_sound(snd_enemy_die,1,false);


	if (floor(random(4-1))=0){ //Tests the chance of it happening
	instance_create(self.x,self.y,obj_health)
	}
	else
	if (floor(random(4-1))=0){ //Arbitrarily changing the odds
	instance_create(self.x,self.y,obj_rupee_g)
	}
	else
	if (floor(random(5-1))=0){ //Arbitrarily changing the odds
	instance_create(self.x,self.y,obj_rupee_b)
	}
	else
	if (floor(random(6-1))=0){ //Arbitrarily changing the odds
	instance_create(self.x,self.y,obj_rupee_r)
	}

	instance_destroy();



}
