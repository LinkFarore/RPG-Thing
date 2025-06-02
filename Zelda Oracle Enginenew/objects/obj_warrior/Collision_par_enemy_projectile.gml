if inv = false 
{
hp -= 0.25;
alarm[0] = 15;
inv = true;
sprite_u = sprite_hurt_u;
sprite_d = sprite_hurt_d;
sprite_l = sprite_hurt_l;
sprite_r = sprite_hurt_r;
with other {instance_destroy();}
}
else 
{
//
}

