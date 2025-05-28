/// @description Draw the GUI
if death = true
{
    draw_set_alpha(.3);
    draw_rectangle_colour(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),c_red,c_red,c_red,c_red,false);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(fnt_menu);
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("GAME OVER"));
    hh = string_height(string_hash_to_newline("YOU DIED"))+2;
    draw_set_font(fnt_gui);
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2+hh,string_hash_to_newline("Press any key to continue"));
    exit;
}

if pause
{exit}

var viewh = __view_get( e__VW.HView, 0 );

//Power up
if message_powerup
{
draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
    switch (weapon)
    {
        case 0: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Normal   Shot"));
        break;
        
        case 1: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Triple   Shot"));
        break;
        
        case 2: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Five   Shot"));
        break;
        
        case 3: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Rapid   Shot"));
        break;
        
        case 4: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Scatter   Shot"));
        break;
        
        case 5: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Bounce   Shot"));
        break;
        
        case 6: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Homing   Shot"));
        break;
        
        case 7: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Charge   Shot"));
        break;
		
		case 8: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Omega   Weapon"));
        break;
		
		case 9: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Upsilon   Weapon"));
        break;
		
		case 10: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Epsilon   Weapon"));
        break;
		
		case 11: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Psi   Weapon"));
        break;
		
		case 12: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Random Shot"));
        break;
		
		case 13: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Missiles"));
        break;
    }
}

//Defense Power up
if message2
{
draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
    switch (defense)
    {
        case 0: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Shield"));
        break;
        
        case 1: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Cloak"));
        break;
		
		case 2: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Stun Blast"));
        break;
        
        case 3: draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Speed Boost"));
        break;
    }
}

draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

if message_energy
{
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Max  Energy   Up"));
}

if message_life
{
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Max  Life   Up"));
}

if message_attack
{
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Attack   Up"));
}

if message_shield
{
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Defense   Up"));
}

if heal_message
{
    draw_set_colour(c_red);
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Already   Full   Health"));
    draw_set_colour(c_white);
}

if heal_message2
{
    draw_set_colour(c_red);
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("No   Repair   Kits"));
    draw_set_colour(c_white);
}

if message_star
{
    draw_set_colour(c_red);
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Excessive   Heat   Warning"));
    draw_set_colour(c_white);
}

if message_build_mode
{
    draw_set_colour(c_yellow);
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Build   Mode"));
    draw_set_colour(c_white);
}

if message_combat_mode
{
    draw_set_colour(c_yellow);
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Combat   Mode"));
    draw_set_colour(c_white);
}

if message_mining_mode
{
    draw_set_colour(c_yellow);
    draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-64,string_hash_to_newline("Mining   Mode"));
    draw_set_colour(c_white);
}

//Red circle effect for 1/3 health
if hp <= player_maxhp/3
{
    if flash
    {
    draw_sprite_ext(spr_damage,0,0,0,1,1,0,c_white,.6);
	draw_sprite_ext(spr_damage,0,__view_get( e__VW.WView, 0 ),0,-1,1,0,c_white,.6);
	draw_sprite_ext(spr_damage,0,0,__view_get( e__VW.HView, 0 ),1,-1,0,c_white,.6);
	draw_sprite_ext(spr_damage,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),-1,-1,0,c_white,.6);
    }
    else
    {
    draw_sprite_ext(spr_damage,0,0,0,1,1,0,c_white,.2);
	draw_sprite_ext(spr_damage,0,__view_get( e__VW.WView, 0 ),0,-1,1,0,c_white,.2);
	draw_sprite_ext(spr_damage,0,0,__view_get( e__VW.HView, 0 ),1,-1,0,c_white,.2);
	draw_sprite_ext(spr_damage,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),-1,-1,0,c_white,.2);
    }
}

//Tutorial message
draw_set_font(fnt_gui);
draw_text(__view_get( e__VW.WView, 0 )/3+90,__view_get( e__VW.HView, 0 )-16,string_hash_to_newline("Press"));
draw_text(__view_get( e__VW.WView, 0 )/3+__view_get( e__VW.WView, 0 )/3-90,__view_get( e__VW.HView, 0 )-16,string_hash_to_newline("to  accelerate"));
draw_sprite(spr_space_icon,0,__view_get( e__VW.WView, 0 )/2-56,__view_get( e__VW.HView, 0 )-38);

//Set the default drawing
draw_set_color(c_white);
draw_set_font(fnt_gui);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

//Draw the bar container
draw_sprite(spr_bar_box,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));

if levelpoint > 0
{
    draw_set_halign(fa_middle);
    draw_text(__view_get( e__VW.WView, 0 )/2+9,__view_get( e__VW.HView, 0 )-64,string_hash_to_newline("Go to a Station to level up!"));
    draw_set_halign(fa_left);
}

