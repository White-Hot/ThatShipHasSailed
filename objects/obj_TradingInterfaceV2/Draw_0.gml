// Draw event of obj_TradingInterface
draw_set_font(fn_Menu);
var optionY = 100; // Starting Y position for menu options
var menuX = 100; // X position for menu options
var infoX = 10; // X position for item info (centered)
var lineHeight = 50; // Height of each line
var boxWidth = 500; // Width of the options box
var margin = 20; // Margin for text

// Set the background color and alpha
draw_set_alpha(0.5);
draw_set_color(c_black);

// Calculate the total height of the menu
var totalHeight = array_length_1d(menuOptions) * lineHeight;

// Specify a narrower width for the black box, adjusted for text and margin
draw_rectangle(0, optionY - 10, boxWidth, optionY + totalHeight + 10, false);

menuOptions = ["Buy Tin", "Buy Copper", "Buy Wheat", "Buy Provisions", "Sell Tin", "Sell Copper", "Sell Wheat"];
for (var i = 0; i < array_length_1d(menuOptions); i++) {
    var optionText = menuOptions[i];
    var isSelected = (i == selectedOption);

    if (isSelected) {
        draw_set_color(c_white);
    } else {
        draw_set_color(c_black);
    }

    draw_text(menuX, optionY, optionText);

    optionY += lineHeight;
}

// Display vendor gold at the top right
draw_set_color(c_white);
var vendorGoldText = "Vendor Gold: " + string(vendorCurrency);
draw_text(display_get_width() - margin, 10, vendorGoldText);

// Display player gold underneath
var playerGoldText = "Player Gold: " + string(obj_Boat.playerCurrency);
draw_text(display_get_width() - (margin), 60, playerGoldText);

// Display player gold underneath
var playerCurCarText = "Current Cargo: " + string(obj_Boat.cargo);
draw_text(display_get_width() - (margin), 110, playerCurCarText);

// Display player gold underneath
var playerCapCarText = "Cargo Capacity: " + string(obj_Boat.cargoCapacity);
draw_text(display_get_width() - (margin), 160, playerCapCarText);

var playerTaxText = "Tax: " + string(Tax);
draw_text(display_get_width() - (margin), 210, playerTaxText);

// Display the selected item info at the center of the screen
draw_set_color(c_white);

var selectedItemInfo = "";

switch (selectedOption) {
    case 0: // Buy Tin
        selectedItemInfo = "Tin Price: " + string(vil2_tinPrice * Tax) + " | Weight: " + string(tinWeight) + " | Trader Qty: " + string(tinQuantity) + " | Player Qty: " + string(obj_Boat.playerTin);
        break;
    case 1: // Buy Copper
        selectedItemInfo = "Copper Price: " + string(vil2_copperPrice * Tax) + " | Weight: " + string(copperWeight) + " | Trader Qty: " + string(copperQuantity) + " | Player Qty: " + string(obj_Boat.playerCopper);
        break;
    case 2: // Buy Wheat
        selectedItemInfo = "Wheat Price: " + string(vil2_wheatPrice * Tax) + " | Weight: " + string(wheatWeight) + " | Trader Qty: " + string(wheatQuantity) + " | Player Qty: " + string(obj_Boat.playerWheat);
        break;
    case 3: // Buy Provisions
        selectedItemInfo = "Provisions Price: " + string(vil2_provisionPrice * Tax) + " | Weight: " + string(provisionWeight) +  " | Player Qty: " + string(obj_Boat.daysOfProvisions);
        break;
    case 4: // Sell Tin
        selectedItemInfo = "Tin Price: " + string(vil2_tinPrice) + " | Weight: " + string(tinWeight) + " | Trader Qty: " + string(tinQuantity) + " | Player Qty: " + string(obj_Boat.playerTin);
        break;
    case 5: // Sell Copper
        selectedItemInfo = "Copper Price: " + string(vil2_copperPrice) + " | Weight: " + string(copperWeight) + " | Trader Qty: " + string(copperQuantity) + " | Player Qty: " + string(obj_Boat.playerCopper);
        break;
    case 6: // Sell Wheat
        selectedItemInfo = "Wheat Price: " + string(vil2_wheatPrice) + " | Weight: " + string(wheatWeight) + " | Trader Qty: " + string(wheatQuantity) + " | Player Qty: " + string(obj_Boat.playerWheat);
        break;
}

draw_text(infoX, 600, selectedItemInfo);

draw_set_alpha(1.0);
draw_set_color(c_white);
