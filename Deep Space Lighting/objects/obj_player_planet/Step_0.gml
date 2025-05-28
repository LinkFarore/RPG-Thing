/// @description Control the player

//Get the input
key_move = keyboard_check(vk_space);
key_shoot = mouse_check_button(mb_left);

//Player points towards mouse location
if distance_to_point(mouse_x,mouse_y) > 5
{
    image_angle = point_direction(x,y,mouse_x,mouse_y);
}

//Get the direction the player is facing
dir = image_angle;

//Movement
if key_move
{
    motion_add(dir,1);
}

//Speed cap
if (speed >= 4) speed = 4;

//set the friction
if (!key_move)
{
    friction = 1;
}else{
    friction = 0;
}

//Fire the spell.
/*if (mouse_check_button(mb_left))
{
    if (alarm[0] == -1 && global.spellcost <= global.mana)
    {
        image_index = 5;
        instance_create(x,y,global.spell);
        global.mana -= global.spellcost;
    }
}
else
{
    image_index = 0;
    if (global.mana < global.maxmana)
    {
        global.mana += global.maxmana/50;
        if (global.mana > global.maxmana)
        {
            global.mana = global.maxmana;
        }
    }
}*/


//Loops the player to the other side of the planet
if(x > planetWidth){
    x -= planetWidth;
    cam = instance_find(obj_camera_planet,1);
    with(cam){x -= planetWidth;}
}
if(y > planetHeight){
    y -= planetHeight;
    cam = instance_find(obj_camera_planet,1);
    with(cam){y -= planetHeight;}
}
if(x < 0){
    x += planetWidth;
    cam = instance_find(obj_camera_planet,1);
    with(cam){x += planetWidth;}
}
if(y < 0){
    y += planetHeight;
    cam = instance_find(obj_camera_planet,1);
    with(cam){y += planetHeight;}
}



//This shows which 1/4th tile the player is on, for rendering purposes.
var playerPlanetX,playerPlanetY;
playerPlanetX = floor((x/planetWidth)*2);
playerPlanetY = floor((y/planetHeight)*2);
if(playerPlanetX <= 0){playerPlanetPos = 0;}
if(playerPlanetX >= 1){playerPlanetPos = 1;}
if(playerPlanetY <= 0){}
if(playerPlanetY >= 1){playerPlanetPos += 2;}

/* */
/*  */
