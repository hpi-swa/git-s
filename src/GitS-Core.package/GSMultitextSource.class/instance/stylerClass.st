styling
stylerClass
	^ self isCode ifTrue: [SHTextStylerST80] ifFalse: [nil]