stash
stash: uncommittedChangeSets onBranch: aString during: aBlock
	| branchCommit stashCommit branchStash |
	branchCommit := self unitOfWork objectReferenced: aString.
	self assert: branchCommit = self headCommit.
	stashCommit := self
		commitChangeSets: uncommittedChangeSets
		onCommit: branchCommit
		message: ('Uncommitted changes on branch {1}'
						gitSFormat: {(GitReference shortName: aString) printString}).
	stashCommit store.
	branchStash := self branchStashNameFromBranch: aString.
	self updateRef: branchStash toNewCommit: stashCommit.
	self materializeCommit: branchCommit.
	^ (Promise gitSFulfillWith: aBlock)
		ifRejected: [:error |
			self materializeCommit: stashCommit.
			self unitOfWork deleteRef: branchStash.
			error pass]