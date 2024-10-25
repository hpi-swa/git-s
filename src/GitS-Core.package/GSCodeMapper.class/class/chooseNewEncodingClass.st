ui
chooseNewEncodingClass
	^ self
		chooseNewEncodingClassFrom: GSCodeMapper allSubclasses
		title: ('New encoding (current: {1}):' format: {self encodingName})