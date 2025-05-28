/// @description scr_enemy_death(crystal_low,crystal_high,scrap_low,scrap_high)
/// @function scr_enemy_death
/// @param crystal_low
/// @param crystal_high
/// @param scrap_low
/// @param scrap_high
function scr_enemy_death(argument0, argument1, argument2, argument3) {
	if !audio_is_playing(snd_explosion)
	{
	    audio_falloff_set_model(audio_falloff_linear_distance_clamped);
		audio_play_sound_at(snd_explosion, x, y, 0, 100, 10000, 1, false,1);
	}

	amount = irandom_range(argument0,argument1);
        
	if (amount > 0)
	{
	    var division = 360 / amount;
	    var rand = random(360);
	    for (i = 0; i < amount; i++)
	    {
	        var coin = instance_create(x,y,obj_xp_orb);
	        with (coin)
	        {
	            direction = rand + division*other.i
	        }
	    }
	}

	//part_particles_create(global.ps,x,y,global.pt_explosion,1);
	instance_create(x,y,obj_explosion);

	amount2 = irandom_range(argument2,argument3);
	if (amount2 > 0)
	{
	    var division = 360 / amount2;
	    var rand = random(360);
	    for (i = 0; i < amount2; i++)
	    {
	        var steel = instance_create(x,y,obj_gib);
	        with (steel)
	        {
	            direction = rand + division*other.i
	        }
	    }
	}

	instance_destroy();



}
