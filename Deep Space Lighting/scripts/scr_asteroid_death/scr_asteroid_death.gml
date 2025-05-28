/// @description scr_enemy_death(crystal_low,crystal_high,scrap_low,scrap_high)
/// @function scr_enemy_death
/// @param crystal_low
/// @param crystal_high
/// @param scrap_low
/// @param scrap_high
function scr_asteroid_death(argument0, argument1, argument2, argument3) {
	if !audio_is_playing(snd_explosion)
	{
	    audio_play_sound(snd_explosion,1,false);
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

	instance_destroy();
}
