image-commit
createImageCommitCache
	^ GSImageCommitCache new
		workingCopy: self;
		yourself