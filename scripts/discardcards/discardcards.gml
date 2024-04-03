// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function discardcards(){
	show_debug_message("DISCARDIGN CARDS!")
	//global.pluh2 = 0
	for(var i = 0;i < array_length(global.playerhand);i++){
		card = global.playerhand[i];
		with (card){
			destination_x = oDiscardPlace.x
			destination_y = oDiscardPlace.y + global.pluh2
			donemoving = false
			move_towards_point(destination_x,destination_y,12)
		}
		global.pluh2 = global.pluh2 + 3;
		array_push(discardhand,card)
		
	}
	array_delete(global.playerhand,0,3)
	
	
	
	for(var i = 0;i < array_length(global.comhand);i++){
		
		card = global.comhand[i];
		with (card){
			destination_x = oDiscardPlace.x
			destination_y = oDiscardPlace.y + global.pluh2
			donemoving = false
			move_towards_point(destination_x,destination_y,12)
		}
		global.pluh2 = global.pluh2 + 3;
		array_push(discardhand,card)
		
	}
	array_delete(global.comhand,0,3)
	//for(var i = 0;i < array_length(global.playerhand) -1;i++){
	//	array_delete(global.playerhand,i,1)
	//}
	
	for(var i = 0;i < array_length(discardhand);i++){
		with (discardhand[i]){
			if (sprite_index != sCardBack) flip()
		}
		
	}
	
	
	show_debug_message("Deck after discrad:")
	show_debug_message(deck)
	if array_length(deck) != 0{
	with (deck[0]){
	clickable = true	}
	} else {
		alarm_set(3,90)
		//shufflecards()
	}
}