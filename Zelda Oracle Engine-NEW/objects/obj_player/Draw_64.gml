/// @description Health System

/* 
Nothing you have to change here except the sprite names!
Or, if you want to change where the hearts are drawn, it's the '10' on the "view_xview's" and "view_view's".
Do NOT change the '-8' in lines 16 and 17.
*/
var v,i,t;

for (i=0; i<global.maxhealth; i+=4)
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

for (t=0; t<health-4; t+=4)
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

for (v=0; v<health; v+=4) {}//The reason nothing is in here is because I want everything below this to be executed once every step.  It won't work otherwise.


if health < 60
{
if health > 0 
{
if (frac(health/4)!=0) {draw_sprite(spr_heart,(frac(health/4)*4)-1,11+(v*2)-8,10)} //draws a fraction of the heart, if it is a fraction
else if (health!=global.maxhealth) {draw_sprite(spr_heart_full,0,11+(v*2)-8,10)}//draws the full, current heart, if the current heart is full
else if (health=global.maxhealth) {draw_sprite(spr_heart_full,0,11+((global.maxhealth-4)*2),10)}//draws the full, current heart if you have all of your health
}
}

if health = 60
{
if health > 0 
{
if (frac(health/4)!=0) {draw_sprite(spr_heart,(frac(health/4)*4)-1,11+((v-60)*2)-8,10)} //draws a fraction of the heart, if it is a fraction
else if (health!=global.maxhealth) {draw_sprite(spr_heart_full,0,11+(v*2)-8,10)}//draws the full, current heart, if the current heart is full
else if (health=global.maxhealth) {draw_sprite(spr_heart_full,0,11+((global.maxhealth-4)*2),10)}//draws the full, current heart if you have all of your health
}
}

if health > 60
{
if health > 0 
{
if (frac(health/4)!=0) {draw_sprite(spr_heart,(frac(health/4)*4)-1,11+((v-60)*2)-8,20)} //draws a fraction of the heart, if it is a fraction
else if (health!=global.maxhealth) {draw_sprite(spr_heart_full,0,11+((v-60)*2)-8,20)}//draws the full, current heart, if the current heart is full
else if (health=global.maxhealth) {draw_sprite(spr_heart_full,0,11+(((global.maxhealth-60)-4)*2),20)}//draws the full, current heart if you have all of your health
}
}

/* */
///Special Attack Bar System


if global.maxhealth <= 60
{
if global.mana > 0
{
draw_rectangle_colour(15,24,15+(global.mana*50/50),26,c_yellow,c_white,c_white,c_yellow,false);
}
draw_sprite(spr_keep_bar,0,15,24);

if global.mana > 50
{
global.mana = 50;
}
}

if global.maxhealth > 60
{
if global.mana > 0
{
draw_rectangle_colour(15,34,12+(global.mana*50/50),36,c_yellow,c_white,c_white,c_yellow,false);
}
draw_sprite(spr_keep_bar,0,15,34);

if global.mana > 50
{
global.mana = 50;
}
}

/* */
///Focus Bar System

if global.maxhealth <= 60
{
if global.focus > 0
{
draw_rectangle_colour(15,35,15+(global.focus*50/50),38,c_green,c_white,c_white,c_green,false);
}
draw_sprite(spr_keep_bar,0,15,35);

if global.focus > 50
{
global.focus = 50;
}
}

if global.maxhealth > 60
{
if global.focus > 0
{
draw_rectangle_colour(15,45,15+(global.focus*50/50),48,c_green,c_white,c_white,c_green,false);
}
draw_sprite(spr_keep_bar,0,15,48);

if global.focus > 50
{
global.focus = 50;
}
}

/* */
///Item Display

if global.maxhealth <= 60
{
//Item holder
if item = 0
{
draw_sprite(spr_item,0,11,53);
}

//Item bomb
if item = 1
{
draw_sprite(spr_item,1,11,53);
}

//Item Bow
if item = 2
{
draw_sprite(spr_item,2,11,53);
}

//Item Magic Rod
if item = 3
{
draw_sprite(spr_item,3,11,53);
}

//Item Boomerang
if item = 4
{
draw_sprite(spr_item,4,11,53);
}
}

if global.maxhealth > 60
{
//Item holder
if item = 0
{
draw_sprite(spr_item,0,11,53);
}

//Item bomb
if item = 1
{
draw_sprite(spr_item,1,11,63);
}

//Item Bow
if item = 2
{
draw_sprite(spr_item,2,11,63);
}

//Item Magic Rod
if item = 3
{
draw_sprite(spr_item,3,11,63);
}

//Item Boomerang
if item = 4
{
draw_sprite(spr_item,4,11,63);
}
}

/* */
///Rupee display

draw_sprite(spr_rupee,0,11,391);

draw_set_font(fnt_numbers);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(26,391, string_hash_to_newline(string(global.rupee)));

if global.rupee >= global.rupeemax
{
draw_set_colour(c_yellow);
}
else
{
draw_set_colour(c_white);
}

/* */
///POH Display
draw_sprite(spr_poh_gui,global.poh,446,3);

/* */
///Sword Type Display

/* Sword Type
Master Sword = 1
Iron Sword = 2
Wooden Sword = 3
*/
draw_sprite(spr_sword_gui,sword,429,3);

/*if sword = 1
{
draw_sprite(spr_sword_gui,0,205,3);
}

if sword = 2
{
draw_sprite(spr_sword_gui,1,205,3);
}

if sword = 3
{
draw_sprite(spr_sword_gui,2,205,3);
}

/* */
///Level Display
draw_set_font(fnt_level);
draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_set_color(c_black);
draw_text(423,245,string_hash_to_newline("Level: " + string(level)));
draw_text(421,245,string_hash_to_newline("Level: " + string(level)));
draw_text(422,244,string_hash_to_newline("Level: " + string(level)));
draw_text(422,246,string_hash_to_newline("Level: " + string(level)));
draw_text(421,246,string_hash_to_newline("Level: " + string(level)));
draw_text(423,244,string_hash_to_newline("Level: " + string(level)));
draw_set_color(c_white);
draw_text(422,245,string_hash_to_newline("Level: " + string(level)));

if xp > 0
{
draw_rectangle_colour(424,258,424+(xp*50/maxxp),266,c_gray,c_white,c_white,c_gray,false);
}
draw_sprite(spr_bar,0,424,258);

/* */
///Level Up text
if draw_lvlup = true
{
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_level_big);
draw_text_colour(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2-18,string_hash_to_newline("Level Up!"),c_white,c_white,c_yellow,c_yellow,1);
}
else{}

/* */
/*  */
