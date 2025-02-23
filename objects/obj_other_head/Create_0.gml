moveSpeed = 0.2;
moveTimer = moveSpeed * room_speed
dirTimer = 90
Direction = "up";
Dash = false;

startBodySize = 3;
bodyPart[0] = obj_other_head;
points = 0;

for(i = 1; i < startBodySize; i++){
	bodyPart[i] = instance_create_layer(x,y+32*i,"Instances",obj_other_body);
}