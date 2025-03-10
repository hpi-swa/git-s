importing
chooseFromMappers: aCollection title: aString
	^ GSGUIUtilities
		chooseFrom: (aCollection collect: #printDescriptionStringWithoutPath)
		values: aCollection
		title: aString