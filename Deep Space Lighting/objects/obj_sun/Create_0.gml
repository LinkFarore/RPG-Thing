image_speed = .25;//.6

traction = sprite_width;
traction_speed = 0;
traction_speed_cap = 5;
star_gravity = 1;

// obj_sun Create Event
planet_slots = irandom_range(13, 18); // Random number of planet slots
dead_zone = 450; // Dead zone radius
min_planet_dist = 256; // Minimum distance between planets
max_planet_dist = 512; // Maximum distance between planets
min_distance_between_planets = 32; // Adjust this value as needed