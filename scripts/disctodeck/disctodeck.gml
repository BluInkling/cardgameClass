// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function disctodeck(){
	show_debug_message("Moving form discard to Deck")
	audio_play_sound(GachiStateChange3,1,false)
	for (var i = 0; i < array_length(discardhand) ; i++){
		hold = discardhand[i]
		array_push(deck,hold)
		
	}
	array_delete(discardhand,0,array_length(discardhand))
	show_debug_message("Discard:")
	show_debug_message(discardhand)
	show_debug_message("DECK new:")
	show_debug_message(deck)
	
	
	pluha = 0
	for (var i = 0; i < array_length(deck) ; i++){
		card = deck[i]
		
		with (card){
			
			
			destination_x = oDeckPlace.x;
			destination_y = oDeckPlace.y + other.pluha;
			donemoving = false
			move_towards_point(destination_x,destination_y,15);
			
		} 
		pluha += 3;
		
	}
	
	alarm_set(4,90)
}