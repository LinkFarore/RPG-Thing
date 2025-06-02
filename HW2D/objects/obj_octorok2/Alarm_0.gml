/// @description Projectile Direction Code

if hspeed < 0 && vspeed = 0
{
    rockleft = instance_create(x,y,obj_rock);
    rockleft.direction = 180;
}

if hspeed > 0 && vspeed = 0
{
    rockright = instance_create(x,y,obj_rock);
    rockright.direction = 0;
}

if hspeed = 0 && vspeed < 0
{
    rockup = instance_create(x,y,obj_rock);
    rockup.direction = 90;
}

if hspeed = 0 && vspeed > 0
{
    rockdown = instance_create(x,y,obj_rock);
    rockdown.direction = 270;
}

