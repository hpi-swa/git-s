styling
aboutToStyle: aStyler requestor: requestor
	self methodClass ifNotNil: [
		aStyler
			parseAMethod: true;
			classOrMetaClass: self methodClass].
	^ true