// Loop across screen width
for (var i = 0; i < room_width; i++) {
    // 1 in 100 chance per pixel every 0.1s
    if (irandom(450) == 0) {
        instance_create_layer(i, 0, "Instances", obj_star);
    }
}
