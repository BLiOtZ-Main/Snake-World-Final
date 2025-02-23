moveSpeed = 0.2;
moveTimer = moveSpeed * room_speed
Direction = "up";
DashFull = true;
Dash = false;
dashTimer = 0;
Lives = 5;
deathTimer = 0;
appleTimer = 0
appleNum = 0
moving = true;



startBodySize = Lives;
bodyPart[0] = obj_head;
points = 0;

for(i = 1; i < startBodySize; i++){
	bodyPart[i] = instance_create_layer(x,y+32*i,"Instances",obj_body);
}