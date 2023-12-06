

spawn = obj_CrewCon.Quatermaster;




if (spawn == true)
{
    body = obj_CrewCon.QuaBody;
    eyes = obj_CrewCon.QuaEyes;
    hair = obj_CrewCon.QuaHair;
    
   

    image_index = body;
    image_alpha = 1;

    // Draw the s_Eyes sprite
    draw_sprite(s_Eyes, eyes, x, y);

    // Draw the s_Hair sprite
    draw_sprite(s_Hair, hair, x, y);
}
