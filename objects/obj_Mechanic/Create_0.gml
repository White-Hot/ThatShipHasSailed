

spawn = obj_CrewCon.Carpenter;




if (spawn == true)
{


body = obj_CrewCon.CarpBody;
eyes = obj_CrewCon.CarpEyes;
hair = obj_CrewCon.CarpHair
 
image_index = body;
image_alpha = 1;
   // Draw the s_Eyes sprite
    draw_sprite(s_Eyes, eyes, x, y);
image_alpha = 1;
    // Draw the s_Hair sprite
    draw_sprite(s_Hair, hair, x, y);
	image_alpha = 1;
}
