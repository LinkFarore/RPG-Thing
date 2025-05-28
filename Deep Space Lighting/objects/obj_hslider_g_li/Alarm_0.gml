// Calculate initial position based on global.rgb_value
var percentage = global.temp_g_li / 255;
x = leftLimit + percentage * (rightLimit - leftLimit);