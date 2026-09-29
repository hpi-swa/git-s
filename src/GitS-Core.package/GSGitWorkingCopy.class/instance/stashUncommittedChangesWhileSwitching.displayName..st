stash
stashUncommittedChangesWhileSwitching: aBlock displayName: aString
	<linterIgnoreSends: #(saveHere takeThem)>
	| uncommittedChanges oldHeadCommit |
	oldHeadCommit := self headCommit.
	uncommittedChanges := (self changesFromCommitToImage: oldHeadCommit) ifEmpty: [^ aBlock value].
	self currentSymbolicHeadTarget ifNotNil: [:branch | | option |
		option := GSGUIUtilities
			title:
				('You have uncommitted changes. You can\
				a) save them on your current branch ({1}) and automatically restore them when you return here or\
				b) take them with you during switching.\
				What do you want to do?' gitSFormat: {(GitReference shortName: branch) printString})
			chooseOptionFromLabeledValues: {'a) save here' -> #saveHere. 'b) take them' -> #takeThem}
			cancelLabel: 'Cancel'.
		option = #saveHere ifTrue: [
			^ self stash: uncommittedChanges onBranch: branch during: aBlock]].
	^ self
		stash: uncommittedChanges
		from: oldHeadCommit
		during: aBlock
		description: ('switching to {1}' gitSFormat: {aString})