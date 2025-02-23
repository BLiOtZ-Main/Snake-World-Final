Lives--;

//stop moving
moving = false;


for (i = startBodySize-1; i > 0; i--;)
{
	instance_destroy(bodyPart[i])
	
}


startBodySize = Lives;

//move to spawn point
x = 1248;
y = 832;

//recreate body
for(i = 1; i < startBodySize; i++){
	bodyPart[i] = instance_create_layer(x,y+32*i,"Instances",obj_body);
}

moving = true;




