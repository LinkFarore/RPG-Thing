image_speed = .3;
hp = 15;
inv = false;
alarm[0] = 1;
sprite_u_normal = spr_impa_u;
sprite_l_normal = spr_impa_l;
sprite_r_normal = spr_impa_r;
sprite_d_normal = spr_impa_d;
sprite_u = sprite_u_normal;
sprite_l = sprite_l_normal;
sprite_r = sprite_r_normal;
sprite_d = sprite_d_normal;
sprite_hurt_u = spr_impa_uh;
sprite_hurt_d = spr_impa_dh;
sprite_hurt_l = spr_impa_lh;
sprite_hurt_r = spr_impa_rh;

state = enemy_state.wander;
target = noone;

action_snap(16, 16);
