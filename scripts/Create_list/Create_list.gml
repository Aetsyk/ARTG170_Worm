function Create_list(){
    /// @arg x 
    /// @arg y 
    /// @arg width 
    /// @arg height
    /// @arg LIST_TYPE 
    
    //Arguments
    var _x = argument[0];
    var _y = argument[1]; 
    var _width = argument[2]; 
    var _height = argument[3]; 
    var _type = argument[4]; 
    
    // Create list 
    var _list = instance_create_layer(_x,_y, "Instances",olist); 
    
    //set values 
    with(_list) {
        width = _width; 
        height = _height; 
        type = _type; 
        
        // populate list 
        switch (_type) {
            case List_TYPE.Game_OPTIONS: 
                ds_list_add(list, ["music volume", 0, [1,2,3,4]]);
                ds_list_add(list,["volume bar", 0, [1,2,3,4]]);
                ds_list_add(list, ["Cusor speed", 0, [1,2,3,4]]);
                ds_list_add(list,["Close", -1, []]); 
                break; 
        }
    } 
        return _list;
    
    
}