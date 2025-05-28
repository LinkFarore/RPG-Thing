//Get the player's input
scr_inputs();

//Exit the event if animated
if sprite_index = spr_player_ani
{exit}
if ani = true
{exit}

//React to inputs
move = key_left + key_right;

if !(crouch) && !(attack)
{
hsp = move * movespeed;
}

if (vsp < 10) vsp += grav;

//Jumps
if (place_meeting(x,y+1,obj_wall))
{
    jumps = jumpsmax;
}
else
{
    if (jumps == jumpsmax) jumps -=1;
}

if (key_jump) && (jumps > 0)
{
    jumps -= 1;
    vsp = -jumpspeed;
}

if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jumpspeed)


var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

//Horizontal Collision
if (place_meeting(x+hsp_final,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp_final),y,obj_wall))
    {
        x += sign(hsp_final);
    }
    hsp_final = 0;
    hsp = 0;
}

if !(crouch) && !(attack){x += hsp_final;}

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;


//Grounded check
if place_meeting(x,y+1,obj_wall)
{
    grounded = true;
}
else
{
    grounded = false;
}

dir = image_xscale;

//Dying
if y > room_height
{
scr_player_death();
}

if hp <= global.maxhealth/4
{
    if !audio_is_playing(snd_lowhealth)
    {
        audio_play_sound(snd_lowhealth,1,true);
    }
}

if hp > global.maxhealth/4
{
    if audio_is_playing(snd_lowhealth)
    {
        audio_stop_sound(snd_lowhealth);
    }
}

if hp <= 0
{
scr_player_death();
}

if hp > global.maxhealth
{
hp = global.maxhealth;
}

if rupee > global.rupeemax
{
rupee = global.rupeemax;
}


if magic > magic_max
{
magic = magic_max;
}

if keyboard_check(ord("R")) 
{
room_restart();
}

//Crouching
if (key_down_held)
{
crouch = true;
mask_index = spr_player_mask_crouch;
}
else
{
crouch = false;
mask_index = spr_player_mask;
}

//Attacking
if (key_sword) && (can_attack)
{
        if (crouch)
        {
            instance_create(x,y,obj_sword_c);
            sprite_index = spr_player_attack_c;
        }
        else
        {
            instance_create(x,y,par_sword);
            sprite_index = spr_player_attack;
        }
        attack = true;
        can_attack = false;
        image_speed=0.3;
}
else
{
//Do nothing.(reverts back to default idle sprite)
}

//Animate
if sprite_index = spr_player_attack || sprite_index = spr_player_attack_c
{
    
        can_attack = true;
    
}
if(attack) {exit}

if (move!=0) image_xscale = move;

if (place_meeting(x,y+1,obj_wall))
{
    if (move!=0) 
    {
        sprite_index = spr_player_run; 
        image_speed=0.45;
    }
    else 
    {
        if !(attack)
            {
                sprite_index = spr_player_idle;
                image_speed = 0;
            }
    }
}

if vsp != 0
{
if (vsp < 0) sprite_index = spr_player_jump; else sprite_index = spr_player_fall;
}

if (crouch) 
{
sprite_index = spr_player_crouch;
}
else
{
//Do nothing.(reverts back to default idle sprite)
}

//Item toggle
scr_item_toggle();

//Magic Capper
if magic < 0
{
magic = 0;
}

if magic > magic_max
{
magic = magic_max;
}

//Item use
if (key_item) && (grounded) && (!crouch)
{
    if ani = true
    {exit};
    
    switch(item)
    {
        case 0: break;
        case 1: {instance_create(x,y-4,obj_hookshot_head);
        ani = true;
        inv = true;
        sprite_index = spr_player_hookshot;
        alarm[2] = 1;} break;
        case 2: if instance_number(obj_bomb) < 3 {instance_create(x,y,obj_bomb);} break;
        case 3: if alarm[3] = -1 && (can_shoot){alarm[3] = 1;} break;
        case 4: if !instance_exists(obj_boomerang){alarm[5] = 1;} break;
        case 5: break;
        case 6: break;
    }
}

