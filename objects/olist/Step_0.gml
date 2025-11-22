/// @description 
// Mouse input 
var _mouseX = device_mouse_x_to_gui(0); 
var _mouseY = device_mouse_y_to_gui(0); 
var _mousePress = mouse_check_button_pressed(mb_left); 

// operate on list 
var _size = ds_list_size(list); 

for (var i=0; i< _size; i++) {
    // Array data 
    var _arr = list[|i]; 
    var _name = _arr[PR.NAME]; 
    var _sel = _arr[PR.SELECTED]; 
    var _vals = _arr[PR.VALUES]; 
    
    // coordinates 
    var _x1 = x + padding; 
    var _y1 = y + padding + itemH * i;
    var _x2 = x + width - padding; 
    var _y2 = _y1 + itemH; 
    // Get if hovering 
    var _hover = point_in_rectangle(_mouseX, _mouseY, _x1, _y1, _x2, _y2);
    
    if(_hover){
        // set hover variable 
        hoverID = i; 
        
        //Select 
        if(_sel == -1 && _mousePress){
            switch (_name) {
                case "Close":
                    instance_destroy();
                    break; 
            	
            }
        }
    }
        
        // change value 
        if (sel > -1) {
            var _wheel + mouse_wheel_up() - mouse_wheel_down(); 
        
             
            // wheel input 
            if (_wheel != 0) {
                _sel += _wheel; 
                
                //Clamp 
                _sel = clamp(sel, 0, array_length_id(_vals)-1); 
                
                // Apply to list 
                _arr[@ PR.SELECTED] = _sel; 
                
                //Apply to game options 
                if(type == List_TYPE.Game_OPTIONS) {
                    switch (_name) {
                        case "music": 
                            global.game_music = _vals[_sel]; 
                            break; 
                        case "volume": 
                            global.game_volume = _vals[_sel]; 
                            break; 
                    	
                    }
                }
        }
    
    
    
    
    }
    
}