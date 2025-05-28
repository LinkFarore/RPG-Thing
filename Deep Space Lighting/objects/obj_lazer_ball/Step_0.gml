part_type_direction(global.pt_blue_lazer,dir-180,dir-180,0,0);
part_particles_create(global.ps,x,y,global.pt_blue_lazer,1);

if distance_to_object(obj_player) > __view_get( e__VW.WView, 0 )*2.5
{
    instance_destroy();
}

