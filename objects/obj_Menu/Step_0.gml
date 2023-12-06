// Step Event of obj_Menu
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
    // Perform actions based on the selected option
    switch (menuOptions[selectedOption]) {
        case "Trade":
            room_goto(Trader); // Go to the Trader room
            break;
			
        case "Repair":
		if (obj_Boat.shipCondition < obj_Boat.FullRepair) && (obj_Boat.playerCurrency > 199)
		{
            scr_Repair(); // Call the repair script
           
		}
		 break;
		 
        case "Chart":
            room_goto(Map); // Go to the Map room
            break;
			
			
			
			
			
       
			
			
    case "Recruit":
        if (on == true) {
            room_goto(Recruiter); // Go to the Recruiter room
        }
        break;
	
           
    
    // Add other cases as needed
			
			
	
			
			
			
        case "Set Sail":
		if(room != obj_Boat.destiatnionTarget)
		{
			if (room = obj_Boat.destiatnionTarget)
			{
				
				room_goto(Map);
			}
			
		obj_Boat.portOfOrogin = room;
            room_goto(Sailing); // Go to the Sailing room
		}
			
            break;
    }
}

