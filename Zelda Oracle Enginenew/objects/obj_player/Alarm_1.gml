if item = 2
{
    switch(direction)
    {
        case 0: arrowleft = instance_create(x,y,obj_arrow); arrowleft.direction = direction; break;
        case 90: arrowup = instance_create(x,y,obj_arrow); arrowup.direction = direction; break;
        case 180: arrowright = instance_create(x,y,obj_arrow); arrowright.direction = direction; break;
        case 270: arrowdown = instance_create(x,y,obj_arrow); arrowdown.direction = direction; break;
    }
}
        
if item = 3
{
    switch(direction)
    {
        case 0: fireballleft = instance_create(x,y,obj_fireball); fireballleft.direction = direction; break;
        case 90: fireballup = instance_create(x,y,obj_fireball); fireballup.direction = direction; break;
        case 180: fireballright = instance_create(x,y,obj_fireball); fireballright.direction = direction; break;
        case 270: fireballdown = instance_create(x,y,obj_fireball); fireballdown.direction = direction; break;
    }
}