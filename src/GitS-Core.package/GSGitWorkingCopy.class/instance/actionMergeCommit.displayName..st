actions-merging
actionMergeCommit: aCommit displayName: aString
	| head mergeBases mergeBase |
	aCommit ifNil: [^ self inform:
						('Cannot merge {1}, it does not refer to a commit.' format: {aString})].
	self ifImageNotCleanAndCanceled: [^ self].
	head := self headCommitIfNilInformAnd: [^ self].
	mergeBases := GSGUIUtilities
		displayStatus: 'Looking for a merge base'
		during: [self withUnitOfWork: [head allMergeBasesWithAnyOf: {aCommit}]].
	mergeBase := mergeBases size caseOf: {
		[0] -> [^ self inform: 'Cannot merge unrelated histories.'].
		[1] -> [mergeBases anyOne].
	} otherwise: [^ self inform: 'Found multiple merge bases. Recursive merging is currently unsupported.'].
	mergeBase = aCommit ifTrue: [^ self inform: 'Already up to date.'].
	mergeBase = head ifTrue: [
		^ (self
			actionMaterializeCommit: aCommit
			windowTitlePrefix: 'Fast-forwarding: ')
				then: [:x | self fastForwardTo: aCommit displayName: aString]].
	self
		actionMergeCommit: aCommit
		mergeBase: mergeBase
		displayName: aString.