if (moving)
{
	moveTimer --;
}





	


if(keyboard_check(ord("W")) && image_angle != 180){
	Direction = "up";
}
if(keyboard_check(ord("A"))  && image_angle != 270){
	Direction = "left";
}
if(keyboard_check(ord("D"))  && image_angle != 90){
	Direction = "right";
}
if(keyboard_check(vk_space))
{
	if (DashFull)
	{
		Dash = true
	}
		
}

if (Dash)
	{
		moveSpeed = 0.01;
		
		dashTimer++;
		
		if (dashTimer == 20)
		{
			moveSpeed  = 0.2;
			dashTimer = 0;
			Dash = false;
			DashFull = false;
		}
	}

prevHeadX = x;
prevHeadY = y;

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
		
		bodyPart[i].image_angle =  image_angle;
		
		
		prevHeadX = prevX;
		prevHeadY = prevY;
	}
	
	moveTimer = moveSpeed * room_speed;
	
}
