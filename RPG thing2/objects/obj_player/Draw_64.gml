/// @description Draw GUI
draw_set_alpha(1);

//Stop drawing the HUD if player is in level up menu
if (level_up)
{exit};

if (spell_menu)
{exit};

if (item_menu)
{exit};

//Heart system
var v,i,t;


for (i=0; i<player_maxhp; i+=4)
{
if i < 60
{
draw_sprite(spr_empty_heart,0,i*2+11,10)
}//draws all of the empty heart slots on the first row.

if i >= 60
{
draw_sprite(spr_empty_heart,0,(i-60)*2+11,20)
}
}//draws all of the empty heart slots on the second row.

for (t=0; t<player_hp-4; t+=4)
{
if t < 60
{
draw_sprite(spr_heart_full,0,t*2+11,10)
}//draws all of the full heart slots, always one heart less than the current heart, first row

if t >= 60
{
draw_sprite(spr_heart_full,0,(t-60)*2+11,20)
}
}//draws all of the full heart slots, always one heart less than the current heart, second row

for (v=0; v<player_hp; v+=4) {}//The reason nothing is in here is because I want everything below this to be executed once every step.  It won't work otherwise.


if player_hp < 60
{
if player_hp > 0 
{
if (frac(player_hp/4)!=0) {draw_sprite(spr_heart,(frac(player_hp/4)*4)-1,11+(v*2)-8,10)} //draws a fraction of the heart, if it is a fraction
else if (player_hp!=player_maxhp) {draw_sprite(spr_heart_full,0,11+(v*2)-8,10)}//draws the full, current heart, if the current heart is full
else if (player_hp=player_maxhp) {draw_sprite(spr_heart_full,0,11+((player_maxhp-4)*2),10)}//draws the full, current heart if you have all of your player_hp
}
}

if player_hp = 60
{
if player_hp > 0 
{
if (frac(player_hp/4)!=0) {draw_sprite(spr_heart,(frac(player_hp/4)*4)-1,11+((v-60)*2)-8,10)} //draws a fraction of the heart, if it is a fraction
else if (player_hp!=player_maxhp) {draw_sprite(spr_heart_full,0,11+(v*2)-8,10)}//draws the full, current heart, if the current heart is full
else if (player_hp=player_maxhp) {draw_sprite(spr_heart_full,0,11+((player_maxhp-4)*2),10)}//draws the full, current heart if you have all of your player_hp
}
}

if player_hp > 60
{
if player_hp > 0 
{
if (frac(player_hp/4)!=0) {draw_sprite(spr_heart,(frac(player_hp/4)*4)-1,11+((v-60)*2)-8,20)} //draws a fraction of the heart, if it is a fraction
else if (player_hp!=player_maxhp) {draw_sprite(spr_heart_full,0,11+((v-60)*2)-8,20)}//draws the full, current heart, if the current heart is full
else if (player_hp=player_maxhp) {draw_sprite(spr_heart_full,0,11+(((player_maxhp-60)-4)*2),20)}//draws the full, current heart if you have all of your player_hp
}
}


//Bars
if gamepad_is_connected(0)
{
draw_sprite(spr_gui_bars_new,0,10,32);
}
else
{
draw_sprite(spr_gui_bars_new,1,10,32);
}

//Draw Action Toggle
if gamepad_is_connected(0)
{
	draw_sprite(spr_action_toggle,action,172,32);
}
else
{
	draw_sprite(spr_action_toggle_key,action,172,32);
}

//Mana Bar
if (magic > 0) && (magic <= maxmagic)
{
    draw_sprite_ext(spr_magic_bar,0,98,45,(magic*51/maxmagic+1),1,0,c_white,1);
}
    
if (magic > maxmagic)
{
    draw_sprite_ext(spr_magic_bar,0,98,45,51,1,0,c_white,1);
}

//XP Bar
if (xp > 0) && (xp <= maxxp)
{
    draw_sprite_ext(spr_xp_bar,0,98,57,(xp*51/maxxp+1),1,0,c_white,1);
}

if (xp > maxxp)
{
    draw_sprite_ext(spr_xp_bar,0,98,57,51,1,0,c_white,1);
}

//Item Display
//draw_sprite_ext(spr_item,item-1,22,44,1,1,0,c_white,1);

//Magic Display
switch(action)
{
	case 0:
	draw_sprite_ext(spr_spell_small,spell_1-1,30,54,1,1,0,c_white,1);
	draw_sprite_ext(spr_spell_small,spell_2-1,55,44,1,1,0,c_white,1);
	draw_sprite_ext(spr_spell_small,spell_3-1,80,54,1,1,0,c_white,1);
	break;
	
	case 1:
	draw_sprite_ext(spr_item,item_1-1,30,54,1,1,0,c_white,1);
	draw_sprite_ext(spr_item,item_2-1,55,44,1,1,0,c_white,1);
	draw_sprite_ext(spr_item,item_3-1,80,54,1,1,0,c_white,1);
	break;
	
	default:
	break;
}



//Coin display
draw_set_colour(c_white);
draw_set_font(fnt_numbers);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(140,71, string_hash_to_newline(string(coin)));

//Potion display
draw_set_colour(c_white);
draw_set_font(fnt_numbers);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(110,71, string_hash_to_newline(string(potion)));

if level_point > 0
{
	draw_set_font(fnt_gui);
	draw_set_halign(fa_center);
	draw_set_colour(c_black);
	draw_text(__view_get( e__VW.WView, 0 )/2,3, string_hash_to_newline("Press      to level up!"));
	draw_text(__view_get( e__VW.WView, 0 )/2,5, string_hash_to_newline("Press      to level up!"));
	draw_text(__view_get( e__VW.WView, 0 )/2+1,4, string_hash_to_newline("Press      to level up!"));
	draw_text(__view_get( e__VW.WView, 0 )/2-1,4, string_hash_to_newline("Press      to level up!"));
	draw_set_colour(c_white);
	draw_text(__view_get( e__VW.WView, 0 )/2,4, string_hash_to_newline("Press      to level up!"));

	if gamepad_is_connected(0)
	{
		draw_sprite(spr_controller_buttons,4,__view_get( e__VW.WView, 0 )/2-30,10);
	}
	else
	{
		draw_sprite(spr_keys_2,0,__view_get( e__VW.WView, 0 )/2-42,3);
	}
}