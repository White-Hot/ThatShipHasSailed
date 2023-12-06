y = 0;

randomize();
// Check if the object's x position is on the first half of the screen


x = irandom_range(100,1400);
scr_randomize_size_with_limit(0.5, 2, 2054);


if (x < display_get_width() / 2) {
    // Mirror the image by setting the x scale to -1
    image_xscale = -1;
} else {
    // Reset the x scale to its original value
    image_xscale = 1;
}


select = irandom(3);
if (select <= 1)
{
	sprite_index = s_L1;
}
if (select = 2)
{
	sprite_index = s_L2;
}

if (select = 3)
{
	sprite_index = s_L3;
}


