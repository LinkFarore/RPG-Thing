if (death)
{exit};

if pause
{exit};

var color_draw, light_color
color_draw = c_white;

if global.custom_hull
{
	color_draw = make_color_rgb(global.temp_r_hl,global.temp_g_hl,global.temp_b_hl);
}

if global.custom_shield
{
	shield_col = make_color_rgb(global.temp_r_sh,global.temp_g_sh,global.temp_b_sh);
}

//Draw the stun radius
if stun_blast
{
    draw_circle_colour(x,y,stun_radius,c_blue,c_blue,true);
	draw_circle_colour(x,y,stun_radius-1,c_blue,c_blue,true);
}

//Cloak
if cloak = true
{
    a = .6;
    color_draw = c_black;
}

//Draw Ricochet text
if (ricochet)
{
    draw_set_halign(fa_center);
    draw_text_colour(x,y-48,string_hash_to_newline("RICOCHET"),c_white,c_white,c_blue,c_blue,1);
    draw_set_halign(fa_left);
}

//Draw the mining lazer
if current_state == "mining" && key_shoot
{
	direction = dir;//point_direction(x,y, mouse_x, mouse_y);

	var max_length = 600;
	var solid_object = par_planetoid;
	var mining_object =par_mining;

	for(var i = 0; i < max_length; i++){

	    var lx = x + lengthdir_x(i, direction);
	    var ly = y + lengthdir_y(i, direction);

	    if(collision_point(lx, ly, solid_object, false, true)){
	        break;
	    }

	}

	draw_line_width_color(x,y,lx,ly,8,c_blue,c_white);
	
	var hit = collision_point(lx, ly, mining_object, false, true);
    
    if (hit)
    {
        hit.mine = true;
    }
}


//Draw the hull sprite
draw_sprite_ext(spr_hull_new,hull_part,x,y,2,2,image_angle,color_draw,a);

//draw the weapon sprite

var hull_offset_x, hull_offset_y;

if hull_part <= 2
{
	hull_offset_x = 10;
	hull_offset_y = 20;
}

//weapon_sprite

draw_sprite_ext(weapon_sprite,weapon_part,x,y,2,2,image_angle,color_draw,a);

//draw_sprite_ext(spr_weapon_new,weapon_part,x+lengthdir_x(15,image_angle+15),y+lengthdir_y(15,image_angle+15),2,2,image_angle,color_draw,a);
//draw_sprite_ext(spr_weapon_new,weapon_part,x+lengthdir_x(15,image_angle-15),y+lengthdir_y(15,image_angle-15),2,-2,image_angle,color_draw,a);

//draw the weapon energy sprite
/*if weapon_part = 5
{
draw_sprite_ext(spr_weapon_energy,-1,x,y,1,1,image_angle,color_draw,a);
}*/

//Draw the engine sprite
draw_sprite_ext(spr_engine2,engine_part,x,y,1,1,image_angle,color_draw,a);


//draw_sprite_ext(spr_player_temp,0,x,y,1.5,1.5,image_angle,color_draw,a);

//Shield
if shield
{
    /*if hull_point <= 29
    {
        draw_set_alpha(0.3);
        draw_circle_colour(x+lengthdir_x(6,image_angle-180),y+lengthdir_y(6,image_angle-180),(sprite_width/2)*(energy/maxenergy)+sprite_width/6,c_white,make_colour_rgb(63,63,254),false);  
    }
    else
    {
        draw_set_alpha(0.3);
        draw_circle_colour(x+lengthdir_x(6,image_angle-180),y+lengthdir_y(6,image_angle-180),(sprite_width/2)*(energy/maxenergy),c_white,make_colour_rgb(63,63,254),false);
    }*/
	shield_frame += 1;
	if shield_frame > 20
	{
		shield_frame = 0;	
	}
	
	draw_sprite_ext(spr_player_shield,shield_frame,x,y,.5,.5,image_angle,shield_col,1);

    draw_set_alpha(1);
}