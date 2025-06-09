r = 125;
g = 125;
b = 125;
a = .75;

col = make_colour_rgb(r,g,b);

target = obj_player;
base_view_width = 1920;//320
base_view_height = 1080;//180
smoothing = 10;

cam = camera_create_view(0, 0, base_view_width, base_view_height, 0, noone, -1, -1, -1, -1);
view_camera[0] = cam;
view_visible[0] = true;

x = target.x;
y = target.y;

view_zoom = 1.0; // Start at normal zoom
mouse_influence_dist = view_zoom;