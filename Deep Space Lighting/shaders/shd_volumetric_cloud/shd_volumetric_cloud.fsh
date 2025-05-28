// Fragment Shader (shd_volumetric_cloud.fsh)
precision mediump float;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;
uniform vec2 u_view_position;  // View position (e.g., x=1000, y=2000)
uniform vec2 u_view_size;      // View size (e.g., width=1920, height=1080)

// Better noise function
float hash(vec2 p) {
    p = fract(p * vec2(123.45, 456.78));
    p += dot(p, p + 41.27);
    return fract(p.x * p.y);
}

float noise(vec2 p) {
    return hash(floor(p) + fract(p) * fract(p * 3.1415));
}

float fbm(vec2 p) {
    float f = 0.0;
    float w = 0.5;
    for (int i = 0; i < 4; i++) {
        f += w * noise(p);
        p *= 2.0;
        w *= 0.5;
    }
    return f;
}

void main() {
    // Calculate UVs relative to the view (scaled to avoid large values)
    vec2 uv = (u_view_position + v_vTexcoord * u_view_size) * 0.001; 
    uv.x += u_time * 0.1;

    // Generate clouds
    float cloud1 = fbm(uv);
    float cloud2 = fbm(uv + vec2(10.0, 5.0));
    float cloud = smoothstep(0.4, 0.6, (cloud1 + cloud2) * 0.4);

    gl_FragColor = vec4(1.0, 1.0, 1.0, cloud * 0.5);
}