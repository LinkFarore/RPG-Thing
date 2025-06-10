draw_circle_color(x,y,enemy_size+border_size,c_purple,c_purple,false);
draw_circle_color(x,y,enemy_size,c_fuchsia,c_fuchsia,false);

// Enemy visuals
draw_circle_color(x, y, enemy_size + border_size, c_maroon, c_maroon, false);
draw_circle_color(x, y, enemy_size, c_red, c_red, false);

// Debug lines
draw_set_color(c_white);
draw_text(x + 16, y - 32, "Mode: " + string(mode));

if mode == "hunt" && instance_exists(target) {
    draw_set_color(c_yellow);
    draw_line(x, y, target.x, target.y);
}

if mode == "flee" && instance_exists(threat) {
    draw_set_color(c_red);
    draw_line(x, y, threat.x, threat.y);
}

if avoid_virus && instance_exists(virus) {
    draw_set_color(c_lime);
    draw_line(x, y, virus.x, virus.y);
}