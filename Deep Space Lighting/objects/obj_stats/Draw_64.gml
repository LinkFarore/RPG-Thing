//Default drawing
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_gui);
draw_set_colour(c_white);

//Attack Strength
draw_text(__view_get( e__VW.WView, 0 )/3,72,string_hash_to_newline("Attack Strength: " + string(player_attack)));

//Attack Speed
draw_text(__view_get( e__VW.WView, 0 )/3,88,string_hash_to_newline("Attack Speed: " + string(room_speed/rate_of_fire)+ "   lazers   per   second"));

//Defense
draw_text(__view_get( e__VW.WView, 0 )/3,104,string_hash_to_newline("Defense: " + string(player_attack)));

//Speed
draw_text(__view_get( e__VW.WView, 0 )/3,120,string_hash_to_newline("Speed: " + string(player_spd*room_speed)+ " km"));

//Health
draw_text(__view_get( e__VW.WView, 0 )/3,136,string_hash_to_newline("Health: " + string(obj_player.hp)+ "/"+string(player_maxhp)));

//Energy
draw_text(__view_get( e__VW.WView, 0 )/3,152,string_hash_to_newline("Energy: " + string(obj_player.energy)+ "/"+string(maxenergy)));

//Return prompt
draw_set_font(fnt_gui);
draw_text(__view_get( e__VW.WView, 0 )/3+10,__view_get( e__VW.HView, 0 )-16,string_hash_to_newline("Press"));
draw_text(__view_get( e__VW.WView, 0 )/3+__view_get( e__VW.WView, 0 )/3-50,__view_get( e__VW.HView, 0 )-16,string_hash_to_newline("to   go   back"));
draw_sprite(spr_space_icon,0,__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.HView, 0 )-16);

