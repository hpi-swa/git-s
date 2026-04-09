accessing
registry
	^ Registry ifNil: [Registry := Dictionary new]