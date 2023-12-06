

spawn = obj_CrewCon.Surgeon;




if (spawn == true)
{
body =obj_CrewCon.SurgBody;
eyes = obj_CrewCon.SurgEyes;
hair = obj_CrewCon.SurgHair
 
iimage_index = body;
image_alpha = 1;
   // Draw the s_Eyes sprite
    draw_sprite(s_Eyes, eyes, x, y);
image_alpha = 1;
    // Draw the s_Hair sprite
    draw_sprite(s_Hair, hair, x, y);
	image_alpha = 1;
}