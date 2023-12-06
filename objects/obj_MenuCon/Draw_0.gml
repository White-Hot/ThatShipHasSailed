if (room != Map)
{

// Draw Event of obj_MenuCon
draw_set_font(fn_Menu);
var margin = 30; // Adjust the margin value as needed
var boxWidth = string_width(room_get_name(Location)) + margin;
var boxHeight = 80; // Adjust the height as needed

// Set the background color and alpha
draw_set_alpha(0.5);
draw_set_color(c_black);

// Calculate the new positions for the box
var leftX = margin; // Move to the left side
var topY = margin - 25; // Move 10 pixels higher
var rightX = leftX + boxWidth;
var bottomY = topY + boxHeight;

// Draw the black background box on the left side
draw_rectangle(leftX, topY, rightX, bottomY, false);

// Set text color to white
draw_set_color(c_white);

// Get the room name as a string
var roomName = room_get_name(Location);

// Draw the room name in the black box
draw_text(leftX -30 + margin, topY + margin -25, roomName);

// Reset alpha and color
draw_set_alpha(1.0);
draw_set_color(c_white);
}