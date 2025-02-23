moveTimer --;
dirTimer --;

prevHeadX = x;
prevHeadY = y;

if(dirTimer <= 0){
	dirTimer = 90;
	dirRand = random_range(0,10)
	
	
	
	if(dirRand > 4 && dirRand < 10 && image_angle != 180){
		Direction = "up"
	}
	
	if(dirRand > 2 && dirRand < 4 && (x - 32) > 0  && image_angle != 270){
		Direction = "left"
	}
	if( dirRand > 0 && dirRand < 2 && (x + 32) < room_width && image_angle != 90){
		Direction = "right"
	}
	if(x-32 <= 0){
		Direction = "up"
	}
	if(x+32 >= room_width){
		Direction = "up"	
	}
}


if(moveTimer <= 0 ){
	if(Direction = "up"){
		y-=32;
		image_angle = 0;
	}
	if(Direction = "left"){
		x-=32;
		image_angle = 90;
	}
	if(Direction = "right"){
		x+=32;
		image_angle = 270;
		
	}
	
	for(i = 1; i < startBodySize + points; i+=1){
		var prevX = bodyPart[i].x;
		var prevY = bodyPart[i].y;
		
		bodyPart[i].x = prevHeadX;
		bodyPart[i].y = prevHeadY;
		
		prevHeadX = prevX;
		prevHeadY = prevY;
	}
	
	moveTimer = moveSpeed * room_speed;
	
}