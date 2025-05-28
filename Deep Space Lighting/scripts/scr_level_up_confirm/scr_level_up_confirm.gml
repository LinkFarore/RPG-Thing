function scr_level_up_confirm() {
	
if weapon_str_point_temp >= 1
{
	weapon_str_point += weapon_str_point_temp;
	player_attack += weapon_str_point_temp*1.25;
}
	   
if weapon_spd_point_temp >= 1
{
	weapon_spd_point += weapon_spd_point_temp;
	rate_of_fire -= weapon_spd_point_temp*.5;
}

if hull_point_temp >= 1
{
	hull_point += hull_point_temp;
	player_maxhp += round(hull_point_temp*1.25);
}

if def_point_temp >= 1
{
	def_point += def_point_temp;
	player_defense += def_point_temp*1.25;
}

if engine_point_temp >= 1
{
	engine_point += engine_point_temp;
	player_spd += energy_point_temp*.15;
}

if energy_point_temp >= 1
{
	energy_point += energy_point_temp;
	maxenergy += energy_point_temp*2.5;
	instance_activate_object(obj_player);
	obj_player.recharge -= 3;
	instance_deactivate_object(obj_player);
}

weapon_str_point_temp = 0;
weapon_spd_point_temp = 0;
hull_point_temp = 0;
def_point_temp = 0;
engine_point_temp = 0;
energy_point_temp = 0;
assigned_point = 0;

}