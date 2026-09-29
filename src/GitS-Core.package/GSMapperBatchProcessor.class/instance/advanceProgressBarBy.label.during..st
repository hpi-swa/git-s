progress-bar
advanceProgressBarBy: aNumber label: aString during: aBlock
	ProgressNotification signal: '' extra: self label, String space, aString.
	aBlock value.
	self step: self step + aNumber.
	self progressBarBlock value: self step.