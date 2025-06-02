/// @description Projectile Direction Code

if hspeed < 0 && vspeed = 0
{
    rockleft = instance_create(x,y,obj_enemy_arrow);
    rockleft.direction = 180;
}

if hspeed > 0 && vspeed = 0
{
    rockright = instance_create(x,y,obj_enemy_arrow);
    rockright.direction = 0;
}

if hspeed = 0 && vspeed < 0
{
    rockup = instance_create(x,y,obj_enemy_arrow);
    rockup.direction = 90;
}

if hspeed = 0 && vspeed > 0
{
    rockdown = instance_create(x,y,obj_enemy_arrow);
    rockdown.direction = 270;
}

