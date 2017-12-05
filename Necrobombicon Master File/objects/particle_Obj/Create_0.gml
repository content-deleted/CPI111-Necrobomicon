direction = random(360)
speed = sqr(random_range(1,5))
decel = 1
//alarm[0] = sqrt(random_range(25,900)); //"stop moving" timer
alarm[1] = random_range(200,350); //destruction timer
motion_set(direction,speed)
alph = 1
subalph = 0