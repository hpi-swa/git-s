actions-merging
actionMergeCommit: aCommit displayName: aString
	| head mergeBases mergeBase |
	aCommit ifNil: [GSGUIUtilities informAndCancel:
						('Cannot merge {1}, it does not refer to a commit.' format: {aString})].
	head := self headCommitOrCancel.
	mergeBases := GSGUIUtilities
		displayStatus: 'Looking for a merge base'
		during: [head allMergeBasesWithAnyOf: {aCommit}].
	mergeBase := mergeBases size caseOf: {
		[0] -> [GSGUIUtilities informAndCancel: 'Cannot merge unrelated histories.'].
		[1] -> [mergeBases anyOne].
	} otherwise: [GSGUIUtilities informAndCancel:
					'Found multiple merge bases. Recursive merging is currently unsupported.'].
	mergeBase = aCommit ifTrue: [ | message |
		message := 'Already up to date.'.
		self isImageClean ifFalse: [
			message := message, ' You have uncommitted changes.'].
		self inform: message.
		^ Promise unit: nil].
	self ensureImageIsCleanOrUserDiscardsChanges.
	^ mergeBase = head
		ifTrue: [(self
					actionMaterializeCommit: aCommit
					windowTitlePrefix: 'Fast-forwarding: ')
						then: [:x | self fastForwardTo: aCommit displayName: aString]]
		ifFalse: [self
					actionMergeCommit: aCommit
					mergeBase: mergeBase
					displayName: aString]