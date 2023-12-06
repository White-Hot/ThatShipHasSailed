second += 100;

if (on = true)
{

if (second >60)
{
	minute +=1;
	second = 0;
}

if (minute > 60)
{
	hours +=1;
	minute = 1;
	obj_WeatherCon.hourCount +=1;
}

if (hours > 24)
{
	days +=1;
	hours = 1;
	if (obj_Boat.sailing = true)
	{
	obj_Boat.daysOfProvisions-=1;
	}
	
}

if (days > 7)
{
	weeks +=  1;
	days = 1;
}

if (weeks > 4)
{
	months +=1;
	weeks = 1;
}

if (months > 12)
{
	years += 1;
	months = 1;
}


if (hours > 5) && (hours < 9)
{
day = true;
night = false;
}
if (hours > 9) && (hours < 5)
{
day = false;
night = true;
}


if (months = 1 || months = 2 || months = 3)
{
Summer = false;
Spring = false;
Autmun = false;
Winter = true;


}


if (months = 4 || months = 5 || months = 6)
{
Summer = false;
Spring = true;
Autmun = false;
Winter = false;


}


if (months = 7 || months = 8 || months = 9)
{
Summer = true;
Spring = false;
Autmun = false;
Winter = false;


if (months = 10 || months = 11 || months = 12)
{
Summer = false;
Spring = false;
Autmun = true;
Winter = false;


}


}

}