*GitS-Core-Code
gitSBrowse
	(Environment current classNamed: self className)
		ifNotNil: #browse
		ifNil: [self inform: 'This class trait does not exist in the image'].