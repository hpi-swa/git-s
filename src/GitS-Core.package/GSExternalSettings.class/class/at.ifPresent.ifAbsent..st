accessing
at: key ifPresent: aBlock ifAbsent: anotherBlock

	Settings ifNil: [^ anotherBlock value].
	^ Settings at: key ifPresent: aBlock ifAbsent: anotherBlock