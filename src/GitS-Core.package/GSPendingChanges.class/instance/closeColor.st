accessing
closeColor
	^ self actionBlock
		ifNotNil: [self themeColor: #cancelColor]
		ifNil: [nil]