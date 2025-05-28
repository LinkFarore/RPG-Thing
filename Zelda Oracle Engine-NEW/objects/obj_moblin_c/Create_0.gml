image_speed = .3;
hp = 2;
hp2 = 5;
inv = false;
sprite_u = spr_moblin2_u;
sprite_l = spr_moblin2_l;
sprite_r = spr_moblin2_r;
sprite_d = spr_moblin2_d;
sprite_hurt_u = spr_moblin_uh;
sprite_hurt_d = spr_moblin_dh;
sprite_hurt_l = spr_moblin_lh;
sprite_hurt_r = spr_moblin_rh;

state = enemy_state.wander;
target = noone;

action_snap(16, 16);
