function scr_aoe_damage()
{
	if inv = false
	{
	
		//Note: assuming the object representing a spell has a variable called element, containing the name of the element as a string.

		crit = weakness[? other.element];

		//crit will be true if other.element is "fire" or "ice", and false if it is "water" or "thunder".
		if (crit)
		{
			hp -= other.dmg*2;
		    inv = true;
			hurt_aoe = true;
		    stun = false;
			crit = false;
		    alarm[3] = 24;
		    alarm[4] = 6;	
		}
		else
		{
			hp -= other.dmg;
		    inv = true;
			hurt_aoe = true;
		    stun = false;
		    alarm[3] = 24;
		    alarm[4] = 6;
		}
	
	}
}