upg = irandom(3)

switch upg
{
    case 0: instance_create(x,y,obj_health_up);
    break;
    
    case 1: instance_create(x,y,obj_energy_up);
    break;
    
    case 2: instance_create(x,y,obj_attack_up);
    break;
    
    case 3: instance_create(x,y,obj_shield_up);
    break;
}

instance_destroy();