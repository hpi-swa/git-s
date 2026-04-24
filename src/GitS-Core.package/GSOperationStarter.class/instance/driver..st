accessing
driver: anObject
	driver ifNotNil: [driver removeDependent: self].
	driver := anObject.
	driver ifNotNil: [driver addDependent: self].