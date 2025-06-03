/// @description scr_enemy_wander()
/// @function scr_enemy_wander
function scr_enemy_wander() {
	{
	    if (hspeed == 0)
	    {
	        if (random(3)<1 && place_free(x-1.2,y,))
	        { hspeed = -1.2; vspeed = 0;}
	        if (random(3)<1 && place_free(x+1.2,y,))
	        { hspeed = 1.2; vspeed = 0;}
	    }
	    else
	    {
	        if (random(3)<1 && place_free(x,y-1.2,))
	        { hspeed = 0; vspeed = -1.2;}
	        if (random(3)<1 && place_free(x,y+1.2,))
	        { hspeed = 0; vspeed = 1.2;}
	    }
	}

}
