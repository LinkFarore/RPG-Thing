motion_set(direction,10);
part_type_direction(global.pt_red_lazer,direction-180,direction-180,0,0);
part_particles_create(global.ps,x,y,global.pt_red_lazer,1);

if distance_to_object(obj_player) > __view_get( e__VW.WView, 0 )*3.5
{
    instance_destroy();
}