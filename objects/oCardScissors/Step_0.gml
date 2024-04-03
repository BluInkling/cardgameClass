
if !donemoving{

	if(point_distance(x,y,destination_x,destination_y)<speed and array_contains(oController.deck,id)){
	    x = destination_x;
	    y = destination_y;
	    speed = 0;
		//flip()
		donemoving = true
		show_debug_message("Done moving to deck")

	}

	if(point_distance(x,y,destination_x,destination_y)<speed and array_contains(oController.discardhand,id)){
	    x = destination_x;
	    y = destination_y;
	    speed = 0;
		//flip() NO FLIP
		donemoving = true
		show_debug_message("done moving to discard pile")

	}



	if(point_distance(x,y,destination_x2,destination_y2)<speed and array_contains(global.comhand,id)){
	    x = destination_x2;
	    y = destination_y2;
	    speed = 0;
		//flip()
		donemoving = true
		show_debug_message("done moving to computer hand")
	}

	if(point_distance(x,y,destination_x2,destination_y2)<speed and array_contains(global.playerhand,id)){
	    x = destination_x2;
	    y = destination_y2;
	    speed = 0;
		flip()
		donemoving = true
		show_debug_message("done moving to player hand")

	}


}