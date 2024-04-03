// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function complay(){
	show_debug_message("COMPUTER PLAYED ITS CARD!")
	cardnum = irandom_range(0,2)
	card = global.comhand[cardnum]
	audio_play_sound(CmnLyt_Decide_Small,1,false)
	with (card) y = y + 200
	with (card) x = 600
	with (card) flip()
	if (card.sprite_index == sPaper) comchosen = "paper"
	if (card.sprite_index == sRock) comchosen = "rock"
	if (card.sprite_index == sScissors) comchosen = "scissors"



	
	alarm_set(2,60)
}