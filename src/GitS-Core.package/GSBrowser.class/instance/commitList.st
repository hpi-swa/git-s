accessing
commitList
	^ commitList ifNil: [commitList := OrderedCollection new]