//Exit the event if animated
if sprite_index = spr_player_ani
{exit;}

if ani = true
{exit;}

if level_up = true
{exit;}

if spell_menu = true
{exit;}

if item_menu = true
{exit;}

//Get the player's input
scr_inputs();

if !place_meeting(x,y,obj_swamp)
{
    movespeed = 1.5;
    if audio_is_playing(snd_swamp)
    {
    audio_stop_sound(snd_swamp);
    }
}

//Healing
if (key_potion) && grounded && !healing
{
	if potion >= 1 && player_hp < player_maxhp
	{
		sprite_index = spr_player_heal;
		image_index = 0;
	    image_speed = 0.4;
		exit;
	}
	else
	{
		if !audio_is_playing(snd_error)
		{
		    audio_play_sound(snd_error,1,false);
		}
	}
}

if sprite_index = spr_player_heal
{
	if image_index = 10
	{
		healing = true;
		potion -= 1;
		healing_amount = player_maxhp/3 + player_maxhp/3;
		sprite_index = spr_player_idle;
	}
	else
	{
		exit;
	}
}

if healing
{
	if healing_amount > 0
	{
		if alarm[5] = -1
		{
			alarm[5] = 5;
		}
	}
	else
	{
		healing = false;	
	}
}

//Exit the event if animated
if sprite_index = spr_player_ani
{exit;}

if ani = true
{exit;}

if level_up = true
{exit;}

if spell_menu = true
{exit;}

if item_menu = true
{exit;}

//React to inputs
if key_left
{
	move = -1;	
}

if key_right
{
	move = 1;	
}

if (!key_left && !key_right)
{
	move = 0;
}

if !(crouch) && !(attack) && !(key_potion)
{
hsp = move * movespeed;
}

if (vsp < 10) 
{
	if !spell_menu && !item_menu
	{vsp += grav;}
}

//Jumps
if (place_meeting(x,y+1,obj_wall))
{
    jumps = jumpsmax;
}
else
{
    if (jumps == jumpsmax) jumps -=1;
}

if (key_jump) && (jumps > 0) && (!key_down)
{
    jumps -= 1;
    vsp = -jumpspeed;
}

if (vsp < 0) && (!key_jump_held) 
{
    vsp = max(vsp,-jumpspeed);
}


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

if !spell_menu && !item_menu
{y += vsp;}

//Action Toggle
if (key_action_switch)
{
	switch(action)
	{
		case 0: action = 1; break;
		case 1: action = 0; break;
	}
}

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

if player_hp <= player_maxhp/3
{
    if !audio_is_playing(snd_lowhealth)
    {
        audio_play_sound(snd_lowhealth,1,true);
    }
}

if player_hp > player_maxhp/3
{
    if audio_is_playing(snd_lowhealth)
    {
        audio_stop_sound(snd_lowhealth);
    }
}

if player_hp <= 0
{
scr_player_death();
}

if player_hp > player_maxhp
{
player_hp = player_maxhp;
}

if keyboard_check(ord("R")) 
{
room_restart();
}

//Crouching
if (key_down) && grounded
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
if (key_sword) && instance_number(par_sword) == 0
{
    if (crouch)
    {
        instance_create(x,y,obj_sword_c);
        sprite_index = spr_player_attack_c;
        image_index = 0;
        attack = true;
        can_attack = false;
        image_speed=0.2;
    }
    
    if !crouch //&& grounded
    {
        instance_create(x,y,par_sword);
        sprite_index = spr_player_attack;
        image_index = 0;
        attack = true;
        can_attack = false;
        image_speed=0.2;
    } 
}

//Upward thrust
if !grounded && key_up && !instance_exists(par_sword)
{
    instance_create(x,y,obj_sword_u);
    sprite_index = spr_player_attack_u;
    can_attack = false;
    attack_air = true;
    inv = true;
}

if sprite_index = spr_player_attack_u && grounded
{
    can_attack = true;
    attack_air = false;
    sprite_index = spr_player_fall;
    inv = false;
}

//Downward thrust
if !grounded && key_down
{
    if !instance_exists(obj_sword_d)
    {
        instance_create(x,y,obj_sword_d);
        sprite_index = spr_player_attack_d;
        can_attack = false;
        attack_air = true;
        inv = true;
    }
} 

if sprite_index = spr_player_attack_d && grounded
{
    can_attack = true;
    attack_air = false;
    sprite_index = spr_player_idle;
    inv = false;
}

//Animate
if sprite_index != spr_player_attack && sprite_index != spr_player_attack_c && sprite_index != spr_player_heal && grounded
{
can_attack = true;
}

if(attack) {exit}

if (move!=0) image_xscale = move;

if (place_meeting(x,y+1,obj_wall)) && !instance_exists(par_sword) && sprite_index != spr_player_heal
{
    if (move!=0) 
    {
        sprite_index = spr_player_run; 
        image_speed=0.25;
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

if vsp != 0 && !attack && !instance_exists(par_sword)
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

//Magic Capper
if magic < 0
{
magic = 0;
}

if magic > maxmagic
{
magic = maxmagic;
}

//Level Up
if xp >= maxxp
{
xp -= maxxp;
maxxp += 2;
level_point += 1;
}

if level_point >= 1 && key_select
{
    level_up = true;
    audio_play_sound(snd_menu_close,0,false);
    instance_deactivate_all(true);
    instance_create((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/4)-6,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3-16,obj_levelup_menu);
}

//Spell Menu
if key_start && can_pause
{
	switch (action)
	{
		case 0:	
		spell_menu = true;
		audio_play_sound(snd_menu_close,0,false);
		instance_deactivate_all(true);
		instance_create((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3)-12,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3+32,obj_inventory);
		break;
		
		case 1: 
		spell_menu = true;
		audio_play_sound(snd_menu_close,0,false);
		instance_deactivate_all(true);
		instance_create((__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/3)-12,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/3+32,obj_inventory_item);
		break;
		
		default:
		break;
	}
}


//Actions
switch action
{
	case 0:
	if (key_action_1)
	{scr_magic_1();}

	if (key_action_2)
	{scr_magic_2();}

	if (key_action_3)
	{scr_magic_3();}
	break;
	
	case 1:
	if (key_action_1)
	{scr_item_1();}

	if (key_action_2)
	{scr_item_2();}

	if (key_action_3)
	{scr_item_3();}
	break;
	
	default:
	break;
}


if magic < maxmagic && alarm[4] = -1
{
	alarm[4] = (room_speed*2);	
}