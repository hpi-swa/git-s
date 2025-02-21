actions-comparing
chooseCommitParent: aCommit ifCancel: aBlock
	| parents |
	parents := aCommit parents.
	parents ifEmpty: [^ nil].
	parents size = 1 ifTrue: [^ parents first].
	^ (UIManager default
		chooseFrom: (parents collect: [:each | self displayName: each])
		values: parents
		title: ('{1} has multiple parents. Please choose one:' format: {self displayName: aCommit}))
			ifNil: aBlock