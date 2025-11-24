instance_destroy(obj_char_bm);
instance_deactivate_object(obj_inventory); 
instance_destroy(obj_bgSound);

obj_ending.startDialogue = true;

if (!instance_exists(obj_ending)) {
    room_goto(rm2Wall1);
}