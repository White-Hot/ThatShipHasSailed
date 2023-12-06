spawn = obj_CrewCon.Navigator;
	
	if (obj_CrewCon.Navigator == true)
{
	
	body =obj_CrewCon.NavBody;
eyes = obj_CrewCon.NavEyes;
hair = obj_CrewCon.NavHair
 
image_index = body;
image_alpha = 1;

   // Draw the s_Eyes sprite
    draw_sprite(s_Eyes, eyes, x, y);

    // Draw the s_Hair sprite
    draw_sprite(s_Hair, hair, x, y);
	
}