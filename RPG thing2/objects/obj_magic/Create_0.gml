audio_play_sound(snd_item_drop,0,false);

type = irandom(3);

image_speed = 0;
image_index = type;

heal = 0;

switch (type)
{
    case 0: heal = 3;
    
    case 1: heal = 8;
    
    case 2: heal = 12;
    
    case 3: heal = 20;
}

