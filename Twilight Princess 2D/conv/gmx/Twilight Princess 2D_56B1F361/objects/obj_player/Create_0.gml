/// @description Initialize Variables
grav = 1.2;
hsp = 0;
hsp_carry = 0;
vsp = 0;
movespeed = 4;
jumps = 0;
hp = 10;
jumpsmax = 1;
jumpspeed_normal = 9;//14
jumpspeed = jumpspeed_normal
key_down = 0;
crouch = false;
attack = false;
can_attack = true;
inv = false;
dir = 1;
ani = false;
hurt = false;
rupee = 0;
grounded = true;
pulled = false;
can_shoot = true;
item = 1;
i_min = 1;
i_max = 4;
carry = false;
magic = 0;
magic_max = 100;

display_set_gui_size(480,272);//320,180

if (global.checkpointR == room)
{
    x = global.checkpointx;
    y = global.checkpointy;
}

hp = global.maxhealth;

