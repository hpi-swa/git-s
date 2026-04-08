accessing
isReadOnly: aNumber
	^ self isReadOnly or: [self isSourceTimeStamp: aNumber]