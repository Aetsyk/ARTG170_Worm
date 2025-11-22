/// @description 
// Draw background 
draw_set_color($48413b);
draw_roundrect(x, y, x + width, y + height,0); 
draw_set_color(-1); 

// Draw list 

var _size = ds_list_size(list); 

for(var i = 0; i<_size; i++){
    //Arry data 
    var _arr = list[| i];
    var _name = _arr[PR.NAME]; 
    var _sel = _arr[PR.SELECTED];
    var _vals = _arr[PR.VALUES];  
    
    // production to draw 
    var _x = x + padding; 
    var _y = y + padding + itemH * i;
    
    //Color 
    if (i != hoverID) draw_set_color(c_black); 
        
    // Draw  name 
    draw_text(_x, _y, _name); 
    
    // Draw value 
    if(_sel > -1){
        var _var = vals[sel]; 
        
        draw_set_halign(fa_right)
        draw_text(x+width - paddding, _y, _vals);
        draw_set_halign(fa_left); 
        
    }
     // Reset color 
    draw_set_color(c_white); 
}