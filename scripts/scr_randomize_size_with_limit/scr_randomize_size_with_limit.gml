// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr(){
	/// scr_randomize_size_with_limit(min_scale, max_scale, max_size)

var min_scale = argument0; // Minimum scale
var max_scale = argument1; // Maximum scale
var max_size = argument2;   // Maximum size

// Generate random scales within the specified range
var random_xscale = random_range(min_scale, max_scale);
var random_yscale = random_range(min_scale, max_scale);

// Ensure the object's size doesn't exceed the maximum
random_xscale = min(random_xscale, max_size / sprite_get_width(sprite_index));
random_yscale = min(random_yscale, max_size / sprite_get_height(sprite_index));

image_xscale = random_xscale;
image_yscale = random_yscale;


}