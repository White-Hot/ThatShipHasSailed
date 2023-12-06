if (on = true)
{// Draw Event for obj_Carpenter
 // Draw the s_Eyes sprite
  draw_sprite(s_Body, SurgBody, x, y);
    draw_sprite(s_Eyes, SurgEyes, x, y);
    // Set the image_index for s_Eyes
 
    // Draw the s_Hair sprite
    draw_sprite(s_Hair, SurgHair, x, y);
// Set the image_index for s_Hair

 // Draw the object's sprite (if needed)

var sprite_x1 = x - sprite_width / 2;
var sprite_y1 = y - sprite_height / 2;
var sprite_x2 = x + sprite_width / 2;
var sprite_y2 = y + sprite_height / 2;

if (point_in_rectangle(mouse_x, mouse_y, sprite_x1, sprite_y1, sprite_x2, sprite_y2) && (Yes == true))
{
    // Set text color and font
    draw_set_color(c_white); // You can choose a different color
    draw_set_font(fn_Menu); // Replace 'fn_Menu' with the font you want to use

    // Calculate screen coordinates for top left corner
    var text_x = 10; // Adjust as needed
    var text_y = 100; // Adjust as needed
    
    draw_text(text_x, text_y, firstName);
    draw_text(text_x, text_y + 50, FamilyName);
    draw_text(text_x, text_y + 100, "Hire: " + string(HireCost));
    
    // Reset text color and font to defaults
    draw_set_color(c_white);
    draw_set_font(fn_Menu);
}
}