// Draw Event of obj_Menu
draw_set_font(fn_Menu);
var optionY = 100; // Starting Y position for menu options

// Set the background color and alpha
draw_set_alpha(0.5); // Adjust alpha to control transparency
draw_set_color(c_black);

// Specify a narrower width for the black box

if (on = true)
{
var boxWidth = 400; // Adjust the width as needed
draw_rectangle(0, optionY - 10, boxWidth, optionY + array_length_1d(menuOptions) * 50 + 10, false);
}
else
{
var boxWidth = 700; // Adjust the width as needed
draw_rectangle(0, optionY - 10, boxWidth, optionY + array_length_1d(menuOptions) * 50 + 10, false);
}

for (var i = 0; i < array_length_1d(menuOptions); i++) {
    var optionText = menuOptions[i];
    var isSelected = (i == selectedOption);
    var isRepairOption = (optionText == "Repair"); // Check if the option is "Repair"

    // Set the text color with full opacity (1.0 alpha)
    if (isSelected) {
        draw_set_color(c_white); // Highlight selected option
    } else {
        draw_set_color(c_black); // Unselected option
    }

    // Draw the option text
    draw_text(100, optionY, optionText);

    optionY += 50; // Adjust Y position for the next option

    // Display repair details if the "Repair" option is selected
    if (isSelected && isRepairOption) {
        var repairCost = 200; // Replace with your repair cost logic
        var playerGold = obj_Boat.playerCurrency;
        var repairText = "Repair Cost: " + string(repairCost) + " | Player Gold: " + string(playerGold);
        draw_text(400, optionY - 50, repairText); // Adjust X position as needed
    }
}

// Reset alpha and color
draw_set_alpha(1.0);
draw_set_color(c_white);
