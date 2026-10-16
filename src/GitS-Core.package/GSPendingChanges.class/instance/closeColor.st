accessing
closeColor
	^ (self actionBlock ifNotNil: [self themeColor: #cancelColor])
		ifNil: [self defaultButtonColor]