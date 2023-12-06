if(instance_exists(obj_Saltmarsh))
{
obj_Boat.sailing = false;
obj_MenuCon.Location = room;
obj_Boat.Area = 1;
obj_Saltmarsh.Visited = true;
obj_Boat.survival = 5000;
}