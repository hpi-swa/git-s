generating
updateIntervalFor: commitsSize
	commitsSize >= 2000 ifTrue: [^ 3 seconds].
	commitsSize >= 200 ifTrue: [^ 1 second].
	^ 200 milliSeconds