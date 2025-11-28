// Only allow input if not already moving
if (move_dir == 0) {
    if (keyboard_check_pressed(ord("W")) | gamepad_button_check(0, gp_face1)) {
        move_dir = 1;
        sprite_index = spr_up;
        y -= 8;
        alarm[0] = room_speed * 0.2; // 0.2s wait
    }
    if (keyboard_check_pressed(ord("S"))) {
        move_dir = 2;
        sprite_index = spr_down;
        y += 8;
        alarm[0] = room_speed * 0.2;
    }
    if (keyboard_check_pressed(ord("A"))) {
        move_dir = 3;
        sprite_index = spr_left;
        x -= 8;
        alarm[0] = room_speed * 0.2;
    }
    if (keyboard_check_pressed(ord("D"))) {
        move_dir = 4;
        sprite_index = spr_right;
        x += 8;
        alarm[0] = room_speed * 0.2;
    }
}
