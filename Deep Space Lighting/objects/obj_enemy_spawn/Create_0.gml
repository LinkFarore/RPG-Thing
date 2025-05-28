if instance_exists(obj_player) && distance_to_object(obj_player) > 260
{
    if (floor(random(4-1))=0)
    {
    enemy = 0;
    }
    else
    if (floor(random(4-1))=0)
    {
    enemy = 1;
    }
    else
    if (floor(random(4-1))=0)
    {
    enemy = 2;
    }
    else
    if (floor(random(4-1))=0)
    {
    enemy = 3;
    }
    else
    if (floor(random(1-1))=0)
    {
    enemy = 0;
    }
    
    switch(enemy)
    {
    case 0: instance_change(obj_enemy_fighter,true); break;
    case 1: instance_change(obj_enemy_fighter2,true); break;
    case 2: instance_change(obj_enemy_fighter3,true); break;
    case 3: instance_change(obj_enemy_bomber,true); break;
    }
}
else
{
    instance_destroy();
}

