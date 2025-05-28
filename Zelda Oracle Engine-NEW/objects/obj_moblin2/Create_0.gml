image_speed = .3;
hp = 2;
hp2 = 5;
inv = false;
sprite_u_normal = spr_moblin2_u;
sprite_l_normal = spr_moblin2_l;
sprite_r_normal = spr_moblin2_r;
sprite_d_normal = spr_moblin2_d;
sprite_u = spr_u_normal;
sprite_l = spr_l_normal;
sprite_r = spr_r_normal;
sprite_d = spr_d_normal;
sprite_hurt_u = spr_moblin_uh;
sprite_hurt_d = spr_moblin_dh;
sprite_hurt_l = spr_moblin_lh;
sprite_hurt_r = spr_moblin_rh;

state = enemy_state.wander;
target = noone;

action_snap(16, 16);
