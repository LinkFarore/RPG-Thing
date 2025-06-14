image_speed = 0.3;
hp = 2;
inv = false;

wander_dir = choose(0, 90, 180, 270);
wander_speed = 1.2;

sprite_u_normal = spr_moblin_u;
sprite_l_normal = spr_moblin_l;
sprite_r_normal = spr_moblin_r;
sprite_d_normal = spr_moblin_d;

sprite_u = sprite_u_normal;
sprite_l = sprite_l_normal;
sprite_r = sprite_r_normal;
sprite_d = sprite_d_normal;

sprite_hurt_u = spr_moblin_uh;
sprite_hurt_d = spr_moblin_dh;
sprite_hurt_l = spr_moblin_lh;
sprite_hurt_r = spr_moblin_rh;

state = enemy_state.wander;
target = obj_player;

knockback_speed = 0;
knockback_dir = 0;

path = path_add();

alarm[0] = 30;
action_snap(16, 16);