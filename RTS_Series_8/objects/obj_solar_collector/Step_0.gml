/// @description  Control the the states

if (hp <= 0) {
    instance_destroy();
}

if instance_exists(obj_sun)
{
	var tar_sun = instance_nearest(x,y,obj_sun)
	
	direction = point_direction(x,y,tar_sun.x,tar_sun.y);
	image_angle = direction;
}