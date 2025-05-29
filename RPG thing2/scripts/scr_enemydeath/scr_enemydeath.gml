/// @description scr_enemydeath()
function scr_enemydeath() {
	//effect_create_above(ef_firework,x,y,0,c_black);
	part_particles_create(global.ps,x,y,global.pt_ed,80);
	audio_play_sound(snd_enemy_die,1,false);
	
	if xp_worth = 1
	{
		xp += xp_worth;
	}
	else
	{
		xp += max(floor(xp_worth*player_intellect_point/3), xp_worth+player_intellect_point-1, xp_worth, 1);
	}

	var drop = 0//irandom(2);
	var drop_amount = irandom(10);

	if 0 = 0//irandom(10)=0//Arbitrarily changing the odds
	{ 
		switch(drop)
		{
			case 0: repeat(drop_amount)
			{
				instance_create(self.x,self.y,obj_coin);
			}; break;
			case 1: instance_create(self.x,self.y,obj_coin); break;
			case 2: instance_create(self.x,self.y,obj_coin); break;
			default: break;
		}
	}
	
	instance_destroy();
}
