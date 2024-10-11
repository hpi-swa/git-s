actions
run
	self isEmpty ifTrue: [^ self nothingToDo].
	^ self runIfNotEmpty