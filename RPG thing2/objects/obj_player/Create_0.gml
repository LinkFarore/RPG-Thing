/// @description Initialize Variables
grav = .5;
hsp = 0;
hsp_carry = 0;
vsp = 0;
move = 0;
movespeed = 1;
jumps = 0;
jumpsmax = 1;
jumpspeed_normal = 8;//14
jumpspeed = jumpspeed_normal
key_down = 0;
crouch = false;
attack = false;
attack_air = false;
can_attack = true;
can_pause = true;
healing = false;
healing_amount = 0;
inv = false;
dir = 1;
ani = false;
hurt = false;
grounded = true;
pulled = false;
action = 0;

bow_shoot = false;

spell_1 = 1;
spell_2 = 1;
spell_3 = 1;
item_1 = 1;
item_2 = 1;
item_3 = 1;

if player_item_1 != -1
{item_1 = player_item_1;}

if player_item_2 != -1
{item_2 = player_item_2;}

if player_item_3 != -1
{item_3 = player_item_3;}

if player_spell_1 != -1
{spell_1 = player_spell_1;}

if player_spell_2 != -1
{spell_2 = player_spell_2;}

if player_spell_3 != -1
{spell_3 = player_spell_3;}


i_min = 1;
i_max = 3;
s_min = 1;
s_max = 10;
carry = false;

if !audio_is_playing(snd_battle_theme)
{
audio_play_sound(snd_battle_theme,0,true);
}

display_set_gui_size(480,270);//320,180

if (global.checkpointR == room)
{
    x = global.checkpointx;
    y = global.checkpointy;
}