// Move down 1 pixel every 0.1s
if (!variable_global_exists("star_timer")) global.star_timer = 0;
global.star_timer += delta_time / 1000;

if (global.star_timer >= 0.1) {
    y += 2;
    global.star_timer = 0;
}

// Destroy if off screen
if (y > room_height) {
    instance_destroy();
}
