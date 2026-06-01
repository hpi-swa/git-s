migrations
moveInstanceSideLastImageHashToClassSidePreLoadPhase
	<preLoadMigration: 1>
	| workingCopyClass oldHashes |
	workingCopyClass := Smalltalk at: #GSGitWorkingCopy ifAbsent: [^ self].
	(workingCopyClass instVarNames includes: 'lastImageHash') ifFalse: [^ self].
	oldHashes := Smalltalk globals at: #GitSInstanceSideLastImageHashes ifAbsentPut: [IdentityDictionary new].
	workingCopyClass allSubInstancesDo: [:each |
		(each instVarNamed: 'lastImageHash') ifNotNil: [:hash |
			oldHashes at: each put: hash]].