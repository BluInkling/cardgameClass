// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function compare(){
	show_debug_message("Comparing CARDS!")
	if chosen == "scissors" and comchosen == "scissors"{
		show_debug_message("CHAT! YOU tied")
		audio_play_sound(TitlePressZLZR,1,false)
		discardcards()
	}
	else if chosen == "rock" and comchosen == "rock"{
		show_debug_message("CHAT! YOU tied")
		audio_play_sound(TitlePressZLZR,1,false)
		discardcards()
	}
	else if chosen == "paper" and comchosen == "paper"{
		show_debug_message("CHAT! YOU tied")
		audio_play_sound(TitlePressZLZR,1,false)
		discardcards()
	}
	
	
	else if chosen == "rock" and comchosen == "scissors"{
		show_debug_message("CHAT! YOU win!")
		audio_play_sound(P4_Skill_Raise,1,false)
		wins++;
		discardcards()
	}
	else if chosen == "paper" and comchosen == "rock"{
		show_debug_message("CHAT! YOU win")
		audio_play_sound(P4_Skill_Raise,1,false)
		wins++;
		discardcards()
	}
	else if chosen == "scissors" and comchosen == "paper"{
		show_debug_message("CHAT! YOU win")
		audio_play_sound(P4_Skill_Raise,1,false)
		wins ++;
		discardcards()
	}
	
	
	
	else if chosen == "scissors" and comchosen == "rock"{
		show_debug_message("CHAT! YOU LOSE!")
		audio_play_sound(Piano_Sting_OMORI_SFX__getmp3_pro_,1,false)
		losses++;
		discardcards()
	}
	else if chosen == "rock" and comchosen == "paper"{
		show_debug_message("CHAT! YOU LOSE")
		losses++;
		audio_play_sound(Piano_Sting_OMORI_SFX__getmp3_pro_,1,false)
		discardcards()
	}
	else if chosen == "paper" and comchosen == "scissors"{
		show_debug_message("CHAT! YOU LOSE")
		losses ++;
		audio_play_sound(Piano_Sting_OMORI_SFX__getmp3_pro_,1,false)
		discardcards()
	}

}