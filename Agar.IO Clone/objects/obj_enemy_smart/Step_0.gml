// === Virus Avoidance ===
virus = instance_nearest(x, y, obj_virus);
if instance_exists(virus) {
    var dist_to_virus = point_distance(x, y, virus.x, virus.y);
    if dist_to_virus < 120 {
        avoid_virus = true;
    }
}

// === Threat Detection ===
var nearby_enemies = instance_place_list(x, y, flee_range, par_enemy, true);
for (var i = 0; i < array_length(nearby_enemies); i++) {
    var e = nearby_enemies[i];
    if e.id != id && e.enemy_size > enemy_size * 1.2 {
        threat = e;
        mode = "flee";
        break;
    }
}

// === Flee Mode ===
if mode == "flee" && instance_exists(threat) {
    var flee_dir = point_direction(threat.x, threat.y, x, y);

    // Avoid virus while fleeing
    if avoid_virus && instance_exists(virus) {
        var virus_dir = point_direction(x, y, virus.x, virus.y);
        var virus_angle_diff = angle_difference(flee_dir, virus_dir);
        if abs(virus_angle_diff) < 60 {
            flee_dir += sign(virus_angle_diff) * 90;
        }
    }

    // Turn & move
    var dd = angle_difference(image_angle, flee_dir);
    image_angle -= min(abs(dd), turn_speed) * sign(dd);
    dir = image_angle;
    motion_add(dir, 0.4);

    // Grab food while fleeing
    var food_flee = collision_circle(x, y, enemy_size + border_size, obj_food, false, false);
    if food_flee != noone {
        var food_dir = point_direction(x, y, food_flee.x, food_flee.y);
        if abs(angle_difference(image_angle, food_dir)) < 45 {
            motion_add(image_angle, 0.2);
        }
    }
}
else {
    // === Hunt Mode ===
    nearby_enemies = instance_place_list(x, y, sight_range, par_enemy, true);
    food = instance_nearest(x, y, obj_food);

    for (var i = 0; i < array_length(nearby_enemies); i++) {
        var e = nearby_enemies[i];
        if e.id != id && e.enemy_size < enemy_size * 0.8 {
            prey = e;
            break;
        }
    }

    if instance_exists(prey) {
        target = prey;

        if previous_target != target {
            chase_timer = 0;
        } else {
            chase_timer++;
        }

        if chase_timer > chase_timeout {
            target = food;
            chase_timer = 0;
        }
    } else {
        target = food;
        chase_timer = 0;
    }

    // Chase food or prey
    if instance_exists(target) {
        var pd = point_direction(x, y, target.x, target.y);
        var dd = angle_difference(image_angle, pd);
        image_angle -= min(abs(dd), turn_speed) * sign(dd);

        dir = image_angle;
        motion_add(dir, 0.25);
    }

    previous_target = target;
}

// === Speed Cap ===
if speed > enemy_spd {
    speed = enemy_spd;
}

// === Eat Food ===
var food_eat = collision_circle(x, y, enemy_size + border_size, obj_food, true, true);
if food_eat != noone {
    with food_eat instance_destroy();
    enemy_size += 0.3;
    border_size = enemy_size / 12;
}

// === Eat Smaller Enemies ===
var enemy_eat = collision_circle(x, y, enemy_size + border_size, par_enemy, true, true);
if enemy_eat != noone && enemy_eat != id {
    if enemy_eat.enemy_size < enemy_size - enemy_size / 4 {
        enemy_size += enemy_eat.enemy_size;
        border_size = enemy_size / 12;
        with enemy_eat instance_destroy();
    }
}

// === Virus Splitting ===
var virus_eat = collision_circle(x, y, enemy_size + border_size, obj_virus, true, true);
if virus_eat != noone {
    if enemy_size > virus_eat.virus_trigger_size * 1.25 {
        with virus_eat instance_destroy();
        split_into_cells(8); // You must define this
    }
}

// === Food Respawn ===
if instance_number(obj_food) < 800 {
    var x_spawn = x + irandom_range(choose(-1, 1) * 500, choose(-1, 1) * 1000);
    var y_spawn = y + irandom_range(choose(-1, 1) * 500, choose(-1, 1) * 1000);
    if place_empty(x_spawn, y_spawn) {
        instance_create_layer(x_spawn, y_spawn, 0, obj_food);
    }
}