///scr_npc_peep_chase

friction = 0;

// Move towards the target if it exists

if ( instance_exists(foe) && foe != -1 ) {
    //attack the for when we reach it
     if (distance_to_point(foe.x,foe.y) <= 32 ) {
        state = 'attack';
     } else if (distance_to_point(foe.x,foe.y) <= 256 ){
         motion_add(point_direction(x, y, foe.x, foe.y), acc);
     } else {
        state = 'idle';
     }
}

// Keep Speed Real
if (speed > spd) {
    speed = spd;
}
