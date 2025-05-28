//draw_sprite_ext(spr_menu_bg,0,0,0,3.5,3.5,0,c_white,1);
//draw_sprite_ext(spr_menu_bg,1,0,0,3.5,3.5,0,c_white,1);
//draw_sprite_ext(spr_menu_bg,2,0,0,3.5,3.5,0,c_white,1);
//draw_sprite_ext(spr_menu_bg,3,0,0,3.5,3.5,0,c_white,1);


draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Outline
var outline_thickness;

outline_thickness = 2;

draw_set_color(c_black);
draw_text(room_width/4+outline_thickness,room_height/4+outline_thickness,"RPG Game");
draw_text(room_width/4-outline_thickness,room_height/4-outline_thickness,"RPG Game");
draw_text(room_width/4+outline_thickness,room_height/4-outline_thickness,"RPG Game");
draw_text(room_width/4-outline_thickness,room_height/4+outline_thickness,"RPG Game");
draw_text(room_width/4+outline_thickness,room_height/4,"RPG Game");
draw_text(room_width/4-outline_thickness,room_height/4,"RPG Game");
draw_text(room_width/4,room_height/4+outline_thickness,"RPG Game");
draw_text(room_width/4,room_height/4-outline_thickness,"RPG Game");

draw_set_color(c_white);
draw_text(room_width/4,room_height/4,"RPG Game");