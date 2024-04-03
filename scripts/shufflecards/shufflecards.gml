// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shufflecards(){
	show_debug_message("SHUFFLING CARDS")

	deck = array_shuffle(deck)
	pluha = 0
	for (var i = 0; i < array_length(deck) ; i++){
		card = deck[i]
		with (card){
			destination_x = oDeckPlace.x;
			destination_y = oDeckPlace.y + other.pluha;
			donemoving = false
			move_towards_point(destination_x,destination_y,10);
				
			} 
			pluha += 3;
		} 
		
	
	
	
	
	show_debug_message(deck[0])
	with (deck[0]){
	clickable = true	
	}
	show_debug_message("Discardd:")
	show_debug_message(discardhand)
	show_debug_message("DECK newd:")
	show_debug_message(deck)
	show_debug_message("Playerhandd:")
	show_debug_message(global.playerhand)
	show_debug_message("Comhand newd:")
	show_debug_message(global.comhand)
	
	global.playerhand = []
	global.comhand = []
	discardhand = []
	space =0
	chosen = ""
	comchosen = ""

	global.pluh2 = 0

	global.choosing = false;
	show_debug_message("shuffling DONE")

}