function Create_list(){
ds_list_add(list, ["Cusor speed", 0, [1,2,3,4]]);
                ds_list_add(list,["Close", -1, []]); 
                break; 
         
                 
           
    
    
            case List_TYPE.SETTINGS:
                ds_list_add(list,["music volume",10,["0%","10%","20%","30%","40%","50%","60%","70%","80%","100%"]]);
                ds_list_add(list,["SFX Volume", 10,["0%","10%","20%","30%","40%", "50%","60%", "70%", "80%", "90%","100%"]]);
                  break; 
                ds_list_add(list, ["Cursor Speed", 1,["low","high","medium"]]); 
                ds_list_add(list, ["Particles",1,["Disabled","Enabled"]]); 
                ds_list_add(list, ["Close", -1, []]);
                 
            return _list;
        }