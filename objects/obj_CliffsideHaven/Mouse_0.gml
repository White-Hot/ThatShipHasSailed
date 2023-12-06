if(obj_Boat.sailing = false)
{
if(obj_Boat.Area = 1) 
{
Distance = random_range(60000, 80000);
}
if(obj_Boat.Area = 2) 
{
Distance = random_range(50000, 60000);
}
if(obj_Boat.Area = 3) 
{
Distance = random_range(26000, 34000);
}
if(obj_Boat.Area = 4) 
{
Distance = random_range(50000, 60000);
}

if (obj_Boat.sailing = false) && (clickable = true)
{
obj_Boat.destiatnionTarget = Location;
obj_Boat.destinationDistance = Distance;
obj_Boat.Area = Group;
}
room_goto(obj_MenuCon.previousRoom);
}