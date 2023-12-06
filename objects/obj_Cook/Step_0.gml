// Step Event
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height) && (Yes == true))
{
	
    // Set text color and font
    draw_set_color(c_white);
    draw_set_font(fn_Menu);

    // Draw object information
    var text_x = x + 10;
    var text_y = y + 10;
    
    draw_text(text_x, text_y, firstName);
    draw_text(text_x, text_y + 20, FamilyName);
    draw_text(text_x, text_y + 40, "Hire: " + string(HireCost));
    
    // Reset text color and font to defaults
    draw_set_color(c_white);
    draw_set_font(fn_Menu);
}
