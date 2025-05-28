

if !global.custom_lazer
{
	part_type_direction(global.pt_charge_lazer,dir-180,dir-180,0,0);
	part_type_size(global.pt_charge_lazer,image_xscale/10,image_xscale/10,-image_xscale/75,0);
	part_particles_create(global.ps,x,y,global.pt_charge_lazer,1);
}
else
{
	
	part_type_direction(global.pt_charge_lazer,dir-180,dir-180,0,0);
	part_type_size(global.pt_charge_lazer,image_xscale/10,image_xscale/10,-image_xscale/75,0);
	part_type_color1(global.pt_charge_lazer,make_colour_rgb(global.temp_r_lz,global.temp_g_lz,global.temp_b_lz));
	part_particles_create(global.ps,x,y,global.pt_charge_lazer,1);
}


if distance_to_object(obj_player) > __view_get( e__VW.WView, 0 )*2.5
{
    instance_destroy();
}

if charge/2 >= .5
{
image_xscale = charge/2;
image_yscale = charge/2;
}
else
{
image_xscale = .5;
image_yscale = .5;
}