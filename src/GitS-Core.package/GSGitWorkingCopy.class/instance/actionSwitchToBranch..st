actions-switching
actionSwitchToBranch: aString
	| branchStash |
	branchStash := self branchStashNameFromBranch: aString.
	(self
		actionSwitchToCommit: ((self unitOfWork objectReferenced: branchStash)
										ifNil: [self unitOfWork objectReferenced: aString])
		displayName: (GitReference shortName: aString)
		updateSymbolicHeadTo: aString)
			then: [:x | self unitOfWork deleteRef: branchStash].