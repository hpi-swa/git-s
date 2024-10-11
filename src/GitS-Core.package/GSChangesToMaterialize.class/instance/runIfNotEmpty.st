actions-private
runIfNotEmpty
	self shouldOpenDialog ifTrue: [^ self openDialog].
	^ self runNow