accessing
actionLabel
	^ self isMerge ifTrue: ['Merge'] ifFalse: ['Commit']