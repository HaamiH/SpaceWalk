if (room_started) {
    spawn_timer += delta_time / 1000; // convert ms → seconds

    if (spawn_timer >= 2) {
        // Spawn another object at same position, in another layer
        instance_create_layer(x, y, "Player", obj_player);

        // Prevent multiple spawns
        room_started = false;
    }
}
