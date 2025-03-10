accessing
close
	^ self actionBlock ifNil: [self closeDialog] ifNotNil: [self cancel]