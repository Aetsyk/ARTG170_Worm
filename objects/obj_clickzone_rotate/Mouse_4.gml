if(clockwise) {
	var l3DB81AAF_0 = global.playerfacing;
	switch(l3DB81AAF_0) {
		case "north":
			global.playerfacing = "east";
		break;
	
		case "east":
			global.playerfacing = "south";
		break;
	
		case "south":
			global.playerfacing = "west";
		break;
	
		case "west":
			global.playerfacing = "north";
		break;
	
		default:
			global.playerfacing = "north";
		break;
	}
}
else {
	var l716F7C2C_0 = global.playerfacing;
	switch(l716F7C2C_0) {
		case "north":
			global.playerfacing = "west";
		break;
	
		case "west":
			global.playerfacing = "south";
		break;
	
		case "south":
			global.playerfacing = "east";
		break;
	
		case "east":
			global.playerfacing = "north";
		break;
	
		default:
			global.playerfacing = "north";
		break;
	}
}