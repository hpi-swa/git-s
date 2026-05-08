stash
stashUncommittedChangesWhileSwitching: aBlock displayName: aString
	<linterIgnoreSends: #(saveHere takeThem)>
	| uncommittedChangeSets oldHeadCommit |
	oldHeadCommit := self headCommitOrCancel.
	uncommittedChangeSets := self changeSetsFromCommitToImage: oldHeadCommit.
	(GSChangeSet allEmpty: uncommittedChangeSets) ifTrue: [^ aBlock value].
	self currentSymbolicHeadTarget ifNotNil: [:branch | | option |
		option := GSGUIUtilities
			chooseOptionFromLabeledValues: {'a) save here' -> #saveHere. 'b) take them' -> #takeThem}
			title:
				('You have uncommitted changes. You can\
				a) save them on your current branch ({1}) and automatically restore them when you return here or\
				b) take them with you during switching.\
				What do you want to do?' gitSFormat: {(GitReference shortName: branch) printString})
			cancelLabel: 'Cancel'.
		option = #saveHere ifTrue: [
			^ self stash: uncommittedChangeSets onBranch: branch during: aBlock]].
	^ self
		stash: uncommittedChangeSets
		from: oldHeadCommit
		during: aBlock
		description: ('switching to {1}' gitSFormat: {aString})