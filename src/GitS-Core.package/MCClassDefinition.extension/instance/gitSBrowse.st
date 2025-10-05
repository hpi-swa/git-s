*GitS-Core-Code
gitSBrowse
	self actualClass
		ifNotNil: #browse
		ifNil: [self inform: ('This {1} does not exist in the image' gitSFormat: {
								self isTraitDefinition ifTrue: ['trait'] ifFalse: ['class']})].