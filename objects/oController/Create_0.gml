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

coA = 0
coB =  0
coC = 0
coD = 0
colnum = irandom_range(1,255)
color = 0

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

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);


layer_background_sprite(back_id,choose(BnFJ,tumblr_226484df357757565ded83f4155a58b2_b04a6978_1280,tumblr_7761c8fdae6960f8d8a79b5833e64732_1a3a5558_1280))






