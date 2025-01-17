accessing
findRef: aString ifNone: noneBlock
	^ self findRef: aString ifFound: #yourself ifNone: noneBlock