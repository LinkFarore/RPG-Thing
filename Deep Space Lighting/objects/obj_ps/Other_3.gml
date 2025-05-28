//Destroy the particle types and system at end of game
part_type_destroy(global.pt_blue_lazer);
part_type_destroy(global.pt_charge_lazer);
part_type_destroy(global.pt_red_lazer);
part_type_destroy(global.pt_green_lazer);
part_type_destroy(global.pt_yellow_lazer);
part_type_destroy(global.pt_star);
part_type_destroy(global.pt_explosion);
part_type_destroy(global.pt_explosion_asteroid);
part_type_destroy(global.pt_spark);
part_type_destroy(global.pt_player_exhaust);
part_type_destroy(global.pt_enemy_exhaust);
part_type_destroy(global.pt_ally_exhaust);
part_type_destroy(global.pt_plasma);
part_type_destroy(global.pt_missile);
part_type_destroy(global.pt_yellow_exhaust);
part_system_destroy(global.ps);
part_system_destroy(global.plasma_ps);