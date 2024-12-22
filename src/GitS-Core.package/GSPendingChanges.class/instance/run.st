actions
run
	self isEmpty ifTrue: [^ self nothingToDo].
	self shouldOpenDialog ifTrue: [^ self openDialog].
	^ self action