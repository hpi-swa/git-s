merging
mergeCommitIntoHead: aCommit displayName: aString
	| head mergeBases mergeBase |
	self activeWorkingCopyIfNilInformAnd: [^ self].
	aCommit ifNil: [^ self inform:
						('Cannot merge {1}, it does not refer to a commit.' format: {aString})].
	head := self activeWorkingCopy headCommitIfNilInformAnd: [^ self].
	mergeBases := GSGUIUtilities
		displayStatus: 'Looking for a merge base'
		during: [self withUnitOfWork: [head allMergeBasesWithAnyOf: {aCommit}]].
	mergeBase := mergeBases size caseOf: {
		[0] -> [^ self inform: 'Cannot merge unrelated histories.'].
		[1] -> [mergeBases anyOne].
	} otherwise: [^ self inform: 'Found multiple merge bases. Recursive merging is currently unsupported.'].
	mergeBase = aCommit ifTrue: [ | message |
		message := 'Already up to date.'.
		self activeWorkingCopy isImageClean ifFalse: [
			message := message, ' You have uncommitted changes.'].
		^ self inform: message].
	self warnIfImageNotClean: [^ self].
	mergeBase = head ifTrue: [
		^ (self
			openDialogToMaterializeCommit: aCommit
			windowTitlePrefix: 'Fast-forwarding: ') then:
				[:dialog | self activeWorkingCopy fastForwardTo: aCommit displayName: aString]].
	self
		openDialogToMergeCommitIntoHead: aCommit
		mergeBase: mergeBase
		displayName: aString.