ui
chooseNewEncodingClassFrom: aCollection title: aString
	^ GSGUIUtilities
		chooseFromValues: aCollection
		label: #encodingName
		title: aString