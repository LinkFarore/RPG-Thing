with (obj_link) {
//Exits the event
if place_meeting(x,y-8,obj_chest)
{exit};

if ani = true
{exit};

switch(item)
{
    case 0: break;
    case 1: if instance_number(obj_bomb) < 3 {instance_create(x,y,obj_bomb);} break;
    case 2: if alarm[1] = -1 {alarm[1] = 1;} break;
    case 3: if alarm[1] = -1 {alarm[1] = 1;} break;
    case 4: if instance_number(obj_boomerang) < 1 {if instance_number(obj_boomerang_r) < 1{instance_create(x,y,obj_boomerang);}} break;
}

}
