dir = direction;
target = instance_nearest(x,y,obj_target);

if distance_to_object(obj_target) <= 92
{
    motion_add(point_direction(x, y, target.x, target.y),2.5);
}

if speed > 7.5
{
    speed = 7.5;
}

if !global.custom_lazer
{
	part_type_direction(global.pt_blue_lazer,dir-180,dir-180,0,0);
	part_particles_create(global.ps,x,y,global.pt_blue_lazer,1);
}
else
{
	part_type_direction(global.pt_custom_lazer,dir-180,dir-180,0,0);
	part_particles_create(global.ps,x,y,global.pt_custom_lazer,1);
}

if distance_to_object(obj_player) > __view_get( e__VW.WView, 0 )*2.5
{
    instance_destroy();
}