//Draw the debug
if debug
{
    draw_text(8,13,string_hash_to_newline("ATTACK: " + string(player_attack)));
    draw_text(8,29,string_hash_to_newline("DEFENSE: " + string(player_defense)));
    draw_text(8,45,string_hash_to_newline("ENERGY: " + string(maxenergy)));
    draw_text(8,77,string_hash_to_newline("X " + string(x)));//Shows the x coordinate
    draw_text(8,93,string_hash_to_newline("Y " + string(y)));//Shows the y coordinate
    draw_text(8,109,string_hash_to_newline("ChunkX " + string(current_chunk_x)));//Shows the x chunk
    draw_text(8,125,string_hash_to_newline("ChunkY " + string(current_chunk_y)));//Shows the y chunk
    draw_text(8,139,string_hash_to_newline("Objects: " + string(instance_count)));//Shows current amount of instances active
    draw_text(8,155,string_hash_to_newline("Seed: " + string(seed)));//Shows the seed
    draw_text(8,173,string_hash_to_newline("FPS: " + string(fps)));//Shows the FPS
	draw_text(8,191,string_hash_to_newline("Loaded: " + string(load)));//Shows if the file was loaded
    //draw_text(8,191,string_hash_to_newline("ChunkType" + string(playerChunk)));//Shows the FPS
}

///Draw Weapon icon
draw_sprite(spr_weapon_frame1,0,150,__view_get( e__VW.HView, 0 )-130);
draw_sprite(spr_weapon_icon,weapon,174,__view_get( e__VW.HView, 0 )-90);
draw_sprite(spr_defense_icon,defense,174,__view_get( e__VW.HView, 0 )-40);
draw_sprite(spr_mouse_icon,0,220,__view_get( e__VW.HView, 0 )-90);
draw_sprite(spr_mouse_icon,1,220,__view_get( e__VW.HView, 0 )-38);

//Draw the healthbars

//Health Bar    
if (hp > 0) && (hp <= player_maxhp)
{
    draw_sprite_ext(spr_health_bar,0,__view_get( e__VW.WView, 0 )-128,__view_get( e__VW.HView, 0 )-69,(hp*104/player_maxhp+1),1,0,c_white,1);
}

if (hp > player_maxhp)
{
    draw_sprite_ext(spr_health_bar,0,__view_get( e__VW.WView, 0 )-128,__view_get( e__VW.HView, 0 )-69,104,1,0,c_white,1);
}

//Energy Bar
if (energy > 0) && (energy <= maxenergy)
{
    draw_sprite_ext(spr_energy_bar,0,__view_get( e__VW.WView, 0 )-128,__view_get( e__VW.HView, 0 )-45,(energy*104/maxenergy+1),1,0,c_white,1);
}
    
if (energy > maxenergy)
{
    draw_sprite_ext(spr_energy_bar,0,__view_get( e__VW.WView, 0 )-128,__view_get( e__VW.HView, 0 )-45,104,1,0,c_white,1);
}

//XP Bar
if (xp > 0) && (xp <= maxxp)
{
    draw_sprite_ext(spr_xp_bar,0,__view_get( e__VW.WView, 0 )-128,__view_get( e__VW.HView, 0 )-21,(xp*104/maxxp+1),1,0,c_white,1);
}

if (xp > maxxp)
{
    draw_sprite_ext(spr_xp_bar,0,__view_get( e__VW.WView, 0 )-128,__view_get( e__VW.HView, 0 )-21,104,1,0,c_white,1);
}

//Healing icon
draw_sprite(spr_mouse_icon,2,__view_get( e__VW.WView, 0 )-150,__view_get( e__VW.HView, 0 )-100);
draw_sprite(spr_heal,0,__view_get( e__VW.WView, 0 )-92,__view_get( e__VW.HView, 0 )-100);
draw_text(__view_get( e__VW.WView, 0 )-44,__view_get( e__VW.HView, 0 )-100,string_hash_to_newline("x"+string(repair)));

//Missile icon
draw_sprite(spr_weapon_icon,13,__view_get( e__VW.WView, 0 )-92,__view_get( e__VW.HView, 0 )-130);
draw_text(__view_get( e__VW.WView, 0 )-44,__view_get( e__VW.HView, 0 )-130,string_hash_to_newline("x"+string(missile)));

//Minimap
scr_draw_minimap(obj_player.x,obj_player.y,1280,73,647,64);

//Large map
if (large_map)
{
	scr_draw_largemap(obj_player.x,obj_player.y,5120,640,360,256,435,3013);
}