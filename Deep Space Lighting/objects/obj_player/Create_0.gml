globalvar playerChunk, chunkVars, playerX, playerY;
preChunk[0] = 0;
preChunk[1] = 0;
friction = 0.03;
alarm[0] = -1;
alarm[1] = -1;
hp = player_maxhp;
energy = maxenergy;
weapon = 0;
defense = 0;
weapon_max = 13; 
weapon_min = 0;
defense_max = 3;
defense_min = 0;
turn_speed = 5;
dir = image_angle;
player_spd = 3;
maxenergy = 3500;
display_set_gui_size(1280,720);//480,270
target = noone;
recharge = 200;
current_state = "combat";
canshoot = true;
canbuild = false;
canmine = false;
shield = false;
shield_frame = 0;
shield_col = make_color_rgb(120,120,255);
warp = false;
can_shield = true;
debug = false;
death = false;
ricochet = false;
flash = 0; //toggles flashing.
charge = 0;
charging = false;
cloak = false;
speed_boost = false;
stun_radius_min = 60;
stun_radius_max = 240;
stun_radius = stun_radius_min;
message_powerup = false;
message2 = false;
message_energy = false;
message_life = false;
message_attack = false;
message_shield = false;
heal_message = false;
heal_message2 = false;
message_star = false;
message_build_mode = false;
message_combat_mode = false;
message_mining_mode = false;
power_take = false;
defense_take = false;
repair = 3;
a = 1;
t = 0;
large_map = false;
weapon_sprite = spr_weapon_bound;

//Create the camera and mouse
instance_create(x,y,obj_camera);
instance_create(x,y,obj_mouse);

current_chunk_x = floor(x / chunk_size);
current_chunk_y = floor(y / chunk_size);

if (load)
{load = false;}

if (global.custom_exhaust)
{scr_part_custom_exhaust_init();}