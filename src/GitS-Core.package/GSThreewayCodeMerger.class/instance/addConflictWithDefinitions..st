definitions-operations
addConflictWithDefinitions: aVersionMerge
	(self tryAutoMergeDefinitions: aVersionMerge) ifTrue: [^ self].
	self conflicts add: aVersionMerge asConflict.