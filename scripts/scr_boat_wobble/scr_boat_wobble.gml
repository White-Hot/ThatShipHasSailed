// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boat_wobble(){
// Boat Wobbling Script
/// boat_wobble()

// Set the wobble parameters
var wobble_speed_x = 0.0003;   // Adjust this to control the speed of the wobble on the X-axis
var wobble_speed_y = 0.0005;   // Adjust this to control the speed of the wobble on the Y-axis
var wobble_amplitude_x = 2; // Adjust this to control the magnitude of the wobble on the X-axis
var wobble_amplitude_y = 1; // Adjust this to control the magnitude of the wobble on the Y-axis

// Get the boat's original position
var original_x = x;
var original_y = y;

// Calculate the wobbling effect
var wobble_x = original_x + wobble_amplitude_x * cos(wobble_speed_x * current_time);
var wobble_y = original_y + wobble_amplitude_y * sin(wobble_speed_y * current_time);

// Set the boat's new position
x = wobble_x;
y = wobble_y;



}