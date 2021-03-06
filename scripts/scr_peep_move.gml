///scr_peep_move

//Set Friction to 0
friction = 0.0;

//Move towards target if it exists
if ( target != noone && instance_exists( target ) ) {    
    motion_add( point_direction(x, y, target.x, target.y), 0.5 );
    // Interact with target When reached
    if ( position_meeting(x, y, target) ) {
        state = 'idle'
    }
} else {
    target = noone;
    state = 'idle'
}

// Keep Speed Real
if ( speed > spd ) {
    speed = spd;
}
