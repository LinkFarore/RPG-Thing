event_inherited();

draw_self();

//instance_create(x+lengthdir_x(-sprite_height/4,image_angle+90);

//Left
draw_sprite_ext(spr_turret,0,x+lengthdir_x(34,image_angle+35),y+lengthdir_y(34,image_angle+35),1,1,point_direction(x+lengthdir_x(34,image_angle+35),y+lengthdir_y(34,image_angle+35),obj_player.x,obj_player.y),c_white,1);
//Right
draw_sprite_ext(spr_turret,0,x+lengthdir_x(34,image_angle-35),y+lengthdir_y(34,image_angle-35),1,1,point_direction(x+lengthdir_x(34,image_angle-35),y+lengthdir_y(34,image_angle-35),obj_player.x,obj_player.y),c_white,1);
//Back
draw_sprite_ext(spr_turret,0,x+lengthdir_x(28,image_angle-180),y+lengthdir_y(-28,image_angle),1,1,point_direction(x+lengthdir_x(28,image_angle-180),y+lengthdir_y(-28,image_angle),obj_player.x,obj_player.y),c_white,1);