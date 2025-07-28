/// Draw Event of obj_virus

// --- Parameters ---
var center_x = x;
var center_y = y;

var spikes = 40;
var radius_outer = 30;
var radius_inner = 25;
var angle_step = 360 / (spikes * 2);

// === 1. Draw filled spikey virus ===
draw_set_color(c_lime);
draw_primitive_begin(6); // pr_trianglefan

draw_vertex(center_x, center_y);

for (var i = 0; i <= spikes * 2; i++) {
    var angle_deg = i * angle_step;
    var r = (i mod 2 == 0) ? radius_outer : radius_inner;
    var vx = center_x + lengthdir_x(r, angle_deg);
    var vy = center_y + lengthdir_y(r, angle_deg);
    draw_vertex(vx, vy);
}

draw_primitive_end();


// === 2. Draw outline multiple times for thickness ===
draw_set_color(make_color_rgb(0, 100, 0)); // Dark green

// Outline layers with slight offset
var offsets = [0.5, 0, -0.5];

for (var j = 0; j < array_length(offsets); j++) {
    var offset = offsets[j];

    draw_primitive_begin(3); // pr_linestrip

    for (var i = 0; i <= spikes * 2; i++) {
        var angle_deg = i * angle_step;
        var r = (i mod 2 == 0) ? (radius_outer + offset) : (radius_inner + offset);
        var vx = center_x + lengthdir_x(r, angle_deg);
        var vy = center_y + lengthdir_y(r, angle_deg);
        draw_vertex(vx, vy);
    }

    // Close loop by repeating the first vertex
    var vx = center_x + lengthdir_x(radius_outer + offset, 0);
    var vy = center_y + lengthdir_y(radius_outer + offset, 0);
    draw_vertex(vx, vy);

    draw_primitive_end();
}


/*draw_circle_color(x,y,virus_trigger_size+10,c_green,c_green,false);
draw_circle_color(x,y,virus_trigger_size,c_lime,c_lime,false);