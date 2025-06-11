function scr_item_2()
{

if ani = true
    {exit};
    
    switch(item_2)
    {
        case 0: break;
        case 1: if instance_number(obj_bomb) < 3 {instance_create(x,y,obj_bomb);} break;
        case 2: if alarm[3] = -1 && sprite_index != spr_bow
				{
					if !(crouch)
					{
						bow_shoot = true;
					}

					if (crouch)
					{
						bow_shoot = true;
					}
					alarm[3] = 5;
					
				} break;
        case 3: if !instance_exists(obj_boomerang)
				{
					if !(crouch)
					{
					    switch(dir)
					    {
					        case -1: boomerangleft = instance_create(x,y,obj_boomerang); boomerangleft.direction = 180; break;
					        case 1: boomerangright = instance_create(x,y,obj_boomerang); boomerangright.direction = 0; break;
					    }
					}

					if (crouch)
					{
					    switch(dir)
					    {
					        case -1: boomerangleft = instance_create(x,y+8,obj_boomerang); boomerangleft.direction = 180; break;
					        case 1: boomerangright = instance_create(x,y+8,obj_boomerang); boomerangright.direction = 0; break;
					    }
					}
				} break;
				
		case 4: {instance_create(x,y-4,obj_hookshot_head);
        ani = true;
        inv = true;
        sprite_index = spr_player_hookshot;
        alarm[2] = 1;} break;
    }

}