registering
register: aWorkingCopy
	| newName |
	newName := aWorkingCopy name.
	(self isNameRegistered: newName) ifTrue: [
		^ self error: ('A project with the name {1} is already registered.' format: {newName printString})].
	self basicUnregister: aWorkingCopy.
	self registry at: newName put: aWorkingCopy.
	self changed: #registry.