///path_opt(path)

var clean_path = argument0;

for ( var p = 0; p < path_get_number(clean_path); p+=1 ) {
    if ( !collision_line(path_get_point_x(clean_path,0), path_get_point_y(clean_path,0), path_get_point_x(clean_path,p), path_get_point_y(clean_path,p), obj_tree, false, true) ) {
        path_delete_point(clean_path, p);    
    } else {
        break;
    }   
 
}

//return clean_path;
