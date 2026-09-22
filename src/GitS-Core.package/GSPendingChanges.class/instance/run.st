actions
run
	self operation increaseDeferMaterializationLevel.
	self isNoop ifTrue: [^ self nothingToDo].
	self shouldOpenDialog ifTrue: [^ self openDialog].
	^ self action