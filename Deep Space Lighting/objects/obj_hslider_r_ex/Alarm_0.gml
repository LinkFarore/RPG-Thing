// Calculate initial position based on global.rgb_value
var percentage = global.temp_r_ex / 255;
x = leftLimit + percentage * (rightLimit - leftLimit);