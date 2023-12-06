spawn = obj_CrewCon.Cook;

if (spawn == true)
{
    body = obj_CrewCon.CookBody;
    eyes = obj_CrewCon.CookEyes;
    hair = obj_CrewCon.CookHair;



    image_index = body;
    image_alpha = 1;

    // Draw the s_Eyes sprite
    draw_sprite(s_Eyes, eyes, x, y);

    // Draw the s_Hair sprite
    draw_sprite(s_Hair, hair, x, y);
}
