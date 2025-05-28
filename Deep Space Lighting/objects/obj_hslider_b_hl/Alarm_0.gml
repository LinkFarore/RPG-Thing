// Calculate initial position based on global.rgb_value
var percentage = global.temp_b_hl / 255;
x = leftLimit + percentage * (rightLimit - leftLimit);