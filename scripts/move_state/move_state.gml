/// move_state
/// get direction
dir = point_direction(0,0, xaxis, yaxis);

//get length
if (xaxis == 0) && (yaxis == 0){
	len = 0;
} else {
	len = spd;
	get_face();
}
// get spd var
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Horizontal Collison
if (place_meeting(x+hspd, y, obj_wall)){
	while (!place_meeting(x+sign(hspd), y, obj_wall)){
		x += sign(hspd);
	}
	hspd = 0;
}

x += hspd;

// vert Collison
if (place_meeting(x, y+vspd, obj_wall)){
	while (!place_meeting(x, y+sign(vspd), obj_wall)){
		y += sign(vspd);
	}
	vspd = 0;
}

y += vspd;

//sprites
image_speed = 0.5;
if (len == 0) {
	image_index = 0;
}

/// get direction
switch(face){
	case 0:
		sprite_index = RIGHT;
		break;
	case 1:
		sprite_index = UPRIGHT;
		break; 
	case 2:
		sprite_index = UP;
		break;
	case 3:
		sprite_index = UPLEFT;
		break;
	case 4:
		sprite_index = LEFT;
		break;
	case 5:
		sprite_index = DOWNLEFT;
		break;
	case 6:
		sprite_index = DOWN;
		break;
	case 7:
		sprite_index = DOWNRIGHT;
		break;
}