adding
addDirectory: aString
	^ self children add: (self createDirectory: aString)