operation
ensureActiveOperationDuring: aBlock
	^ GSOperation ensureActiveFor: self workingCopy during: aBlock