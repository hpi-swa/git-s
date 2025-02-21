accessing
depth
	^ self parent ifNil: [0] ifNotNil: [self parent depth + 1]