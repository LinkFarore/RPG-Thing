action_inherited();
if (hp <= 0) 
{
scr_enemy_death(60,85,15,20);
}

//Exhaust
part_type_direction(global.pt_enemy_exhaust,dir-180-18,dir-180+18,0,0);
part_particles_create(global.ps,(x+lengthdir_x(30,image_angle+90)),(y+lengthdir_y(30,image_angle+90)),global.pt_enemy_exhaust,2);	
part_particles_create(global.ps,(x+lengthdir_x(30,image_angle-90)),(y+lengthdir_y(30,image_angle-90)),global.pt_enemy_exhaust,2);