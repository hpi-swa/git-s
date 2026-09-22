testing
isImageClean
	^ GSChangeSet allNoop: (self changeSetsFromImageToCommit: self headCommit)