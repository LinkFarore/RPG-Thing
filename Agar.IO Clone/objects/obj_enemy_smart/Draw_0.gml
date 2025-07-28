draw_circle_color(x,y,enemy_size+border_size,c_purple,c_purple,false);
draw_circle_color(x,y,enemy_size,c_fuchsia,c_fuchsia,false);

// Enemy visuals
draw_circle_color(x, y, enemy_size + border_size, c_maroon, c_maroon, false);
draw_circle_color(x, y, enemy_size, c_red, c_red, false);

switch(color)
{
	case "cvar_red":
        draw_circle_color(x, y, enemy_size + border_size, c_maroon, c_maroon, false);
		draw_circle_color(x, y, enemy_size, c_red, c_red, false);
    break;

    case "cvar_orange":
        draw_circle_color(x, y, enemy_size + border_size, c_red, c_red, false);
		draw_circle_color(x, y, enemy_size, c_orange, c_orange, false);
    break;
	
	case "cvar_yellow":
        draw_circle_color(x, y, enemy_size + border_size, c_orange, c_orange, false);
		draw_circle_color(x, y, enemy_size, c_yellow, c_yellow, false);
    break;
	
	case "cvar_green":
        draw_circle_color(x, y, enemy_size + border_size, c_green, c_green, false);
		draw_circle_color(x, y, enemy_size, c_lime, c_lime, false);
    break;
	
	case "cvar_blue":
        draw_circle_color(x, y, enemy_size + border_size, c_navy, c_navy, false);
		draw_circle_color(x, y, enemy_size, c_blue, c_blue, false);
    break;
	
	case "cvar_violet":
        draw_circle_color(x, y, enemy_size + border_size, c_purple, c_purple, false);
		draw_circle_color(x, y, enemy_size, c_fuchsia, c_fuchsia, false);
    break;
    
    // more cases (with breaks)

    default:
        break;
}

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