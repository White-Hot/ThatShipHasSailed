if (room != Map)
{

// Define colors
var textColor = c_black;
var boxOutlineColor = c_white;
var boxBackgroundColor = make_color_rgb(0, 0, 0); // 0.75 alpha (0-255)

// Get the text to display
var displayText = "Years: " + string(years) + ", Months: " + string(months) + ", Weeks: " + string(weeks) + ", Days: " + string(days) + ", Hours: " + string(hours);

// Get the size of the text
var textWidth = string_width(displayText);
var textHeight = string_height(displayText);

// Set the size of the box with some padding
var boxWidth = textWidth + 20; // Adjust the padding as needed
var boxHeight = textHeight + 10; // Adjust the padding as needed

// Calculate the position for the box
var boxX = 10; // Adjust the X position as needed
var boxY = display_get_height() - 30; // Adjust the Y position as needed

// Draw the black background of the box with 0.75 alpha
draw_set_color(boxBackgroundColor);
draw_set_alpha(1); // Reset alpha to full
draw_rectangle(boxX, boxY, boxX + boxWidth, boxY + boxHeight, true);

// Draw the white outline of the box
draw_set_color(boxOutlineColor);
draw_rectangle(boxX, boxY, boxX + boxWidth, boxY + boxHeight, false);

// Draw the text on top of the box
draw_set_color(textColor);
draw_text(boxX + 10, boxY + 5, displayText); // Adjust padding as needed

// Reset alpha to full
draw_set_alpha(1);
}

