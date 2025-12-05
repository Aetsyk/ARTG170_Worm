if (timerOn) {
	timerValue++;
}

if (targetTime > -1 && timerValue >= targetTime) {
	activate_timerEvent();
}