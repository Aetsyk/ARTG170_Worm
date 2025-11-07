audio_play_sound(sfx_interact, 10, false);

if (codeManager.currentCodeLength < codeManager.codeMaxLength) {
	codeManager.currentCode[codeManager.currentCodeLength] = string(inputValue);
	codeManager.currentCodeLength++;
}