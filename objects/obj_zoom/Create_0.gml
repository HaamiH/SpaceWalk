// Initial zoom scale (1000x smaller)
zoom_scale = 0.001;

// Duration: normally 1.5s, but 1/1000 chance of 20s
if (irandom(999) == 0) {
    zoom_duration = 20;
} else {
    zoom_duration = 1.5;
}

// Timer
zoom_timer = 0;
