*GitS-Core-Code
gitSBrowseVersions
	self actualClass
		ifNotNil: [:class | ClassCommentVersionsBrowser browseCommentOf: class]
		ifNil: [self inform: ('This {1} does not exist in the image' gitSFormat: {
								self isTraitDefinition ifTrue: ['trait'] ifFalse: ['class']})].