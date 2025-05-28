draw_self();

if type = "Default"
{
	switch(part_type)
	{
		case "hull_button":
			draw_sprite(spr_hull2,hull_type,x,y);
		break;
		
		case "engine_button":
			draw_sprite(spr_engine2,engine_type,x,y);
		break;
		
		case "weapon_button":
			draw_sprite(spr_weapon2,weapon_type,x,y);
		break;
		
		default: break;
	}
}
else
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(x,y,type);
}