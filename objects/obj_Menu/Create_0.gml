// Create Event of obj_Menu
on = true;
on = obj_CrewCon.RecuitOn;

if (on = false)
{

	menuOptions = ["Trade", "Repair", "Chart", "Recruit (already checked)", "Set Sail"];
}
else
{
menuOptions = ["Trade", "Repair", "Chart", "Recruit", "Set Sail"];
}
selectedOption = 0; // Start with the first option selected

