///scr_enemy_ship_attack

image_blend = c_blue;
friction = 0.5;

if ( instance_exists(foe) && foe != -1 ) {
    direction = point_direction(x, y, foe.x, foe.y);
    
    if(distance_to_point(foe.x,foe.y) > 32 ) {
        image_blend = c_white;
        state = 'chase';
    }
}
