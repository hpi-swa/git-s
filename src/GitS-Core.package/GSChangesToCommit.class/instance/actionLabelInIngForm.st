accessing
actionLabelInIngForm
	^ self isMerge ifTrue: ['merging'] ifFalse: ['committing']