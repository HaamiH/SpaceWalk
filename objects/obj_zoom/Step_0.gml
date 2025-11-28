// Progress time
zoom_timer += delta_time / 1000; // convert ms → seconds

// Calculate interpolation factor (0 → 1)
var t = zoom_timer / zoom_duration;
if (t > 1) t = 1;

// Smooth zoom scale from 0.001 → 1
zoom_scale = lerp(0.001, 1, t);

// Apply to camera/view
var cam = view_camera[0];
var vw = room_width * zoom_scale;
var vh = room_height * zoom_scale;

// Center camera on room
camera_set_view_size(cam, vw, vh);
camera_set_view_pos(cam, (room_width - vw)/2, (room_height - vh)/2);
