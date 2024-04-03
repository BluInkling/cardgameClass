// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawcards(){
	show_debug_message("DRAWINF CARDS FOR PLAYER!")
	pluh = 0
	for(var i = 0;i < 3;i++){
		card = deck[i];
		show_debug_message(card)
		with (card){
			
			destination_x2 = 400 + other.pluh
			destination_y2 = 660 //650
			donemoving = false
			move_towards_point(destination_x2,destination_y2,13)
			//show_debug_message(string(id) + "Where you going? X:" + string(x) + "Y:" + string(y))
		}
		pluh = pluh + 200;
		array_push(global.playerhand,card)
		
	}
	array_delete(deck,0,3)
	//for(var i = 0;i < 3;i++){
	//	show_debug_message(i)
	//	show_debug_message(deck[i])
	//	array_delete(deck,i,1)
	//}
	show_debug_message("DECK after player:")
	show_debug_message(deck)
	show_debug_message("PLAYER HAND:")
	show_debug_message(global.playerhand)
	global.choosing = true;
	
	drawcardsCom()
}