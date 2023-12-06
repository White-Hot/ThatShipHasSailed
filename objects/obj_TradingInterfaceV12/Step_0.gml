// Step event of obj_TradingInterface
var maxOption = array_length_1d(menuOptions) - 1;

if (keyboard_check_pressed(vk_up)) {
    selectedOption -= 1;
    if (selectedOption < 0) {
        selectedOption = maxOption;
    }
}

if (keyboard_check_pressed(vk_down)) {
    selectedOption += 1;
    if (selectedOption > maxOption) {
        selectedOption = 0;
    }
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
    switch (menuOptions[selectedOption]) {
        case "Buy Tin":
            // Implement buying logic for tin
            if (obj_Boat.playerTin < tinQuantity) {
                if (obj_Boat.playerCurrency >= (vil1_tinPrice * Tax)) {
					if (obj_Boat.cargo + tinWeight < obj_Boat.cargoCapacity)
					{
                    obj_Boat.playerTin++;
                    obj_Boat.playerCurrency -= (vil1_tinPrice * Tax);
                    vendorCurrency += vil1_tinPrice; // Increase vendor's currency
					}
                }
            }
            break;
        case "Buy Copper":
            // Implement buying logic for copper
            if (obj_Boat.playerCopper < copperQuantity) {
                if (obj_Boat.playerCurrency >= (vil1_copperPrice * Tax)) {
					if (obj_Boat.cargo + copperWeight < obj_Boat.cargoCapacity)
					{
                    obj_Boat.playerCopper++;
                    obj_Boat.playerCurrency -= (vil1_copperPrice * Tax);
                    vendorCurrency += vil1_copperPrice; // Increase vendor's currency
					}
                }
            }
            break;
        case "Buy Wheat":
            // Implement buying logic for wheat
            if (obj_Boat.playerWheat < wheatQuantity) {
                if (obj_Boat.playerCurrency >= (vil1_wheatPrice * Tax)) {
					if (obj_Boat.cargo + tinWeight < obj_Boat.cargoCapacity)
					{
                   obj_Boat.playerWheat++;
                    obj_Boat.playerCurrency -= (vil1_wheatPrice * Tax);
                    vendorCurrency += vil1_wheatPrice; // Increase vendor's currency
					}
                }
            }
			   break;
        case "Buy Provisions":
            // Implement buying logic for wheat
 
                if (obj_Boat.playerCurrency >= (vil1_provisionPrice * Tax)) {
					if (obj_Boat.cargo + provisionWeight < obj_Boat.cargoCapacity)
					{
                   obj_Boat.daysOfProvisions++;
                    obj_Boat.playerCurrency -= (vil1_provisionPrice * Tax);
                    vendorCurrency += vil1_provisionPrice; // Increase vendor's currency
					}
                }
            
            break;
        case "Sell Tin":
            // Implement selling logic for tin
            if (obj_Boat.playerTin > 0) {
                obj_Boat.playerTin--;
                obj_Boat.playerCurrency += vil1_tinPrice;
                vendorCurrency -= vil1_tinPrice; // Decrease vendor's currency
            }
            break;
        case "Sell Copper":
            // Implement selling logic for copper
            if (obj_Boat.playerCopper > 0) {
                obj_Boat.playerCopper--;
                obj_Boat.playerCurrency += vil1_copperPrice;
                vendorCurrency -= vil1_copperPrice; // Decrease vendor's currency
            }
            break;
        case "Sell Wheat":
            // Implement selling logic for wheat
            if (obj_Boat.playerWheat > 0) {
                obj_Boat.playerWheat--;
                obj_Boat.playerCurrency += vil1_wheatPrice;
                vendorCurrency -= vil1_wheatPrice; // Decrease vendor's currency
            }
            break;
    }
}
