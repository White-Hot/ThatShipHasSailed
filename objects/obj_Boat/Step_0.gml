	//dayCount = obj_TimeNcalandar.days;
	
	
	
		if (shipCondition = 0)
{
	room_goto(Shipwreck);
	scr_shipWreck();
}
		
		if (shipCondition > 120000)
		{
			image_index = 0;
		}
		if (shipCondition > 90000) && (shipCondition < 120000)
		{
			image_index = 1;
		}
		
		if (shipCondition > 60000) && (shipCondition < 90000)
		{
			image_index = 2;
		}
		if (shipCondition > 30000) && (shipCondition < 60000)
		{
			image_index = 3;
		}
		if (shipCondition < 10000) 
		{
			image_index = 4;
		}
	

if (room != Sailing)
{
image_alpha = 0;
}

if (room = Sailing)
{
	image_alpha = 1;
}

if (sailing = true)
{
	scr_boat_wobble();

	shipCondition-=shipware;
	if (Carpenter = true)
	{
		shipCondition += (obj_CrewCon.CarpenterSkill / 10)
	}
	
	/*if (daysOfProvisions > 0)

	{
		if (dayCount > prviousday)
		{
		daysOfProvisions -= 1;
		prviousday+=1;
		}
	}
	*/
	
	
	 	
		currentSpeed = baseSpeed * crew;
		
		windConflict = (obj_WeatherCon.ChanceWind / 10);
		currentSpeed = currentSpeed - windConflict;
		
		
	currentSpeed -= windConflict;
	
	if (currentSpeed < 0.75)
		{
			currentSpeed = 0.75;
		}
		
		if (Navigator = true)
		{
			currentSpeed += (obj_CrewCon.NavSkill /5);
		}
	destinationDistance -= currentSpeed;
	
	if(destinationDistance <= 0)
	{
		room_goto(destiatnionTarget);
	}

}

Quatermaster = obj_CrewCon.Quatermaster;
Navigator = obj_CrewCon.Navigator;
Carpenter = obj_CrewCon.Carpenter;
Cook = obj_CrewCon.Cook;
Surgeon = obj_CrewCon.Surgeon;




if (daysOfProvisions <= 0)
{
	starvation = true;
	daysOfProvisions = 0;
}

if (starvation = true)
{
	scr_starvation();
}

if (survival = 0)
{
	room_goto(Starvation);
}

if (room != Map)
{
	currentLocation = room;
}





//Cargo



TinCargo = playerTin * tinWeight;
CopperCargo = playerCopper * copperWeight;
WheatCargo = playerWheat * wheatWeight;
ProvisionCargo = daysOfProvisions * provisionWeight;


cargo = (TinCargo + CopperCargo + WheatCargo + ProvisionCargo)

crew = ( 1 + obj_CrewCon.Navigator + obj_CrewCon.Cook + obj_CrewCon.Quatermaster +obj_CrewCon.Carpenter +obj_CrewCon.Surgeon);



