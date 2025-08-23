commit-list
commitListUpdateIntervalFor: commitListSize
	commitListSize >= 2000 ifTrue: [^ 3 seconds].
	commitListSize >= 200 ifTrue: [^ 1 second].
	^ 200 milliSeconds