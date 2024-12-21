actions-merging
actionMergeCommit: aCommit displayName: aString
	| head mergeBases mergeBase |
	aCommit ifNil: [^ self inform:
						('Cannot merge {1}, it does not refer to a commit.' format: {aString})].
	head := self headCommitIfNilInformAnd: [^ self].
	mergeBases := GSGUIUtilities
		displayStatus: 'Looking for a merge base'
		during: [head allMergeBasesWithAnyOf: {aCommit}].
	mergeBase := mergeBases size caseOf: {
		[0] -> [^ self inform: 'Cannot merge unrelated histories.'].
		[1] -> [mergeBases anyOne].
	} otherwise: [^ self inform: 'Found multiple merge bases. Recursive merging is currently unsupported.'].
	mergeBase = aCommit ifTrue: [ | message |
		message := 'Already up to date.'.
		self isImageClean ifFalse: [
			message := message, ' You have uncommitted changes.'].
		^ self inform: message].
	self ifImageNotCleanAndCanceled: [^ self].
	mergeBase = head ifTrue: [
		^ (self
			actionMaterializeCommit: aCommit
			windowTitlePrefix: 'Fast-forwarding: ')
				then: [:x | self fastForwardTo: aCommit displayName: aString]].
	self
		actionMergeCommit: aCommit
		mergeBase: mergeBase
		displayName: aString.