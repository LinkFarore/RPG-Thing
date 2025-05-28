function scr_magic_3()
{

if ani = true
    {exit};
    
    switch(spell_3)
    {
        case 0: break;
        case 1: if alarm[3] = -1 && magic >= 1//Create a fire ball
				{
					if !(crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y,obj_fire); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y,obj_fire); arrowright.direction = 0; break;
						}
					}

					if (crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y+8,obj_fire); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y+8,obj_fire); arrowright.direction = 0; break;
						}
					}
					alarm[3] = 5;
					audio_play_sound(snd_arrow,1,false);
					magic -= 1;
				} break;
        case 2: if alarm[3] = -1 && magic >= 1//Create a ice ball
				{
					if !(crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y,obj_ice); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y,obj_ice); arrowright.direction = 0; break;
						}
					}

					if (crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y+8,obj_ice); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y+8,obj_ice); arrowright.direction = 0; break;
						}
					}
					alarm[3] = 5;
					audio_play_sound(snd_arrow,1,false);
					magic -= 1;
				} break;
        case 3: if alarm[3] = -1 && magic >= 1
				{
					if !(crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y,obj_lightning); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y,obj_lightning); arrowright.direction = 0; break;
						}
					}

					if (crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y+8,obj_lightning); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y+8,obj_lightning); arrowright.direction = 0; break;
						}
					}
					alarm[3] = 5;
					audio_play_sound(snd_arrow,1,false);
					magic -= 1;
				} break;
				
		case 4: if alarm[3] = -1 && magic >= 1
				{
					if !(crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y,obj_holy); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y,obj_holy); arrowright.direction = 0; break;
						}
					}

					if (crouch)
					{
						switch(dir)
						{
						    case -1: arrowleft = instance_create(x,y+8,obj_holy); arrowleft.direction = 180; break;
						    case 1: arrowright = instance_create(x,y+8,obj_holy); arrowright.direction = 0; break;
						}
					}
					alarm[3] = 5;
					audio_play_sound(snd_arrow,1,false);
					magic -= 1;
				} break;
				
		case 5: if alarm[3] = -1 && magic >= 1
		{
			if !(crouch)
			{
				switch(dir)
				{
					case -1: arrowleft = instance_create(x,y,obj_shadow); arrowleft.direction = 180; break;
					case 1: arrowright = instance_create(x,y,obj_shadow); arrowright.direction = 0; break;
				}
			}

			if (crouch)
			{
				switch(dir)
				{
					case -1: arrowleft = instance_create(x,y+8,obj_shadow); arrowleft.direction = 180; break;
					case 1: arrowright = instance_create(x,y+8,obj_shadow); arrowright.direction = 0; break;
				}
			}
			alarm[3] = 5;
			audio_play_sound(snd_arrow,1,false);
			magic -= 1;
		} break;
		
		case 6: if alarm[3] = -1 && magic >= 1
		{
			instance_create(x,y+12,obj_aoe_fire);
			alarm[3] = 5;
			audio_play_sound(snd_arrow,1,false);
			magic -= 1;
		} break;
		
		case 7: if alarm[3] = -1 && magic >= 1
		{
			instance_create(x,y+12,obj_aoe_ice);
			alarm[3] = 5;
			audio_play_sound(snd_arrow,1,false);
			magic -= 1;
		} break;
		
		case 8: if alarm[3] = -1 && magic >= 1
		{
			instance_create(x,y+12,obj_aoe_lightning);
			alarm[3] = 5;
			audio_play_sound(snd_arrow,1,false);
			magic -= 1;
		} break;
		
		case 9: if alarm[3] = -1 && magic >= 1
		{
			instance_create(x,y+12,obj_aoe_holy);
			alarm[3] = 5;
			audio_play_sound(snd_arrow,1,false);
			magic -= 1;
		} break;
		
		case 10: if alarm[3] = -1 && magic >= 1
		{
			instance_create(x,y+12,obj_aoe_shadow);
			alarm[3] = 5;
			audio_play_sound(snd_arrow,1,false);
			magic -= 1;
		} break;
		
    }

}