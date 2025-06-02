speed = 0;
global.dir = direction;
direction = 270;
using = false;
inv = false;
focus = false;
magicrod = false;
xp = 0;
maxxp = 10;
pohlvl = 5;
killstreak = 0;
attack_power = 0.85;
level = 1;
hurt = false;
image_speed = 0;
ani = false;
sword = 3;
move = 1;
sword_str = 1;
keep = 0;
color = c_red;
keep_collide = false;
text = "NO TEXT";
item = 0;
draw_lvlup = false;
spd_normal = 3;
spd_sprint = 5;
spd = spd_normal;
i_min = 1;
i_max = 4;

sprite_u_normal = spr_link_u;
sprite_d_normal = spr_link_d;
sprite_l_normal = spr_link_l;
sprite_r_normal = spr_link_r;
sprite_sword_l = spr_link_sword_l;
sprite_sword_r = spr_link_sword_r;
sprite_sword_d = spr_link_sword_d;
sprite_sword_u = spr_link_sword_u;

scr_costume();

sprite_u = sprite_u_normal;
sprite_d = sprite_d_normal;
sprite_l = sprite_l_normal;
sprite_r = sprite_r_normal;

sprite_index = sprite_d;

scr_level_load();
health = global.maxhealth;

display_set_gui_size(480,270);