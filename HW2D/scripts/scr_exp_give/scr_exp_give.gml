/// @description scr_exp_give()
function scr_exp_give() {
	if instance_exists(obj_xp_grinder) && obj_link.killstreak >= 5
	{
	    obj_link.xp +=2;
	}
	else
	{
	    obj_link.xp +=1;
	}

	if !instance_exists(obj_xp_grinder)
	{
	    obj_link.xp +=1;
	}



}
