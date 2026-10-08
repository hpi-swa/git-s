accessing
addParent: commitHexHash
	self assert: (repository commitNamed: commitHexHash) revision notNil.
	store addParent: commitHexHash.