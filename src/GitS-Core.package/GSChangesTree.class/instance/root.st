accessing
root
	^ (self parent ifNil: [^ self]) root