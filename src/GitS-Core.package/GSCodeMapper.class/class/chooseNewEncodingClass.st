ui
chooseNewEncodingClass
	| classes |
	classes := GSCodeMapper allSubclasses.
	^ UIManager default
		chooseFrom: (classes collect: #encodingName)
		values: classes
		title: ('New encoding (current: {1}):' format: {self encodingName})