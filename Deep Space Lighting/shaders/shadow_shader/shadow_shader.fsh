varying vec2 v_vTexcoord;
varying vec2 v_vPosition;

uniform vec2 light_pos;   // Position of the light source
uniform vec2 planet_pos;  // Position of the planet
uniform float light_range; // Light range

void main() {
    // Distance from planet to the light
    float dist_to_light = distance(v_vPosition, light_pos);
    
    // Calculate brightness based on distance
    float brightness = clamp(1.0 - (dist_to_light / light_range), 0.0, 1.0);
    
    // Determine the direction of the light
    vec2 light_dir = normalize(light_pos - planet_pos);
    vec2 normal = normalize(v_vPosition - planet_pos);
    float dot_product = dot(light_dir, normal);
    
    // Shadow effect: fade based on angle
    float shadow = clamp(dot_product, 0.0, 1.0);
    brightness *= shadow;

    // Set the final fragment color
    gl_FragColor = vec4(brightness, brightness, brightness, 1.0);
}
