/// @description Initialize the player

player_speed = 2.5;
move_speed = .4;
dir = 0;
turn_speed = 2;

can_pause = true;

spell_bar = array_create(5, -1);

spell_bar[0] = 0;
spell_bar[1] = 1;
spell_bar[2] = 2;
spell_bar[3] = 3;
spell_bar[4] = 4;

//Sprite Variables
image_speed = 0;

camera_angle_saved = 0;

//Create the character parts
var head = instance_create(x,y,obj_head);
head.creator = id;

var cape_top = instance_create(x,y,obj_cape_top);
cape_top.creator = id;

with (cape_top) 
{
    var cape_middle = instance_create(x,y,obj_cape_middle);
    cape_middle.creator = id;
    cape_middle.lag = true;
    
    var cape_bottom = instance_create(x,y,obj_cape_bottom);
    cape_bottom.creator = id;
    cape_bottom.lag = true;  
}

//Set the initialization for the spell keys
spell_key_1 = keyboard_check_pressed(ord("1"));
spell_key_2 = keyboard_check_pressed(ord("2"));
spell_key_3 = keyboard_check_pressed(ord("3"));
spell_key_4 = keyboard_check_pressed(ord("4"));
spell_key_5 = keyboard_check_pressed(ord("5"));

cooldown = false;

fog = true;

/*spell_slot_1 = -1;
spell_slot_2 = -1;
spell_slot_3 = -1;
spell_slot_4 = -1;
spell_slot_5 = -1;