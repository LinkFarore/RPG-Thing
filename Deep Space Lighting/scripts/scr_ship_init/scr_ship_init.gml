/// @description scr_ship_init(hp,weapon,speed,rate_of_fire,attack,defense,chase_distance,attack_distance)
/// @function scr_ship_init
/// @param hp
/// @param weapon
/// @param speed
/// @param rate_of_fire
/// @param attack
/// @param defense
/// @param chase_distance
/// @param attack_distance
function scr_ship_init(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	target = -1;
	foe = -1;
	state = "idle";
	acc = .4;
	maxhp = argument0;
	hp = maxhp;
	weapon = argument1;
	can_shield = true;
	spd = argument2;
	rof = argument3;
	attack = argument4;
	defense = argument5;
	chase_distance = argument6;
	attack_distance = argument7;



}
