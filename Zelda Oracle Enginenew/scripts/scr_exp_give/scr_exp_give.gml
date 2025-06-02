/// @description scr_exp_give()
/// @function scr_exp_give
function scr_exp_give() {
	if instance_exists(obj_xp_grinder) && obj_player.killstreak >= 5
	{
	    obj_player.xp +=2;
	}
	else
	{
	    obj_player.xp +=1;
	}

	if !instance_exists(obj_xp_grinder)
	{
	    obj_player.xp +=1;
	}



}
