// Add elapsed time
stripe_timer += delta_time / 1000; // convert ms → seconds

// Every 0.5s, move stripes by 1px
if (stripe_timer >= 0.5) {
    stripe_offset += 1;
    stripe_timer = 0;

    // Reset when offset reaches stripe spacing (8px here)
    if (stripe_offset >= 8) {
        stripe_offset = 0;
    }
}

// --- Hover detection with sound ---
var was_hover = btn_hover; // remember previous state
btn_hover = point_in_rectangle(mouse_x, mouse_y, x, y, x+btn_width, y+btn_height);

// Smooth scale factor
if (btn_hover) {
    hover_scale = lerp(hover_scale, 1.1, 0.2); // expand to 110%
} else {
    hover_scale = lerp(hover_scale, 1.0, 0.2); // return to normal
}

// Play hover sound only when hover starts
if (btn_hover && !was_hover) {
    audio_play_sound(snd_click, 1, false);
}

// --- Click detection with sound ---
if (btn_hover && mouse_check_button_pressed(mb_left)) {
    audio_play_sound(snd_select, 1, false);
    url_open("https://example.com");
}
