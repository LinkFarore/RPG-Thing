button_distance = 128;
button_object[0] = obj_wall_button;
button_object[1] = obj_lazer_wall_button;
button_object[2] = obj_wall_button;
button_object[3] = obj_wall_button;
button_object[4] = obj_wall_button;
button_object[5] = obj_wall_button;
button_object[6] = obj_wall_button;
button_object[7] = obj_wall_button;
button_count = array_length_1d(button_object);
button_section_size = 360/button_count;
button_xpos[0] = 0;
button_ypos[0] = 0;

for (var i=0; i<button_count; i++) {
    button_xpos[i] = x+lengthdir_x(button_distance, button_section_size * i);
    button_ypos[i] = y+lengthdir_y(button_distance, button_section_size * i);
    button[i] = instance_create(button_xpos[i], button_ypos[i], button_object[i]);
    instance_deactivate_object(button[i]);
}

alarm[0] = 1;