// Calculate initial position based on global.rgb_value
var percentage = global.temp_r_sh / 255;
x = leftLimit + percentage * (rightLimit - leftLimit);