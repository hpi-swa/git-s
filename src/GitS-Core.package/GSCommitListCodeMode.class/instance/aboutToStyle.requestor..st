editor
aboutToStyle: aStyler requestor: requestor
	aStyler
		classOrMetaClass: self receiverClass;
		parseAMethod: false.
	^ true