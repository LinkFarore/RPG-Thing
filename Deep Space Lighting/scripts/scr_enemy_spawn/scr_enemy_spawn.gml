function scr_enemy_spawn(cx, cy){
	
	var chunk_x = cx * chunk_size;
    var chunk_y = cy * chunk_size;
    var chunk_center_x = chunk_x + chunk_size / 2;
    var chunk_center_y = chunk_y + chunk_size / 2;
	
	var enemy = 5;

	var spawnDistance = floor((abs(argument0)+abs(argument1))/2);
	repeat(enemy)
	{
	    var randomEnemyObject = obj_enemy_scout;
	    var i = 0;
	    var ii = 0;
	    if(spawnDistance <= 1){i = 1; ii = 1;}
	    if(spawnDistance >= 2 && spawnDistance <= 12){i = 1; ii = 4;}
	    if(spawnDistance >=13 && spawnDistance <= 23){i = 5 ii = 8;}
	    if(spawnDistance >=24 && spawnDistance <= 35){i = 9 ii = 12;}
	    if(spawnDistance >= 36){i = 9 ii = 14;}
	    var randomEnemy = (irandom_range(i,ii));
	    switch(randomEnemy){
	        case 0: randomEnemyObject = noone;break;
	        case 1: randomEnemyObject = obj_enemy_drone; break;
	        case 2: randomEnemyObject = obj_enemy_fighter; break;
	        case 3: randomEnemyObject = obj_enemy_bomber; break;
			case 4: randomEnemyObject = obj_enemy_scout; break;
	        case 5: randomEnemyObject = obj_enemy_drone; break;
	        case 6: randomEnemyObject = obj_enemy_fighter2; break;
	        case 7: randomEnemyObject = obj_enemy_bomber2; break;
			case 8: randomEnemyObject = obj_enemy_scout2; break;
	        case 9: randomEnemyObject = obj_enemy_drone; break;
	        case 10: randomEnemyObject = obj_enemy_fighter3; break;
	        case 11: randomEnemyObject = obj_enemy_bomber3; break;
			case 12: randomEnemyObject = obj_enemy_scout3; break;
	        case 13: randomEnemyObject = obj_enemy_frigate; break;
			case 14: randomEnemyObject = obj_enemy_cargo; break;
	    }
	    if(randomEnemyObject != noone)
		{
	        with (instance_create(chunk_x + irandom(chunk_size), chunk_y + irandom(chunk_size),randomEnemyObject))
	        {
	            whileTick = 0;
	            while(!place_empty(x,y))
	            {
	                x=chunk_x + irandom(chunk_size);
	                y=chunk_y + irandom(chunk_size);
	                whileTick += 1;
	                if(whileTick > 20){break;}
	            }
	        }
	    }
	}
}