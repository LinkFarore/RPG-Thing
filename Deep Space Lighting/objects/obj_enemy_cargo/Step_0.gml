action_inherited();
if (hp <= 0) 
{
scr_enemy_death(120,180,25,40);
}

//Exhaust
part_type_direction(global.pt_enemy_exhaust,dir-180-18,dir-180+18,0,0);
part_particles_create(global.ps,(x+lengthdir_x(sprite_width/2,image_angle-90)),(y+lengthdir_y(sprite_height/4,image_angle-90)),global.pt_enemy_exhaust,2);
part_particles_create(global.ps,(x+lengthdir_x(sprite_width/2,image_angle+90)),(y+lengthdir_y(sprite_height/4,image_angle+90)),global.pt_enemy_exhaust,2);