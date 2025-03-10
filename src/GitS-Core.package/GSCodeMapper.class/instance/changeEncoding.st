encoding
changeEncoding
	^ self class chooseNewEncodingClass
		package: self package
		path: self path