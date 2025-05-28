switch(dir)
{
    case -1: boomerangleft = instance_create(x,y,obj_boomerang); boomerangleft.direction = 180; break;
    case 1: boomerangright = instance_create(x,y,obj_boomerang); boomerangright.direction = 0; break;
}

