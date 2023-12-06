obj_Boat.sailing = false;

time = obj_TimeNcalandar.hours;

if (time >= 3) && (time < 9)
{
	image_index= 0;
}

if (time >= 9) && (time < 17)
{
	image_index = 1;
}

if (time >= 17) && (time < 20)
{
	image_index = 2;
}

if (time >= 20) || (time < 3)
{
	image_index = 3;
}

obj_TimeNcalandar.on = false;