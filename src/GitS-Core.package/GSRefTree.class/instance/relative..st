accessing
relative: aString
	self assert: (aString beginsWith: self ref).
	^ aString allButFirst: self ref size