// Update time and track camera
time += 0.005; // Reduce time increment for smoother animation
if (instance_exists(obj_player)) {
    var cam = view_camera[0];
    cam_pos[0] = camera_get_view_x(cam) + camera_get_view_width(cam) / 2;
    cam_pos[1] = camera_get_view_y(cam) + camera_get_view_height(cam) / 2;
    cam_angle = -obj_player.dir + 90; // Match your camera rotation
}

x = obj_player.x;
y = obj_player.y;