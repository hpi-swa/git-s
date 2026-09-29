ui
chooseNewEncodingClass
	^ self
		title: ('New encoding (current: {1}):' format: {self encodingName})
		chooseNewEncodingClassFrom: GSCodeMapper allSubclasses