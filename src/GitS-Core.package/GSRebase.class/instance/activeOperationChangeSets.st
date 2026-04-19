updating
activeOperationChangeSets
	| commit |
	commit := (self activeOperation ifNil: [^ #()]) commit ifNil: [^ #()].
	^ self workingCopy changeSetsFromCommit: commit firstParent toCommit: commit