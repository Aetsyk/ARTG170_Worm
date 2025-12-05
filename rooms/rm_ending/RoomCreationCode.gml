
instance_destroy(obj_char_bm);
instance_deactivate_object(obj_inventory); 
audio_play_sound(sfx_doorSlam, 10, false);
//instance_destroy(obj_bgSound);

obj_ending.startDialogue = true;

global.sawCutscene = false;