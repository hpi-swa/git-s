public-accessing
firstParent
	^ self parents ifNotEmpty: #first ifEmpty: [nil]