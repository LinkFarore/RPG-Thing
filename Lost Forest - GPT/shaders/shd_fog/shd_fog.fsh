varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float fog_density;
uniform vec3 fog_color;
uniform vec2 cam_pos;
uniform float time;
uniform float cam_angle;
uniform vec2 view_size;

// Define the hash function for noise
float hash(vec2 p) {
    return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453);
}

// Improved smooth noise function
float smoothNoise(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    f = f * f * (3.0 - 2.0 * f); // Smoothstep interpolation

    float a = hash(i);
    float b = hash(i + vec2(1.0, 0.0));
    float c = hash(i + vec2(0.0, 1.0));
    float d = hash(i + vec2(1.0, 1.0));

    return mix(mix(a, b, f.x), mix(c, d, f.x), f.y);
}

// Multi-octave noise for smoother results
float fractalNoise(vec2 p) {
    float total = 0.0;
    float frequency = 1.0;
    float amplitude = 1.0;
    float maxAmplitude = 0.0;

    for (int i = 0; i < 4; i++) {
        total += smoothNoise(p * frequency) * amplitude;
        maxAmplitude += amplitude;
        amplitude *= 0.5;
        frequency *= 2.0;
    }

    return total / maxAmplitude;
}

// Simulate wispy smoke with additional noise layers
float smokeEffect(vec2 uv) {
    // Base noise for general shape
    float n1 = fractalNoise(uv * 0.02 + vec2(time * 0.1, time * 0.08));
    
    // Fine details for wispy effect
    float n2 = fractalNoise(uv * 0.1 + vec2(time * 0.05, -time * 0.06));
    
    // Large-scale variation for density
    float n3 = fractalNoise(uv * 0.00005 - vec2(time * 0.03, time * 0.04));
    
    // Combine noise layers
    return (n1 * 0.5 + n2 * 0.3 + n3 * 0.2);
}

void main() {
    // Convert to world-space coordinates
    vec2 uv = (v_vTexcoord - 0.5) * view_size + cam_pos;

    // Rotate coordinates with camera
    float rot_rad = radians(cam_angle);
    uv = vec2(
        (uv.x - cam_pos.x) * cos(rot_rad) - (uv.y - cam_pos.y) * sin(rot_rad) + cam_pos.x,
        (uv.x - cam_pos.x) * sin(rot_rad) + (uv.y - cam_pos.y) * cos(rot_rad) + cam_pos.y
    );

    // Generate smoke effect
    float smoke = smokeEffect(uv);
    
    // Add subtle vertical drift for smokiness
    smoke += fractalNoise(uv * 0.01 + vec2(0.0, time * 0.05)) * 0.2;

    // Calculate fog density
    float fog_factor = clamp(exp(-fog_density * smoke * 2.0), 0.0, 1.0);

    // Final color with depth-based alpha
    vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
    vec3 final_color = mix(fog_color, color.rgb, fog_factor);
    float alpha = (1.0 - fog_factor) * 0.8; // Overall transparency

    gl_FragColor = vec4(final_color, alpha);
}