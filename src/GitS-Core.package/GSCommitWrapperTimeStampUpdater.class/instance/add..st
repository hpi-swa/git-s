adding
add: aCommitWrapper
	self commitWrappers add: aCommitWrapper.
	aCommitWrapper toFinalizeSend: #checkAllFinalized to: self.