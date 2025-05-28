tethered = false;
parent_tethered = noone;
revolve_speed = 1;
revolve_direction = 90;
tether_distance = 0;

amount = irandom_range(2,5);

if (amount > 0)
{
	var division = 360 / amount;
	var rand = random(360);
	for (i = 0; i < amount; i++)
	{
	    var coin = instance_create(x,y,obj_asteroid_small);
	       
		coin.direction = rand + division*i
        coin.speed = random_range(1.7,2.4);
        coin.spawn = true;
        //coin.alarm[1] = 100;
		coin.tethered = true;
		coin.parent_tethered = parent_tethered;
	}
}