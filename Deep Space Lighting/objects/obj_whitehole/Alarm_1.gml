var random_inst = irandom_range(1,10);

switch (random_inst)

{
	case 1: var inst = instance_create(x,y,obj_asteroid_small); break;
	case 2: var inst = instance_create(x,y,obj_enemy_lazer); break;
	case 3: var inst = instance_create(x,y,obj_xp_orb); break;
	case 4: var inst = instance_create(x,y,obj_xp_orb); break;
	case 5: var inst = instance_create(x,y,obj_asteroid_small); break;
	case 6: var inst = instance_create(x,y,obj_asteroid_small); break;
	case 7: var inst = instance_create(x,y,obj_asteroid_small); break;
	case 8: var inst = instance_create(x,y,obj_enemy_lazer); break;
	case 9: var inst = instance_create(x,y,obj_xp_orb); break;
	case 10: var inst = instance_create(x,y,obj_asteroid_small); break;
}

with (inst)
{
	direction = irandom(360);
	motion_add(direction,5);
}