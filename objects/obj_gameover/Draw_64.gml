draw_set_font(Font);
draw_set_color(c_white);

var msg = "GAME OVER";
var w = string_width(msg);
draw_text((display_get_width()-w)/2, display_get_height()/2 - 40, msg);

// Smaller restart message
draw_set_font(Font_small);
var msg2 = "Press any key to restart.";
var w2 = string_width(msg2);
draw_text((display_get_width()-w2)/2, display_get_height()/2 + 20, msg2);
