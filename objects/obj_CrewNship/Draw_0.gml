// Display vendor gold at the top right
draw_set_color(c_white);

// Display player gold
var playerGoldText = "Gold: " + string(obj_Boat.playerCurrency);
draw_text(display_get_width() - 60, 80, playerGoldText);

// Display current cargo
var playerCurCarText = "Current Cargo: " + string(obj_Boat.cargo);
draw_text(display_get_width() - 60, 130, playerCurCarText);

// Display cargo capacity
var playerCapCarText = "Cargo Capacity: " + string(obj_Boat.cargoCapacity);
draw_text(display_get_width() - 60, 180, playerCapCarText);

// Display number of crew
var playerCrewText = "Number of Crew: " + string(obj_Boat.crew);
draw_text(display_get_width() - 60, 230, playerCrewText);

// Display days of provisions
var playerPrvoisText = "Days Provisions: " + string(obj_Boat.daysOfProvisions);
draw_text(display_get_width() - 60, 280, playerPrvoisText);




var playerCPText = "Current Copper: " + string(obj_Boat.playerCopper);
draw_text(display_get_width() - 60, 400, playerCPText);

var playerTNText = "Current Tin: " + string(obj_Boat.playerTin);
draw_text(display_get_width() - 60, 450, playerTNText);

var playerWHText = "Current Wheat: " + string(obj_Boat.playerWheat);
draw_text(display_get_width() - 60, 500, playerWHText);






var playerSpdText = "Sail Speed: " + string(obj_Boat.currentSpeed);
draw_text(60, 100, playerSpdText);








