global.dir = direction;

if ani = true {speed = 0; exit;}

//Rupee max
if global.rupee > global.rupeemax
{
    global.rupee = global.rupeemax
}

//Heart Container leveled up
if global.maxhealth < 120
{
    if pohlvl >= 10
    {
        global.maxhealth +=4;
        pohlvl = 0;
    }
}


//Piece of Heart
if global.poh = 4
{
global.poh = 0;
global.maxhealth += 4;
health = global.maxhealth;
}

//Level Up
if xp >= maxxp && level < 220
{
    scr_level_up();
}

if hurt = true
{killstreak = 0;}

//Defines how strong sword attacks will be based on which sword is equipped.
sword_str = sword;

//Death animation and event exiting
if health <= 0
{
    image_speed = .25;
    speed = 0;
    sprite_index = spr_link_death; 
}

if sprite_index = spr_link_death {exit}

//Image color blending
if !focus || !hurt
{image_blend = c_white;}

if focus = true
{
image_blend = c_yellow;
spd = spd_sprint;
}else{
spd = spd_normal;}

if hurt = true
{image_blend = c_red;}

//Running
if (keyboard_check(vk_shift)) || gamepad_button_check(0,gp_shoulderrb)
{spd = spd_sprint}
else
{spd = spd_normal}

//Item toggle
scr_item_toggle();

//Movement Code
scr_movement();


//Sword Code
if (key_space)
{
    scr_sword_control();  
}
    
//Health
if health > global.maxhealth
{
health = global.maxhealth;
}

if health < 0 
{
health = 0;
}