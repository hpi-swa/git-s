activation
activeFor: aWorkingCopy
	aWorkingCopy ifNil: [^ self value].
	^ aWorkingCopy activeOperation