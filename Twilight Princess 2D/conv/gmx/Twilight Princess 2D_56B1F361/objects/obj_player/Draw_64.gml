/// @description Alpha reset
image_alpha = 1;

///Black HUD rectangle
draw_set_color(c_black);
draw_rectangle(0,0,__view_get( e__VW.WView, 0 ),38,false);

///Item Display

//Item holder
if item = 0
{
draw_sprite(spr_item,0,450,9);
}

//Item hookshot
if item = 1
{
draw_sprite(spr_item,1,450,9);
}

//Item Bomb
if item = 2
{
draw_sprite(spr_item,2,450,9);
}

//Item Bow
if item = 3
{
draw_sprite(spr_item,3,450,9);
}

//Item firerod
if item = 4
{
draw_sprite(spr_item,4,450,9);
}

//Item icerod
if item = 5
{
draw_sprite(spr_item,5,450,9);
}

//Item boomerang
if item = 6
{
draw_sprite(spr_item,6,450,9);
}

///Rupee display

draw_sprite(spr_rupee_gui,0,11,250);

if rupee = global.rupeemax
{
draw_set_colour(c_yellow);
draw_set_font(fnt_numbers);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(26,250, string_hash_to_newline(string(rupee)));
}
else
{
draw_set_colour(c_white);
draw_set_font(fnt_numbers);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(26,250, string_hash_to_newline(string(rupee)));
}

///Health System

/* 
Nothing you have to change here except the sprite names!
Or, if you want to change where the hearts are drawn, it's the '10' on the "view_xview's" and "view_view's".
Do NOT change the '-8' in lines 16 and 17.
*/
var v,i,t;

for (i=0; i<maxhealth; i+=4)
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

for (t=0; t<hp-4; t+=4)
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

for (v=0; v<hp; v+=4) {}//The reason nothing is in here is because I want everything below this to be executed once every step.  It won't work otherwise.


if hp < 60
{
if hp > 0 
{
if (frac(hp/4)!=0) {draw_sprite(spr_heart,(frac(hp/4)*4)-1,11+(v*2)-8,10)} //draws a fraction of the heart, if it is a fraction
else if (hp!=maxhealth) {draw_sprite(spr_heart_full,0,11+(v*2)-8,10)}//draws the full, current heart, if the current heart is full
else if (hp=maxhealth) {draw_sprite(spr_heart_full,0,11+((maxhealth-4)*2),10)}//draws the full, current heart if you have all of your hp
}
}

if hp = 60
{
if hp > 0 
{
if (frac(hp/4)!=0) {draw_sprite(spr_heart,(frac(hp/4)*4)-1,11+((v-60)*2)-8,10)} //draws a fraction of the heart, if it is a fraction
else if (hp!=maxhealth) {draw_sprite(spr_heart_full,0,11+(v*2)-8,10)}//draws the full, current heart, if the current heart is full
else if (hp=maxhealth) {draw_sprite(spr_heart_full,0,11+((maxhealth-4)*2),10)}//draws the full, current heart if you have all of your hp
}
}

if hp > 60
{
if hp > 0 
{
if (frac(hp/4)!=0) {draw_sprite(spr_heart,(frac(hp/4)*4)-1,11+((v-60)*2)-8,20)} //draws a fraction of the heart, if it is a fraction
else if (hp!=maxhealth) {draw_sprite(spr_heart_full,0,11+((v-60)*2)-8,20)}//draws the full, current heart, if the current heart is full
else if (hp=maxhealth) {draw_sprite(spr_heart_full,0,11+(((maxhealth-60)-4)*2),20)}//draws the full, current heart if you have all of your hp
}
}

/* */
///Magic Bar Display
/*draw_sprite(spr_magic_bar,0,413,9);

if magic > 0
{
draw_sprite_ext(spr_magic_bar_fill,0,416,12,magic/2,1,0,c_white,1);
}

/* */
/*  */
