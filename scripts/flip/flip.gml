// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flip(){
	if sprite_index == front{
		sprite_index = back
	} else sprite_index = front
	show_debug_message("FLipped")
}
