ui
chooseNewEncodingClassFrom: aCollection title: aString
	^ GSGUIUtilities
		chooseFrom: (aCollection collect: #encodingName)
		values: aCollection
		title: aString