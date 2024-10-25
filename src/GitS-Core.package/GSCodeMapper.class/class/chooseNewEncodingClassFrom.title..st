ui
chooseNewEncodingClassFrom: aCollection title: aString
	^ UIManager default
		chooseFrom: (aCollection collect: #encodingName)
		values: aCollection
		title: aString