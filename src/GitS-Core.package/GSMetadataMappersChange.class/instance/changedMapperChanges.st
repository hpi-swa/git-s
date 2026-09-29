accessing
changedMapperChanges
	self metadataBuilder ifNil: [^ #()].
	^ self metadataBuilder mapperChanges at: self changedMapper