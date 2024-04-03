randomize()
deck = []
global.playerhand = []
global.comhand = []
discardhand = []
space =0
chosen = ""
comchosen = ""

wins = 0
losses = 0

global.pluh2 = 0

global.choosing = false;

for (var i = 0; i < 24 ; i++){
	//alarm_set(0,30)
	newcard = instance_create_layer(oDeckPlace.x,oDeckPlace.y + space,"Instances",choose(oCardPaper,oCardRock,oCardScissors))
	//cardid = instance_id_get(newcard)
	array_push(deck,newcard)
	show_debug_message(newcard)
	space = space + 3;
	with (newcard) flip()
	
	//with (newcard){
	//	destination_x = oDeckPlace.x
	//	destination_y = oDeckPlace.y+other.space
	//	move_towards_point(destination_x,destination_y,3)
	//}
}

show_debug_message(deck)

with (deck[0]){
	clickable = true
	//image_xscale= 2
	}










