with (obj_darknut) {
image_speed = .3;
hp = 2;
hp2 = 5;
inv = false;
sprite_u_normal = spr_darknut_u;
sprite_l_normal = spr_darknut_l;
sprite_r_normal = spr_darknut_r;
sprite_d_normal = spr_darknut_d;
sprite_u = spr_u_normal;
sprite_l = spr_l_normal;
sprite_r = spr_r_normal;
sprite_d = spr_d_normal;
sprite_hurt_u = spr_darknut_uh;
sprite_hurt_d = spr_darknut_dh;
sprite_hurt_l = spr_darknut_lh;
sprite_hurt_r = spr_darknut_rh;

state = enemy_state.wander;
target = noone;

}
action_snap(16, 16);
