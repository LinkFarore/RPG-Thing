// === THREAT ASSESSMENT ===
var flee = false;
var threat = noone;
var min_threat_dist = 300;

// Scan for threatening enemies
with (par_enemy) {
    if id != other.id && enemy_size > other.enemy_size + other.enemy_size / 4 {
        var dist = point_distance(other.x, other.y, x, y);
        if dist < 300 && dist < min_threat_dist {
            threat = id;
            min_threat_dist = dist;
        }
    }
}

if threat != noone {
    flee = true;
}

// === FLEE MODE ===
if flee {
    mode = "flee";
    
    var flee_dir = point_direction(threat.x, threat.y, x, y);

    // Check for another large enemy in flee direction
    var ahead_x = x + lengthdir_x(100, flee_dir);
    var ahead_y = y + lengthdir_y(100, flee_dir);

    var collision_threat = collision_circle(ahead_x, ahead_y, enemy_size + 5, par_enemy, false, false);

    if collision_threat != noone && collision_threat.enemy_size > enemy_size + enemy_size / 4 {
        flee_dir += irandom_range(-60, 60); // steer slightly away
    }

    // Turn and move
    var dd = angle_difference(image_angle, flee_dir);
    image_angle -= min(abs(dd), turn_speed) * sign(dd);
    dir = image_angle;
    motion_add(dir, 0.3);
}

// === HUNT MODE ===
else {
    mode = "hunt";

    var food = instance_nearest(x, y, obj_food);
    var prey = noone;
    var best_prey = noone;
    var best_dist = 300;

    // Find a prey target
    with (par_enemy) {
        if id != other.id && enemy_size < other.enemy_size - other.enemy_size / 4 {
            var d = point_distance(x, y, other.x, other.y);
            if d < best_dist {
                best_prey = id;
                best_dist = d;
            }
        }
    }

    if best_prey != noone {
        target = best_prey;
    } else {
        target = food;
    }

    if instance_exists(target) {
        var pd = point_direction(x, y, target.x, target.y);
        var dd = angle_difference(image_angle, pd);
        image_angle -= min(abs(dd), turn_speed) * sign(dd);
        dir = image_angle;
        motion_add(dir, 0.25);
    }
}

// === SPEED CAP ===
if speed > enemy_spd {
    speed = enemy_spd;
}

// === FOOD ===
var food_eat = collision_circle(x, y, enemy_size + border_size, obj_food, true, true);
if food_eat != noone {
    with food_eat instance_destroy();
    enemy_size += 0.3;
    border_size = enemy_size / 12;
}

// === EAT SMALL ENEMIES ===
var enemy_eat = collision_circle(x, y, enemy_size + border_size, par_enemy, true, true);
if enemy_eat != noone && enemy_eat != id {
    if enemy_eat.enemy_size < enemy_size - enemy_size / 4 {
        enemy_size += enemy_eat.enemy_size;
        border_size = enemy_size / 12;
        with enemy_eat instance_destroy();
    }
}

var virus_eat = collision_circle(x,y,enemy_size+border_size,obj_virus,true,true);
if virus_eat != noone
{
	
	if enemy_size > virus_eat.virus_trigger_size * 1.3

	{
	    with (virus_eat) 
		{
			instance_destroy();
	    }
		split_into_cells(8);
	}
}