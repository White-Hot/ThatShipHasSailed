// Create event of obj_TradingInterface
// Create event of obj_TradingInterface
// Create event of obj_TradingInterface

menuOptions = ["Buy Tin", "Buy Copper", "Buy Wheat", "Buy Provisions" , "Sell Tin", "Sell Copper", "Sell Wheat"];
selectedOption = 0; // Initialize the selected option


vendorCurrency = obj_Econ.Village2_vendorCurrency;

Tax = 1.2;

vil2_tinPrice = random_range(2,5);
vil2_copperPrice = random_range(3,6); 
vil2_wheatPrice = random_range(3,6);
vil2_provisionPrice = random_range(2,6);



tinWeight = 8;
copperWeight = 10;
wheatWeight = 4;
provisionWeight = 5;

tinQuantity = obj_Econ.Village2_tinQuantity;
copperQuantity = obj_Econ.Village2_copperQuantity;
wheatQuantity = obj_Econ.Village2_wheatQuantity;
provisionsQuantiy = obj_Econ.Village2_provisionsQuantiy;

