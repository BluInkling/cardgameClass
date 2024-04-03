
if (array_contains(global.playerhand,id) and global.choosing == true and donemoving == true and clickable != true){
	//instance_destroy(self)
	show_debug_message("CARD CHOSEN:")
	show_debug_message(id)
	global.choosing = false;
	y = y -200
	x = 600
	audio_play_sound(CmnUI_Decide00__1_,1,false)
	with(oController) chosen = "rock";
	with(oController) alarm_set(1,60)//compare();
	//clickable = false
	
}


if clickable == true{
	with(oController) drawcards();
	audio_play_sound(CmnLyt_Back_Decide,1,false)
	clickable = false;
}






