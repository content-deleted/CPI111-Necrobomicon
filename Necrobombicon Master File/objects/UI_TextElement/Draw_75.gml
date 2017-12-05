/// @description Draw the text
// You can write your code in this editor

draw_set_font(font);
draw_set_color(fontColor);
draw_set_halign(alignH);
draw_set_valign(alignV);
draw_text_ext(ui_controller_obj.currentX + 75, ui_controller_obj.currentY + 58, textContent,40,660);