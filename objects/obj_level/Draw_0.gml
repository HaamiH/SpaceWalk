// Set font and color
draw_set_font(room_font);
draw_set_color(c_white);

// Get current room name
var roomName = room_get_name(room);

// Draw centered at top of screen
var text_w = string_width(roomName);
draw_text((room_width - text_w)/2, 16, roomName);
