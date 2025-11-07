if (codeManager.currentCodeLength < codeManager.codeMaxLength) {
	codeManager.currentCode[codeManager.currentCodeLength] = string(inputValue);
	codeManager.currentCodeLength++;
}