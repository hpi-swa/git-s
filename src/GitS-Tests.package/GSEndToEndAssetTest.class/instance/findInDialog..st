data
findInDialog: aDictionaryOrAnEndToEndImageTest
	aDictionaryOrAnEndToEndImageTest isDictionary
		ifTrue: [self findChangeInDialog: aDictionaryOrAnEndToEndImageTest]
		ifFalse: [self findVersionInDialog: aDictionaryOrAnEndToEndImageTest].