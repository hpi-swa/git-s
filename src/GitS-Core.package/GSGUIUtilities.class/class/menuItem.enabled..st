menu
menuItem: aString enabled: aBoolean
	^ '{1} {2}' gitSFormat: {
		aBoolean ifTrue: ['<yes>'] ifFalse: ['<no>'].
		aString}