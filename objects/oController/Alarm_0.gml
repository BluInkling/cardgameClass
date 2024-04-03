/// @description Insert description here
// You can write your code in this editor


newcard = instance_create_layer(x,y + space,"Instances",choose(oCardPaper,oCardRock,oCardScissors))
	//cardid = instance_id_get(newcard)
	array_push(deck,newcard)
	show_debug_message(newcard)
	space = space + 3;
	with (newcard){
		destination_x = oDeckPlace.x
		destination_y = oDeckPlace.y+other.space
		move_towards_point(destination_x,destination_y,3)
	}

alarm_set(0,30)







