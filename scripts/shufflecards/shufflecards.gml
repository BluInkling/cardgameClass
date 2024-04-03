// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shufflecards(){
	show_debug_message("SHUFFLING CARDS")

	deck = array_shuffle(deck)
	add = 0
	//make them go on top. adding to depth value makes it go further BACK.
	//for (var i = 0; i < array_length(deck) ; i++){
	//	card = deck[i]
	//	add += 10
	//	with (card){
	//		depth -= other.add;
	//	}
	//}
	
	pluha = 0
	for (var i = 0; i < array_length(deck) ; i++){
		card = deck[i]
		with (card){
			//destination_x = oDeckPlace.x;
			//destination_y = oDeckPlace.y + other.pluha;
			//donemoving = false
			//move_towards_point(destination_x,destination_y,1);
			path_start(Path1,8,path_action_stop,false)
			if path_endaction == path_action_stop{
				destination_x = oDeckPlace.x;
				destination_y = oDeckPlace.y + other.pluha;
			}
			} 
			pluha += 3;
		} 
		
	
		for (var i = 0; i < array_length(deck) ; i++){
		card = deck[i]
		
		with (card){
			if (other.deck == id) depth = -1000
			depth = i * 10
			show_debug_message(id)
			show_debug_message(depth)
			//depth -= //other.add;
			show_debug_message(depth)
		}
		add += 10
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