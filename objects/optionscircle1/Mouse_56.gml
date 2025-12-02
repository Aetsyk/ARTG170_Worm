/// @description 
is_being_dragged = false; 

switch (settings) {
    case "music": 
        global.music_volume = amount_current; 
        
        audio_sound_gain(snd_Music,amount_current / 100, 0);
        break; 
    case "sound": 
         global.sound_volume = amount_current; 
        
         audio_group_set_gain(audiogroup_sfx, amount_current / 100, 0); 
        break; 
    case "cursor": 
        global.cursor_sentivity = amount_current; 
        
        cursor_move_gain(snd_Cursor, amount_current / 100, 0); 
        break; 
	
}