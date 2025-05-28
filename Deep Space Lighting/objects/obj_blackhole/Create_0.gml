image_speed = 1;
image_index = 0;


traction = sprite_width*1.75;
touch = false;
star_gravity = 1;

if instance_exists(obj_whitehole)
{
	pair = instance_nearest(x,y,obj_whitehole);
}
else
if instance_exists(obj_blackhole)
{
	pair = instance_nearest(x,y,obj_blackhole);
}
else
if instance_exists(obj_station)
{
	pair = instance_nearest(x,y,obj_station);
}
else
{
	pair = id;
}