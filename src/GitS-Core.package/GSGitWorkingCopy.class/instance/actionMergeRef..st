actions-merging
actionMergeRef: aString
	^ self
		actionMergeCommit: (self unitOfWork objectReferenced: aString)
		displayName: (GitReference shortName: aString)