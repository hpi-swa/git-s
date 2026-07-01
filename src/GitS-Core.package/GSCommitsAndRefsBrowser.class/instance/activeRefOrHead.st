accessing
activeRefOrHead
	^ self activeRef ifNil: [self workingCopyOrNil ifNotNil: #headRefName]