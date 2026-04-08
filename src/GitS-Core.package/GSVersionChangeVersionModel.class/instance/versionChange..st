accessing
versionChange: aVersionChange
	self versionChange ifNotNil: [self versionChange removeDependent: self].
	versionChange := aVersionChange.
	self versionChange ifNotNil: [self versionChange addDependent: self].