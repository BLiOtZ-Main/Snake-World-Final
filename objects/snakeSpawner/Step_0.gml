spawnTime ++;
snakes[5] = {};


if(spawnTime >= 150){
	if(snakeNum <= 4)
	{
		snakes[snakeNum] = instance_create_layer((x-2*96)+(random_range(0,2*6)*32),(y-2*96)+(random_range(0,2*6)*32),"Instances",obj_other_head);
		snakeNum++
	}
	spawnTime = 0;
	
	
	
}