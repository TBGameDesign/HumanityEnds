///scr_peep_move

//Set Friction to 0
friction = 0.0;

//Move towards target if it exists
if ( path_exists( target ) ) {
        path_start(target, 0, path_action_stop, 0);    
    //motion_add( point_direction(x, y, target.x, target.y), acc );
    // Interact with target When reached
    //if ( position_meeting(x, y, target) ) {
    //    state = 'idle'
    //}
} else {
    path_delete(target); 
    state = 'idle'
}

// Keep Speed Real
if ( speed > spd ) {
    speed = spd;
}
