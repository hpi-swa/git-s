caching
create
	self cachedCommit: self workingCopy basicCreateImageCommit.
	^ self cachedCommit