// Calculate scaled dimensions
var w = btn_width * hover_scale;
var h = btn_height * hover_scale;
var x1 = x - (w - btn_width)/2;
var y1 = y - (h - btn_height)/2;

// Shadow
draw_set_alpha(0.4);
draw_set_color(c_black);
draw_roundrect(x1+4, y1+4, x1+w+4, y1+h+4, false);

// Button fill
draw_set_alpha(1);
draw_set_color(btn_color);
draw_roundrect(x1, y1, x1+w, y1+h, false);

// Outline
draw_set_color(c_white);
for (var i = 0; i < 2; i++) {
    draw_roundrect(x1-i, y1-i, x1+w+i, y1+h+i, true);
}

// Stripes (animated, looping)
draw_set_alpha(0.15);
draw_set_color(c_white);
for (var tx = x1 + stripe_offset-1000; tx < x1+w+1000; tx += 8) {
    draw_line(tx, y1, tx-16, y1+h);
}
draw_set_alpha(1);

// Text centered
draw_set_font(btn_font);
draw_set_color(c_white);
var text_w = string_width(btn_text);
var text_h = string_height(btn_text);
draw_text(x1 + (w - text_w)/2, y1 + (h - text_h)/2+5, btn_text);
