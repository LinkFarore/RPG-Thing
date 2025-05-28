// If the mouse button is not clicked
if (!mouse_check_button(mb_left)) {
    grab = false; // Slider is not clicked, therefore not grabbed
}

// If the object is not being grabbed, exit
if (!grab) {
    exit;
} else {
    // Update the slider's position within the constraints
    if ((mouse_x + xx) > leftLimit && (mouse_x + xx < rightLimit)) {
        x = mouse_x + xx;
    } else if ((mouse_x + xx) < leftLimit) {
        x = leftLimit;
    } else if ((mouse_x + xx) > rightLimit) {
        x = rightLimit;
    }
}

// Calculate the value out of 255
value = round(((x - leftLimit) / (rightLimit - leftLimit)) * 255);

global.temp_b_sh = value;