function scr_warrior_death() {
	effect_create_above(ef_explosion, x, y, 0, make_colour_rgb(159,78,250));

	instance_destroy();



}
