// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_main_menu(){
	
switch (mpos)
{
	case 0:
	{
		//room_goto(rm_overworld);
		room_goto_next();
		break;
	}
	
	case 1:
	{
		//room_goto(rm_overworld);
		room_goto_next();
		load = true;
		break;
	}
	
	case 2:
	{
		game_end();
		break;
	}

}

}