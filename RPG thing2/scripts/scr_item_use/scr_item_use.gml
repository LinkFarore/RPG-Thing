function scr_item_use()
{

if ani = true
    {exit};
    
    switch(item)
    {
        case 0: break;
        case 1: if instance_number(obj_bomb) < 3 {instance_create(x,y,obj_bomb);} break;
        case 2: if alarm[3] = -1
				{
					if !(crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y,obj_arrow); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y,obj_arrow); arrowright.direction = 0; break;
						}
					}

					if (crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y+8,obj_arrow); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y+8,obj_arrow); arrowright.direction = 0; break;
						}
					}
					alarm[3] = 5;
					audio_play_sound(snd_arrow,1,false);
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