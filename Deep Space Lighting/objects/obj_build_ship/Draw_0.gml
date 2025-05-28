var color_draw
color_draw = c_white;

if global.custom_hull
{
	color_draw = make_color_rgb(global.temp_r_hl,global.temp_g_hl,global.temp_b_hl);
}

//Draw the hull sprite
draw_sprite_ext(spr_hull_new,hull_part,x,y,4,4,0,color_draw,1);

//draw the weapon sprite
draw_sprite_ext(spr_weapon_bound,weapon_part,x,y,4,4,0,color_draw,1);

//Draw the engine sprite
draw_sprite_ext(spr_engine2,engine_part,x,y,2,2,0,color_draw,1);

//Draw the Shield
if instance_exists(obj_hbar_b_sh)
{
	var shield_color = make_color_rgb(global.temp_r_sh,global.temp_g_sh,global.temp_b_sh);
	
	draw_sprite_ext(spr_player_shield,-1,x,y,1,1,0,shield_color,1);
}

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x+300,y,"Hull: " + string(hull_part));
draw_text(x+300,y+32,"Weapon: " + string(weapon_part));
draw_text(x+300,y+64,"Engine: " + string(engine_part));