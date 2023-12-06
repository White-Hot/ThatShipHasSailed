if (room != Map) && (room != Trader) && (room != Recruiter) && (room != CrewNship)
{
	if (keyboard_check_pressed(ord("M"))) {
    room_goto(Map);
}

}

if (CurrentRoom = Map) 
{
	
		if (keyboard_check_pressed(ord("M"))) || (keyboard_check_pressed(vk_escape)) || (keyboard_check_pressed(vk_tab))
	{
		room_goto(previousRoom)
	}

	
}


if (room = Trader) 

if (keyboard_check_pressed(ord("M"))) || (keyboard_check_pressed((vk_tab)) ||(keyboard_check_pressed((vk_escape))))
{
		room_goto(previousRoom)
	}
	
	
if (room = Location)

if (keyboard_check_pressed(vk_tab))
{
		room_goto(CrewNship);
	}
	if (room = CrewNship)
	if (keyboard_check_pressed(ord("M"))) || (keyboard_check_pressed((vk_tab)) ||(keyboard_check_pressed((vk_escape))))
{
		room_goto(previousRoom);
	}
	if (room = Recruiter)
	{
if		(keyboard_check_pressed(ord("M"))) || (keyboard_check_pressed((vk_tab)) ||(keyboard_check_pressed((vk_escape))))
{
	room_goto(previousRoom);
	}
	}	