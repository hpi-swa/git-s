testing
isImageClean
	^ (self changesFromImageToCommit: self headCommit) isEmpty