menu
menu: aMenu forRef: aString
	^ self
		menu: aMenu
		forCommit: (aString ifNotNil: [self unitOfWork objectReferenced: aString])
		ref: aString