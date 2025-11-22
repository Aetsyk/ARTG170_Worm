///@description Create UI 
var _width = 300; 
var _height = 100; 

create_button(40, 40,_width, _height,"Options", on_click); 

create_button(40, 40 + _height + 40, _width, _height,"Volume", on_click);

create_button(40, 40 + _height + 40,_width, _height,"music",on_click);

create_button(40, 40 + _height + 40,_width, _height,"cursor volume",on_click);

create_button(40, 40 + (_height + 40)*2, _width,_height,"Quit",on_click);

//List 
Create_list(400,40,300,240,List_TYPE.Game_OPTIONS); 

Create_list(400,320,300, 280, List_TYPE.SETTINGS); 

