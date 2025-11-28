// After 0.2s, move another 8 pixels and reset sprite
	    audio_play_sound(snd_walk, 1, false);

switch (move_dir) {
    case 1: y -= 8; break;
    case 2: y += 8; break;
    case 3: x -= 8; break;
    case 4: x += 8; break;
}

sprite_index = orig_sprite;

// Check if there is an object one layer down
var layer_id = layer_get_id("Kill"); // replace with your layer name
var below_layer = layer_get_id("Kill");  // replace with the layer below

// After moving, check if player is on a bad block
var gameOver = false;

for (var i = 0; i < array_length(bad_blocks); i++) {
    if (place_meeting(x, y, bad_blocks[i])) {
        gameOver = true;
        break;
    }
}
var cx = x + 8;
var cy = y + 8;


if (gameOver) {
    // Trigger Game Over screen
    instance_create_layer(0, 0, "UI", obj_gameover);
}
// Check if player is overlapping obj_goal
if (place_meeting(x, y, obj_goal)) {
    room_goto_next();
}

// Reset move_dir
move_dir = 0;
sprite_index = orig_sprite;
