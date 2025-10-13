accessing
operation
	self hasConflicts ifTrue: [^ nil].
	^ self mapper operationFrom: self currentDefinition to: self definitionToWrite