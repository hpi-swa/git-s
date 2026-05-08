actions-merging
actionMergeCommit: aCommit displayName: aString
	| head mergeBases mergeBase |
	aCommit ifNil: [GSGUIUtilities informAndCancel:
						('Cannot merge {1}, it does not refer to a commit.' format: {aString})].
	head := self headCommit.
	mergeBases := GSGUIUtilities
		displayStatus: 'Looking for a merge base'
		during: [head ifNil: [#(nil)] ifNotNil: [head allMergeBasesWithAnyOf: {aCommit}]].
	mergeBase := mergeBases size caseOf: {
		[0] -> [self inform: 'Warning: merging unrelated histories. This could result in a lot of conflicts.'. nil].
		[1] -> [mergeBases anyOne].
	} otherwise: [
		GSGUIUtilities
			chooseFromValues: (mergeBases sorted: [:each | each author timeStamp] descending)
			label: #showOneLine
			title: 'Found multiple merge bases. Recursive merging is currently unsupported, so please choose a merge base to use.'].
	mergeBase = aCommit ifTrue: [ | message |
		message := 'Already up to date.'.
		self isImageClean ifFalse: [
			message := message, ' You have uncommitted changes.'].
		self inform: message.
		^ Promise unit: nil].
	^ self
		stashUncommittedChangesDuring:
			[mergeBase = head
				ifTrue: [(self
							actionMaterializeCommit: aCommit
							windowTitlePrefix: 'Fast-forwarding: ')
								then: [:x | self fastForwardTo: aCommit displayName: aString]]
				ifFalse: [self
							actionMergeCommit: aCommit
							mergeBase: mergeBase
							displayName: aString]]
		description: ('merging {1}' gitSFormat: {aString})