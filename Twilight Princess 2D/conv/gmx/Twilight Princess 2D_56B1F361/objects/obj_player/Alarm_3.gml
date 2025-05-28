switch(dir)
{
    case -1: arrowleft = instance_create(x,y,obj_arrow); arrowleft.direction = 180; break;
    case 1: arrowright = instance_create(x,y,obj_arrow); arrowright.direction = 0; break;
}

audio_play_sound(snd_arrow,1,false);
can_shoot = false;
alarm[4] = 5;

