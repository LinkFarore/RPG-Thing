draw_self();


switch(part_type)
{
	case "hull_button":
		draw_sprite_ext(spr_hull_new,hull_type,x,y,2,2,0,c_white,1);
	break;
		
	case "engine_button":
		draw_sprite(spr_engine2,engine_type,x+16,y);
	break;
		
	case "weapon_button":
		draw_sprite(spr_weapon_bound,weapon_type,x-24,y);
	break;
		
	default: break;
}