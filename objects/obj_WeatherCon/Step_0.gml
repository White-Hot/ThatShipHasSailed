if (hoursOfweahter > 0)

	{
		if (hourCount > prviousHr)
		{
		hoursOfweahter -=1;
		prviousHr+=1;
		}
	}
		
		if (hoursOfweahter <= 0) && (obj_TimeNcalandar.Spring = true)
		{
			ChanceClear = irandom(150);
			

			ChanceMist = irandom(40);
			ChanceFog = irandom(30);

		
			ChanceRain = irandom(50)
			ChanceStorm = irandom(50);

			ChanceSnow = irandom(25);

			Temp = irandom_range(0,26);
			ChanceWind = irandom(25);
			
			hourCount = 1;
			prviousHr = hourCount -1;
			
			hoursOfweahter = random(4) * random(6);
			
			
		}
		
		if (hoursOfweahter <= 0) && (obj_TimeNcalandar.Summer = true)
		{
			ChanceClear = irandom(200);
			

			ChanceMist = irandom(30);
			ChanceFog = irandom(20);

		
			ChanceRain = irandom(30)
			ChanceStorm = irandom(90);

			ChanceSnow = irandom(5);

			Temp = irandom_range(6,38);
			ChanceWind = irandom(20);
			
			hourCount = 1;
			prviousHr = hourCount -1;
			
			hoursOfweahter = random(4) * random(6);
			
			
		}
		
		if (hoursOfweahter <= 0) && (obj_TimeNcalandar.Autmun = true)
		{
			ChanceClear = irandom(100);
			

			ChanceMist = irandom(60);
			ChanceFog = irandom(50);

		
			ChanceRain = irandom(70)
			ChanceStorm = irandom(60);

			ChanceSnow = irandom(40);

			Temp = irandom_range(-6,17);
			ChanceWind = irandom(35);
			
			hourCount = 1;
			prviousHr = hourCount -1;
			
			hoursOfweahter = random(4) * random(6);
			
			
		}
		
		if (hoursOfweahter <= 0) && (obj_TimeNcalandar.Winter = true)
		{
			ChanceClear = irandom(150);
			

			ChanceMist = irandom(80);
			ChanceFog = irandom(80);

		
			ChanceRain = irandom(50)
			ChanceStorm = irandom(50);

			ChanceSnow = irandom(80);

			Temp = irandom_range(-15,8);
			ChanceWind = irandom(25);
			
			hourCount = 1;
			prviousHr = hourCount -1;
			
			hoursOfweahter = random(4) * random(6);
			
			
		}
		
		if (Temp < 5) && (ChanceRain + ChanceStorm + ChanceSnow > ChanceClear) 
		{
			Snow = true;	
			Rain = false;
			Storm = false;
		}
		
		else
		{
			Snow = false;	 
		}
		
		if (Snow = true)
		Rain = false;
		Storm = false;
		
		
		if (ChanceRain + ChanceStorm > ChanceClear)
		{
			Rain = true;	 
			if (ChanceStorm > ChanceRain)
			{
				Storm = true;
				Snow = false;
				Rain = false;
			}
		}
		
		if (	ChanceRain + ChanceStorm < ChanceClear)
		{
			Rain = false;	 
		}
		
		if  (Snow = true) && !instance_exists(obj_Snow) &&  (room != Trader) && (room != Recruiter) && (room != CrewNship) && (room != Map)
		{
			instance_create_layer(x,y,"Weather",obj_Snow);
		}
		
		if  (Rain = true) && !instance_exists(obj_Rain) && !instance_exists(obj_Snow) &&  (room != Trader) && (room != Recruiter) && (room != CrewNship) && (room != Map)
		{
			instance_create_layer(x,y,"Weather",obj_Rain);
		}
		
		if  (Storm = true) && !instance_exists(obj_Storm) && !instance_exists(obj_Snow) &&  (room != Trader) && (room != Recruiter) && (room != CrewNship) && (room != Map)
		{
			instance_create_layer(x,y,"Weather",obj_Storm);
			
		}
	
	
