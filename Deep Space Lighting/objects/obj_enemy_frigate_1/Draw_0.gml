event_inherited();

draw_self();

//instance_create(x+lengthdir_x(-sprite_height/4,image_angle+90);

draw_sprite_ext(spr_turret,0,x+lengthdir_x(9,image_angle-90),y+lengthdir_y(9,image_angle-90),1,1,point_direction(x,y,obj_player.x,obj_player.y),c_white,1);

draw_sprite_ext(spr_turret,0,x+lengthdir_x(9,image_angle+90),y+lengthdir_y(9,image_angle+90),1,1,point_direction(x,y,obj_player.x,obj_player.y),c_white,1);

draw_sprite_ext(spr_turret,0,x+lengthdir_x(28,image_angle-180),y+lengthdir_y(28,image_angle-180),1,1,point_direction(x,y,obj_player.x,obj_player.y),c_white,1);

