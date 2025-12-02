// this script contains functions relating to detecting if the mouse is 
// within certain regions on the screen or within the room 

/// function getMouseCoord(gui) 
/// @param gui Boolean || are we in the Draw Gui event?  
 function getMouseCoord(_gui) {
    // Retrieve the mouse coordinates 
    var m = []; 
    
    //Gui? 
    if(_gui){
        m = [display_mouse_get_x(), display_mouse_get_y()]; 
        
    } else {
        
        // Otherwise, just use the coordinates of the mouse within the room
        m = [mouse_x, mouse_y];
    }
    
    //Return m 
    return m; 
}
/// function mousewithinReat( cornerOne,  cornerTwo, gui )     
    /// @param cornerOne [] || Typically top left corner"s coordinates 
    /// @param cormerTwo [] || Typically bottom right corner's coordinatess
    /// @param gui Boolean || Are we in the Draw Gui event? 
    
    


function mouseWithinReact(_c1, _c2, _gui){
     // Retrieve the mouse coordinates 
    var m = getMouseCoord(_gui); 
    
    // Check to see if our mouse coordinates are within the two corners passed in 
    if(median(_c1[0], _c2[0], m[0] == m[0] && median(_c1[1],_c2[1],m[1]) == m[1])) return true;
        else return false;  
    
}
    
    /// function mouseWithinCircle( center, radius, gui ) 
    /// @param center [] || Center coordinates for the circle
    /// @param radius Real || Radius of the circle 
    /// @param gui    Boolean || are we in the draw gui event? 

function mouseWithinCircle(_c,_r,_gui){
   
    // Retrieve the mouse coordinates 
    var m = getMouseCoord(_gui); 
    
    // Compare the distance to from the mouse to the center with the radius 
    if (point_distance(m[0], m[1], _c[0], _c[1]) <= _r ) {
        
        // Mouse is within the circle's boundary 
            return true;
          
        } else {
             // otherwise we are not within the circle boundary 
             return false;  
            } 
    
}