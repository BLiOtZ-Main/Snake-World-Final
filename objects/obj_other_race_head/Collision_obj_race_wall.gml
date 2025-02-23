if(!buffer){
Lives--;

//stop moving
moving = false;
buffer = true;
alarm[0] = 30;


for (i = startBodySize-1; i > 0; i--;)
{
	instance_destroy(bodyPart[i])
	
}


startBodySize = Lives;
//move to spawn point


//recreate body
for(i = 1; i < startBodySize; i++){
		bodyPart[i] = instance_create_layer(x,y+32*i,"Instances",obj_other_race_body);
}


moving = true
}