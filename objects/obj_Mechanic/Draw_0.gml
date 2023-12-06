// Inside the Draw Event of your object (e.g., obj_QuaterMaster)
if (spawn == true) {
    // Draw the s_Body sprite
    draw_sprite(s_Body, body, x, y);

    // Draw the s_Eyes sprite
    draw_sprite(s_Eyes, eyes, x, y);

    // Draw the s_Hair sprite
    draw_sprite(s_Hair, hair, x, y);

    // You can add additional drawing code here, such as text or other information.
    // For example, to draw text:
    draw_set_color(c_white);
    draw_set_font(fn_Menu);
 
 var sprite_x1 = x - sprite_width / 2;
var sprite_y1 = y - sprite_height / 2;
var sprite_x2 = x + sprite_width / 2;
var sprite_y2 = y + sprite_height / 2;

  if (point_in_rectangle(mouse_x, mouse_y, sprite_x1, sprite_y1, sprite_x2, sprite_y2) )
{
    // Set text color and font
    draw_set_color(c_white); // You can choose a different color
    draw_set_font(fn_Menu); // Replace 'fn_Menu' with the font you want to use

    // Calculate screen coordinates for top left corner
    var text_x = 1400; // Adjust as needed
    var text_y = 775; // Adjust as needed
    
    draw_text(text_x, text_y, obj_CrewCon.CarpenterFirstName );
    draw_text(text_x, text_y + 50, obj_CrewCon.CarpenterFamilyName);
    draw_text(text_x, text_y + 100, "Health: " + string(obj_CrewCon.CarpenterHealth));
	 draw_text(text_x, text_y + 150, "Job: Carpenter");
    
    // Reset text color and font to defaults
    draw_set_color(c_white);
    draw_set_font(fn_Menu);
}
 //  draw_text(x, y - 20, "Some Text"); // Adjust position and text as needed
}

