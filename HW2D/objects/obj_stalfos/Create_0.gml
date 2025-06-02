image_speed = .3;
hp = 2;
hp2 = 5;
inv = false;
sprite_u_normal = spr_stalfos_u;
sprite_l_normal = spr_stalfos_l;
sprite_r_normal = spr_stalfos_r;
sprite_d_normal = spr_stalfos_d;
sprite_u = sprite_u_normal;
sprite_l = sprite_l_normal;
sprite_r = sprite_r_normal;
sprite_d = sprite_d_normal;
sprite_hurt_u = spr_stalfos_uh;
sprite_hurt_d = spr_stalfos_dh;
sprite_hurt_l = spr_stalfos_lh;
sprite_hurt_r = spr_stalfos_rh;

state = enemy_state.wander;
target = noone;

action_snap(16, 16);
