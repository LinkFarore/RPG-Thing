if !global.custom_exhaust
{
	//Exhaust
    part_type_direction(global.pt_player_exhaust,180-18,180+18,0,0);
	part_particles_create(global.ps,x-26,y+20,global.pt_player_exhaust,2);	
	part_particles_create(global.ps,x-26,y-20,global.pt_player_exhaust,2);
}
else
{
	//Exhaust
    part_type_direction(global.pt_custom_exhaust,180-18,180+18,0,0);
	part_particles_create(global.ps,x-26,y+20,global.pt_custom_exhaust,2);	
	part_particles_create(global.ps,x-26,y-20,global.pt_custom_exhaust,2);
}