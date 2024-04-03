// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawcardsCom(){
	show_debug_message("DRAWINF CARDS FOR COMPUTER!")
	pluhc = 0
	for(var i = 0;i < 3;i++){
		card = deck[i];
		with (card){
			donemoving = false
			destination_x2 = 400 + other.pluhc
			destination_y2 = 70
			donemoving = false
			move_towards_point(destination_x2,destination_y2,13)
			show_debug_message(string(id) + "Where you going comcard? X:" + string(x) + "Y:" + string(y))
		}
		pluhc = pluhc + 200;
		array_push(global.comhand,card)
		
	}
	
	array_delete(deck,0,3)
		
		show_debug_message("DECK after com:")
		show_debug_message(deck)
		show_debug_message("com HAND:")
		show_debug_message(global.comhand)
}