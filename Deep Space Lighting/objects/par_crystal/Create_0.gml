crystal = irandom_range(0,2);

switch(crystal)
{
case 0: instance_change(obj_crystal,true); break;
case 1: instance_change(obj_scrap,true); break;
case 2: instance_change(obj_xp_orb,true); break;
}