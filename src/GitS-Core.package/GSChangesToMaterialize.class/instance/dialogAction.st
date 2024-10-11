actions-private
dialogAction
	self checkHasConflicts ifTrue: [^ self].
	self runNow.