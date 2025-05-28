if spawn
{
height = min(height + vsp, 0)
vsp += 0.14;
speed *= .98;
}


if (distance_to_object(obj_blackhole) < 210)
{
	var inst_tract = instance_nearest(x,y,obj_blackhole);
    motion_add(point_direction(x,y,inst_tract.x,inst_tract.y),.02);
}

r += r_multi;
g += g_multi;
b += b_multi;

if r < 0 {r=255;}
if r > 255 {r=0;}

if g < 0 {g=255;}
if g > 255 {g=0;}

if b < 0 {b=255;}
if b > 255 {b=0;}


if speed > .2
{
	speed -= .01;
}

if speed > 1.5
{
	speed -= .08;
}


if speed > 3
{
	speed = 3;
}

if alarm[0] = -1
{
	alarm[0] = 15;	
}