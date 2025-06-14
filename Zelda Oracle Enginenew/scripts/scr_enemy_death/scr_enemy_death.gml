function scr_enemy_death() {
	effect_create_above(ef_explosion, x, y, 0, make_colour_rgb(159, 78, 250));

if global.mana <= 50 {
    global.mana += 3;
}

scr_exp_give();
obj_player.killstreak += 1;

var loot = choose(
    obj_health, obj_magic, obj_sp_fragment,
    obj_rupee_g, obj_rupee_b, obj_rupee_r, -1
);

if loot != -1 {
    instance_create_depth(x, y, 0, loot);
}

path_delete(path);
instance_destroy();

}
