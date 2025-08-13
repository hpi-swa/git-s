stash
stashUncommittedChangesWhileSwitching: aBlock
	| uncommittedChangeSets oldHeadCommit |
	oldHeadCommit := self headCommitOrCancel.
	uncommittedChangeSets := self changeSetsFromCommitToImage: oldHeadCommit.
	(GSChangeSet allEmpty: uncommittedChangeSets) ifTrue: [^ aBlock value].
	self currentSymbolicHeadTarget ifNotNil: [:branch | | option |
		option := GSGUIUtilities
			chooseOptionFromLabeledValues: {'a) save here' -> #saveHere. 'b) move over' -> #moveOver}
			title:
				('You have uncommitted changes. You can\
				a) save them on your current branch ({1}) and automatically restore them when you return here or\
				b) move them over after switching.\
				What do you want to do?' gitSFormat: {(GitReference shortName: branch) printString})
			cancelLabel: 'Cancel'.
		option = #saveHere ifTrue: [
			^ self stash: uncommittedChangeSets onBranch: branch during: aBlock]].
	^ self stash: uncommittedChangeSets from: oldHeadCommit during: aBlock